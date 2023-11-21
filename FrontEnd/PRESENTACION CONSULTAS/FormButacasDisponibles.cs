using BackEnd.DATOS;
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

namespace FrontEnd.PRESENTACION_CONSULTAS
{
    public partial class FormButacasDisponibles : Form
    {
        public FormButacasDisponibles(IGestorButacas g)
        {
            InitializeComponent();
            this.g = g;
        }

        private void FormButacasDisponibles_Load(object sender, EventArgs e)
        {
            CargarCombo("peliculas");

        }


        List<DateTime> fechas;
        object[] arregloDeObjetos;
        IGestorButacas g;
        int idPelicula;


        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAsPorTemporada_Click(object sender, EventArgs e)
        {



        }
        private void CargarFunciones(int idpelicula)
        {
            fechas = g.TraerFecha(idpelicula);
            cboFechas.DropDownStyle = ComboBoxStyle.DropDownList;
            cboFechas.DataSource = fechas;
            // cboFechas.Items.Clear();
            //HashSet<DateTime> elementosUnicos = new HashSet<DateTime>(fechas);
            // fechas.Clear();
            //  fechas.AddRange(elementosUnicos);
            // arregloDeObjetos = elementosUnicos.Cast<object>().ToArray();
            //cboFechas.Items.AddRange(arregloDeObjetos); 
        }
        private void CargarCombo(string nombreTabla)
        {
            DataTable dt = g.TraerFunciones(nombreTabla);
            cboPeliculas.DataSource = dt;
            cboPeliculas.ValueMember = dt.Columns[0].ToString();
            cboPeliculas.DisplayMember = dt.Columns[1].ToString();
            cboPeliculas.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void cboPeliculas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //boton cargar
        private void button5_Click(object sender, EventArgs e)
        {

        }

        private bool Validar()
        {
            if (cboPeliculas.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccionar una Pelicula");
                return false;
            }
            if (cboFechas.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccionar una Fecha");
                return false;
            }
            return true;
        }

        private void cboFechas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button5_Click_1(object sender, EventArgs e)
        {
            dgvReporte.Rows.Clear();
            if (Validar())
            {
                int valor = Convert.ToInt32(cboPeliculas.SelectedIndex) + 1;
                DateTime valor2 = Convert.ToDateTime(cboFechas.SelectedValue);
                List<Parametro> lpa = new List<Parametro>();
                lpa.Add(new Parametro("@id", valor));
                lpa.Add(new Parametro("@fec", valor2));
                DataTable dt = new DataTable();
                dt = g.CargarDataGrid(lpa);
                foreach (DataRow dr in dt.Rows)
                {

                    dgvReporte.Rows.Add(new object[] {
                        dr["Pelicula"].ToString(),dr["Fecha"],dr["Horario de función"],
                        dr["Butacas Disponibles"] });

                }
                dgvReporte.Columns["colFecha"].DefaultCellStyle.Format = "dd/MM/yyyy";

            }
        }

        private void cboPeliculas_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (cboPeliculas.SelectedIndex != -1)
            {
                cboFechas.Enabled = true;
                int valor = Convert.ToInt32(cboPeliculas.SelectedIndex) + 1;


                CargarFunciones(valor);
            }
        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
