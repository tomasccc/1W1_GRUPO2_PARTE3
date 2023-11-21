using _1W1_GRUPO2_PARTE3.ENTIDADES;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    public partial class FormReporteFacturas : Form
    {
        IGestorFacturas gf;
        public FormReporteFacturas(IGestorFacturas gf)
        {
            InitializeComponent();
            this.gf = gf;

        }

        private void FormReporteFacturas_Load(object sender, EventArgs e)
        {

            CargarCombo();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void CargarCombo()
        {
            DataTable dt = gf.TraerMediosPago();
            cboMedio.DataSource = dt;
            cboMedio.ValueMember = dt.Columns[0].ToString();
            cboMedio.DisplayMember = dt.Columns[1].ToString();
            cboMedio.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void btnGenerar_Click(object sender, EventArgs e)
        {
            this.reportViewer1.RefreshReport();
        }
    }
}
