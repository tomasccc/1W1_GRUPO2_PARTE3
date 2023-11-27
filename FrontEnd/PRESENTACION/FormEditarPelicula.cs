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
    public partial class FormEditarPelicula : Form
    {
        Pelicula peli;
        IGestorPeliculas g;

        public FormEditarPelicula(Pelicula p, IGestorPeliculas g)
        {
            InitializeComponent();
            peli = p;
            this.g = g;
            CargarDatos();
        }

        private void CargarDatos()
        {


            txtnombre.Text = peli.Nombre.ToString();
            txtCategoria.Text = peli.Categoria.ToString();
            txtduracion.Text = peli.Duracion.ToString();
            txtdirector.Text = peli.Director.ToString();
            dtpfecEstreno.Value = peli.FechaEstreno;
        }

        private void FormEditarPelicula_Load(object sender, EventArgs e)
        {

        }

        private bool Validar()
        {
            if (txtnombre.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtCategoria.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtduracion.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtdirector.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (dtpfecEstreno.Value > DateTime.Now)
            {
                MessageBox.Show("No puede ingresar una fecha mayor a la fecha actual", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                List<Parametro> l = new List<Parametro>();
                l.Add(new Parametro("@id", peli.ID));
                l.Add(new Parametro("@nombre", txtnombre.Text));
                l.Add(new Parametro("@categoria", txtCategoria.Text));
                l.Add(new Parametro("@duracion", txtduracion.Text));
                l.Add(new Parametro("@director", txtdirector.Text));
                l.Add(new Parametro("@fecha_estreno", dtpfecEstreno.Value));
                if (g.EditarPelicula(l))
                {
                    MessageBox.Show("Se editó el cliente con éxito", "Editar", MessageBoxButtons.OK);
                    this.Close();
                }
                else MessageBox.Show("Error al editar");
            }
        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtduracion_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != '\b')
            {
                e.Handled = true;
            }
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

        private void txtdirector_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }
    }

}
