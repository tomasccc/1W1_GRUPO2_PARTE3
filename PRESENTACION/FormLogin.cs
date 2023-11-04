using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.FABRICA;
using _1W1_GRUPO2_PARTE3.INTERFACES;
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
        FactoryServicio fabricaGestor;
        Cliente Cliente { get; set; }
        IServicio servicio;
        public FormLogin(FactoryServicio fabrica)
        {
            InitializeComponent();
            fabricaGestor = fabrica;
            servicio = (Servicio)fabricaGestor.CrearGestor();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void btnCrearCuenta_Click(object sender, EventArgs e)
        {
            FormCrearUsuario l = new FormCrearUsuario(servicio);
            l.ShowDialog();
        }


        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox2_Enter(object sender, EventArgs e)
        {
            if (txtUsuario.Text == "USER")
            {
                txtUsuario.Text = string.Empty;
            }
        }

        private void txtUsuario_Leave(object sender, EventArgs e)
        {
            if (txtUsuario.Text == "")
            {
                txtUsuario.Text = "USER";
            }
        }

        private void txtPasword_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtPasword_Enter(object sender, EventArgs e)
        {
            if (txtPasword.Text=="PASSWORD")
            {
                txtPasword.Text = "";
            }
        }

        private void txtPasword_Leave(object sender, EventArgs e)
        {
            if (txtPasword.Text == "")
            {
                txtPasword.Text = "PASSWORD";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                List<Parametro> lista = new List<Parametro>();
                lista.Add(new Parametro("@nombre", txtUsuario.Text.ToString()));
                lista.Add(new Parametro("@contraseña", txtPasword.Text.ToString()));
                if (servicio.ExisteCliente(lista))
                {
                    Cliente = servicio.TraerCLiente(lista);
                    this.Close();
                    //FormReservar form = new FormReservar();
                    //form.ShowDialog();
                }
            }
        }

        public bool Validar()
        {
            bool valido = true;

            if (txtUsuario.Text == "")
            {
                MessageBox.Show("Debe ingresar un usuario");
                valido =  false;
                txtUsuario.Focus();
            }
            if (txtPasword.Text == "")
            {
                MessageBox.Show("Debe ingresar una cotraseña");
                valido = false;
                txtPasword.Focus();

            }
            return valido;
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
             picOcultar.BringToFront();
            txtPasword.PasswordChar = '*';
        }

        private void picOcultar_Click(object sender, EventArgs e)
        {
           picVer.BringToFront();
           txtPasword.PasswordChar = '\0';
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
