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
    public partial class FormPeliculas : Form
    {
        private DomainUpDown domainUpDown1;
        private IGestorPeliculas gp;
        public FormPeliculas(IGestorPeliculas gp)
        {
            InitializeComponent();
            domainAño.ReadOnly = true;
            domainAño.Wrap = false;
            domainAño.Items.AddRange(ObtenerAnios());
            domainAño.SelectedItem = DateTime.Now.Year.ToString();
            this.gp = gp;
        }

        private void FormPeliculas_Load(object sender, EventArgs e)
        {
            CargarCombos();
        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void DomainUpDown1_TextChanged(object sender, EventArgs e)
        {
            Console.WriteLine("Año seleccionado: " + domainUpDown1.Text);
        }

        private string[] ObtenerAnios()
        {
            int anioActual = DateTime.Now.Year;
            string[] anios = new string[100];

            for (int i = 0; i < 100; i++)
            {
                anios[i] = (anioActual - i).ToString();
            }

            return anios;
        }


        private void CargarCombos()
        {


            DataTable dt2 = new DataTable();
            dt2 = gp.TraerBD("idiomas");
            cboIdioma.DataSource = dt2;
            cboIdioma.ValueMember = dt2.Columns[0].ToString();
            cboIdioma.DisplayMember = dt2.Columns[1].ToString();
            cboIdioma.DropDownStyle = ComboBoxStyle.DropDownList;

            DataTable tabla = new DataTable();
            tabla = gp.TraerBD("tipos_sala");
            cboTipo.DataSource = tabla;
            cboTipo.ValueMember = tabla.Columns[0].ToString();
            cboTipo.DisplayMember = tabla.Columns[1].ToString();
            cboTipo.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void btnGenerar_Click(object sender, EventArgs e)
        {

        }

        private void ConfigurarColumnas()
        {
            foreach (DataGridViewColumn columna in DGVPeliculas.Columns)
            {
                columna.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            }
        }

        private bool Validar()
        {
            return true;
        }

        private void btnGenerar_Click_1(object sender, EventArgs e)
        {
            if (Validar())
            {
                DGVPeliculas.Rows.Clear();
                List<Parametro> lpa = new List<Parametro>();
                lpa.Add(new Parametro("@año", domainAño.Text));
                lpa.Add(new Parametro("@tipo_sala", cboTipo.SelectedValue));
                lpa.Add(new Parametro("@idioma", cboIdioma.SelectedValue));
                DataTable dt = gp.ConsultarBD("SP_PELIS_POR_AÑO", lpa);
                foreach (DataRow dr in dt.Rows)
                {

                    DGVPeliculas.Rows.Add(new object[] {
                        dr["Nombre"],dr["Duracion"],dr["Estreno"],dr["Categoria"]});

                }
                ConfigurarColumnas();
                DGVPeliculas.Columns["ColEstreno"].DefaultCellStyle.Format = "dd/MM/yyyy";
            }
        }

        private void btnRegresar_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }
    }

}
