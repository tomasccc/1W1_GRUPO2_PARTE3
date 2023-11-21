using BackEnd.DATOS;
using BackEnd.DATOS.Implementacion;
using BackEnd.ENTIDADES;
using BackEnd.FABRICA;
using BackEnd.INTERFACES;
using BackEnd.SERVICIO;
using FrontEnd.CLIENTE;
using FrontEnd.DTO;
using Newtonsoft.Json;
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
    public partial class FormLogin : Form
    {
        bool esAdmin;
        FactoryServicio fabricaGestor;
        IGestorCliente gcliente;
        public FormLogin(FactoryServicio fabrica)
        {
            InitializeComponent();
            fabricaGestor = fabrica;
            gcliente = (IGestorCliente)fabricaGestor.CrearGestorCliente();
            picVer.BringToFront();
            txtContraseña.Text = "CONTRASEÑA";
            esAdmin = false;
            fabricaGestor = fabrica;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void btnCrearCuenta_Click(object sender, EventArgs e)
        {
            FormCrearUsuario l = new FormCrearUsuario(gcliente);
            l.ShowDialog();
        }


        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox2_Enter(object sender, EventArgs e)
        {
            if (txtUsuario.Text == "USUARIO")
            {
                txtUsuario.Text = string.Empty;
            }
        }

        private void txtUsuario_Leave(object sender, EventArgs e)
        {
            if (txtUsuario.Text == "")
            {
                txtUsuario.Text = "USUARIO";
            }
        }

        private void txtPasword_TextChanged(object sender, EventArgs e)
        {

        }

        //if (gcliente.ExisteCliente(lista))


        private async void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                TraerVerificarClienteDTO c = new TraerVerificarClienteDTO();
                string url = "https://localhost:7214/api/Clientes/VerificarCliente";
                c.usuario=txtUsuario.Text.ToString();
                c.contraseña=txtContraseña.Text.ToString();
                bool resultado = await ClienteSingleton.getInstance().PostVerificarClienteAsync(url, c);
                if (resultado)
                {
                    url = "https://localhost:7214/api/Clientes/ConsultarCliente";
                    Cliente cliente= await ClienteSingleton.getInstance().PostConsultarClienteAsync(url, c);
                    FormPrincipal form = new FormPrincipal(fabricaGestor.CrearGestorCliente(), fabricaGestor.CrearGestorButacas(),fabricaGestor.CrearGestorFuncion(), 
                    fabricaGestor.CrearGestorFacturas(),fabricaGestor.CrearGestorPeliculas(),esAdmin, cliente);
                    form.ShowDialog();
                    this.Close();
                }
                else
                    MessageBox.Show("La contraseña o usuario no son correctos","Ingresar",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
            }
        }

        public bool Validar()
        {
            bool valido = true;

            if (txtUsuario.Text == "" || txtUsuario.Text == "USUARIO")
            {
                MessageBox.Show("Debe ingresar un usuario","Validar",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
                valido =  false;
                txtUsuario.Focus();
            }
            if (txtContraseña.Text == "" || txtContraseña.Text == "CONTRASEÑA")
            {
                MessageBox.Show("Debe ingresar una contraseña", "Validar", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                valido = false;
                txtContraseña.Focus();

            }
            return valido;
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
             picOcultar.BringToFront();
            txtContraseña.PasswordChar = '\0';
        }

        private void picOcultar_Click(object sender, EventArgs e)
        {
           picVer.BringToFront();
           txtContraseña.PasswordChar = '*';
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void txtContraseña_Enter(object sender, EventArgs e)
        {
            if (txtContraseña.Text == "CONTRASEÑA")
            {
                txtContraseña.Text = "";
                txtContraseña.PasswordChar = '*';
            }
        }

        private void txtContraseña_Leave(object sender, EventArgs e)
        {
            if (txtContraseña.Text == "")
            {
                txtContraseña.Text = "CONTRASEÑA";
                txtContraseña.PasswordChar = '\0';
            }
        }

        private void pictureBox2_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void checkAdmin_CheckedChanged(object sender, EventArgs e)
        {
            if (checkAdmin.Checked)
            {
                esAdmin = true;
            }else
                if (!checkAdmin.Checked)
            {
                esAdmin = false;
            }
        }
    }
}
