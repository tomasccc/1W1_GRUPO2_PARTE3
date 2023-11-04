using _1W1_GRUPO2_PARTE3.INTERFACES;
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
    public partial class FormReservar : Form
    {
        IServicio servicio;

        public FormReservar(IServicio s)
        {
            InitializeComponent();
            servicio = s;
        }

        private void FormReservar_Load(object sender, EventArgs e)
        {
            CargarCombos();
        }

        private void CargarCombos()
        {
            //cboFunciones.DataSource = servicio.TraerFunciones();
            cboFunciones.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void cboFunciones_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
