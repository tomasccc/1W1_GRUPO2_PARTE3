using BackEnd.ENTIDADES;
using BackEnd.FABRICA;
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
    public partial class FormPerfil : Form
    {
        Cliente cli;

        public FormPerfil(Cliente c)
        {
            InitializeComponent();
            cli = c;
        }

        public void CargarEtiquetas()
        {
            lblApellido.Text = cli.apellido;
            lblNombre.Text = cli.nombre;
            lblTelefono.Text = Convert.ToString(cli.telefono);
            lblmail.Text = cli.email;

            txtContra.Text = cli.contraseña;
            txtContra.UseSystemPasswordChar = true;
        }



        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void FormPerfil_Load(object sender, EventArgs e)
        {
            CargarEtiquetas();
            txtContra.Enabled = false;
        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            CerrarForms();
        }

        private void CerrarForms()
        {
            this.Close();

            FormPrincipal formPrincipal = Application.OpenForms.OfType<FormPrincipal>().FirstOrDefault();
            formPrincipal?.Close();

            FormLogin formLogin = new FormLogin(new FactoryServicioImp());
            formLogin.ShowDialog();
        }

        private void txtContra_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
