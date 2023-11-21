using _1W1_GRUPO2_PARTE3.ENTIDADES;
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

namespace FrontEnd.PRESENTACION_CONSULTAS
{
    public partial class FormConsultaClienteMedio : Form
    {
        IGestorCliente gc;
        IGestorFacturas gf;

        public FormConsultaClienteMedio(IGestorCliente gc, IGestorFacturas gf)
        {
            InitializeComponent();
            this.gc = gc;
            this.gf = gf;
            CargarCombo();
        }

        private void CargarCombo()
        {

        }

        private void FormConsultaClienteMedio_Load(object sender, EventArgs e)
        {
            List<MedioPago> dt = gf.TraerMedioPago("medios_pago");
            cboMedioPago.DataSource = dt;
            cboMedioPago.ValueMember = "Id";
            cboMedioPago.DisplayMember = "Medio";

            cboMedioPago.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private bool Validar()
        {
            if (cboMedioPago.SelectedIndex == -1)
            {
                MessageBox.Show("Debe seleccionar un medio de pago", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtDuracion.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar minutos!", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                List<Parametro> l = new List<Parametro>();
                l.Add(new Parametro("@nombre", txtnombre.Text));
                l.Add(new Parametro("@apellido", txtapellido.Text));
                l.Add(new Parametro("@mediopago", cboMedioPago.SelectedValue));
                l.Add(new Parametro("@duracion", txtDuracion.Text));
                DGVClientes.Rows.Clear();
                DataTable dt = gc.EjecutarClientesMedioP(l);
                foreach (DataRow dr in dt.Rows)
                {

                    DGVClientes.Rows.Add(new object[] {
                        dr["Nombre"],dr["Apellido"],dr["Medio de pago"],dr["Pelicula"],dr["Duracion"]});

                }
                ConfigurarColumnas();
            }
        }

        private void ConfigurarColumnas()
        {
            foreach (DataGridViewColumn columna in DGVClientes.Columns)
            {
                columna.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
