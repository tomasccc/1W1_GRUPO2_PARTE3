using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.FABRICA;
using _1W1_GRUPO2_PARTE3.SERVICIO;
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
    public partial class FormPrincipal : Form
    {
        FactoryGestorCliente fabrica;
        Cliente ClientePrinc { get; set; }
        public FormPrincipal()
        {
            InitializeComponent();
        }

        private void logInToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormLogin s = new FormLogin((GestorCliente)fabrica.CrearGestorCliente());
            s.ShowDialog();
        }

        private void FormPrincipal_Load(object sender, EventArgs e)
        {

        }
    }
}
