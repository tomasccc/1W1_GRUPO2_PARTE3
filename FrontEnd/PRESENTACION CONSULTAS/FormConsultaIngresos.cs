using _1W1_GRUPO2_PARTE3.ENTIDADES;
using BackEnd.DATOS;
using BackEnd.ENTIDADES;
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
    public partial class FormConsultaIngresos : Form
    {
        IGestorFacturas gf;
        public FormConsultaIngresos(IGestorFacturas gf)
        {
            InitializeComponent();
            this.gf = gf;

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            dtpFecDesde.Value = DateTime.Now;
            dtpFecHasta.Value = DateTime.Now;
            dtpFecDesde.Format = DateTimePickerFormat.Custom;
            dtpFecDesde.CustomFormat = "dd/MM/yyyy";
            dtpFecHasta.Format = DateTimePickerFormat.Custom;
            dtpFecHasta.CustomFormat = "dd/MM/yyyy";
        }

        private void FormConsultaIngresos_Load(object sender, EventArgs e)
        {

        }

        private bool Validar()
        {
            if (dtpFecDesde.Value > dtpFecHasta.Value)
            {
                MessageBox.Show("La fecha (Desde) no puede ser mayor a la fecha (Hasta)", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (dtpFecDesde.Value > DateTime.Now)
            {
                MessageBox.Show("La fecha (Desde) no puede ser mayor a la fecha actual", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }

        private void CalcularTotal()
        {
            int indiceColumna = DGVIngresos.Columns["ColIngresos"].Index;

            double suma = 0;
            foreach (DataGridViewRow fila in DGVIngresos.Rows)
            {
                if (fila.Cells[indiceColumna].Value != null)
                {
                    suma += Convert.ToInt32(fila.Cells[indiceColumna].Value);
                }
            }

            txtTotal.Text = suma.ToString();
        }

        private void btnGenerar_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                DGVIngresos.Rows.Clear();
                DataTable ingresosdia = gf.EjecutarIngresosXDia(dtpFecDesde.Value, dtpFecHasta.Value);
                foreach (DataRow dr in ingresosdia.Rows)
                {

                    DGVIngresos.Rows.Add(new object[] {
                        dr["Día"],dr["Ingresos totales"]});

                }
                DGVIngresos.Columns["Coldía"].DefaultCellStyle.Format = "dd/MM/yyyy";
                CalcularTotal();
                ConfigurarColumnas();
            }
        }

        private void ConfigurarColumnas()
        {
            foreach (DataGridViewColumn columna in DGVIngresos.Columns)
            {
                columna.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            }
        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
