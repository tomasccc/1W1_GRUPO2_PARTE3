using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FrontEnd.PRESENTACION
{
    public partial class Form_Pelis : Form
    {
        public List<Pelicula> PeliculaList;
        IGestorPeliculas g;
        Pelicula peli;
        public Form_Pelis(IGestorPeliculas g, Pelicula peli)
        {
            InitializeComponent();
            PeliculaList = new List<Pelicula>();
            this.g = g;
            this.peli = peli;
        }

        private void Form_Pelis_Load(object sender, EventArgs e)
        {
            dtpFecDes.Value = DateTime.Now.AddYears(-20);
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            DGVPeliculas.Rows.Clear();
            List<Parametro> lp = new List<Parametro>();
            lp.Add(new Parametro("@nombre", txtnombre.Text.ToString()));
            lp.Add(new Parametro("@categoria", txtCategoria.Text.ToString()));
            lp.Add(new Parametro("@director", txtDirector.Text.ToString()));
            lp.Add(new Parametro("@fecha_estreno", dtpFecDes.Value));

            PeliculaList = g.TraerPeliculas(lp);
            foreach (Pelicula li in PeliculaList)
            {

                DGVPeliculas.Rows.Add(new object[] {
                      li.ID,  li.Nombre,li.Categoria,li.Duracion ,li.Director ,li.FechaEstreno  ,li.Idioma,"Editar","Eliminar" });

            }
            DGVPeliculas.Columns["ColFechaEstreno"].DefaultCellStyle.Format = "dd/MM/yyyy";
        }





        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != (char)Keys.Space && e.KeyChar != (char)Keys.Back)
            {
                e.Handled = true;
            }
        }






        private void DGVPeliculas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (DGVPeliculas.CurrentCell.ColumnIndex == 7)
            {
                FormEditarPelicula f = new FormEditarPelicula(PeliculaList[DGVPeliculas.CurrentRow.Index], g);
                f.ShowDialog();
                btnBuscar_Click(sender, e);
            }
            if (DGVPeliculas.CurrentCell.ColumnIndex == 8)
            {
                if (MessageBox.Show("¿Esta seguro que desea borrar la pelicula seleccionada?", "Borrar", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {

                    if (g.BorrarPelicula(Convert.ToInt32(DGVPeliculas.CurrentRow.Cells["colID"].Value)))
                    {
                        MessageBox.Show("La pelicula fue borrada de la base de datos con éxito.", "Borrar", MessageBoxButtons.OK);
                        btnBuscar_Click(sender, e);
                    }
                    else MessageBox.Show("Error al borrar");

                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dtpFecDes_ValueChanged(object sender, EventArgs e)
        {

        }

        private void txtnombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtCategoria_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtDirector_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }
    }
}
