using _1W1_GRUPO2_PARTE3.DATOS;
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
    public partial class FormLogin : Form
    {
        
        Cliente Cliente { get; set; }
        GestorCliente gestorcliente;
        public FormLogin(GestorCliente g)
        {
            InitializeComponent();
            gestorcliente = g;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void btnCrearCuenta_Click(object sender, EventArgs e)
        {
            FormCrearUsuario l =new FormCrearUsuario();
            l.ShowDialog();
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {

        }
        //INGRESAR
        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                List<Parametro> lista = new List<Parametro>();
                lista.Add(new Parametro("@nombre",txtUsuario.Text.ToString()));
                lista.Add(new Parametro("@contraseña",txtContra.Text.ToString()));
                if (gestorcliente.ExisteCliente(lista))
                {
                    Cliente = gestorcliente.TraerCliente();
                    this.Close();
                }
            }
        }
        //validar
        private bool Validar() { 
            if (txtUsuario.Text == string.Empty)
            {
                return false;
            }
            return true;
        }
    }
}
