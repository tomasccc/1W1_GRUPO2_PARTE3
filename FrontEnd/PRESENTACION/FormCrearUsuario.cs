using BackEnd.DATOS;
using BackEnd.INTERFACES;
using FrontEnd.CLIENTE;
using FrontEnd.DTO;
using WebApi.Controllers.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace FrontEnd.PRESENTACION
{
    public partial class FormCrearUsuario : Form
    {
        IGestorCliente gestor;
        public FormCrearUsuario(IGestorCliente g)
        {
            InitializeComponent();
            gestor = g;
            dtpFechanac.MaxDate = DateTime.Now;
            EnterLeaveCampos();
            InicioTextBox();
            picConfVer.BringToFront();
            PicVer.BringToFront();
        }
        private void InicioTextBox()
        {
            txtcontra.Text = "Contraseña";
            txtcontra.ForeColor = Color.Gray;
            txtconfirmarcontra.Text = "Confirmar contraseña";
            txtconfirmarcontra.ForeColor = Color.Gray;
            txtapellido.Text = "Apellido";
            txtapellido.ForeColor = Color.Gray;
            txtnombre.Text = "Nombre";
            txtnombre.ForeColor = Color.Gray;
            txtmail.Text = "@gmail";
            txtmail.ForeColor = Color.Gray;
            txtcelular.Text = "Celular";
            txtcelular.ForeColor = Color.Gray;

        }

        private void txtnombre_Leave(object sender, EventArgs e)
        {
            txtnombreval.Visible = false;
            if (txtnombre.Text == "")
            {
                txtnombre.Text = "Nombre";
                txtnombre.ForeColor = Color.Gray;
            }
        }

        private void txtnombre_Enter(object sender, EventArgs e)
        {
            txtnombreval.Visible = true;
            if (txtnombre.Text == "Nombre")
            {
                txtnombre.Text = "";
                txtnombre.ForeColor = Color.Black;
            }
        }



        private void txtnombre_Click(object sender, EventArgs e)
        {
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void FormCrearUsuario_Load(object sender, EventArgs e)
        {

        }

        //BOTON REGISTRARSE
        private async void btnRegistrarse_Click(object sender, EventArgs e)
        {
            txtValidacion.Text = "";
            if (Validar())
            {
                CrearUsuarioDTO c = new CrearUsuarioDTO();
                string url = "https://localhost:7214/api/Clientes/CrearUsuario";
                c.email = txtmail.Text.ToString();
                c.contraseña = txtcontra.Text.ToString();
                c.nombre = txtnombre.Text.ToString();
                c.apellido = txtapellido.Text.ToString();
                c.fechanac = dtpFechanac.Value;
                c.telefono=txtcelular.Text.ToString();
                int resultado = await ClienteSingleton.getInstance().PostRegistrarClienteAsync(url, c);

                if (resultado > 0)
                {
                    MessageBox.Show("El usuario fue registrado con éxito", "Registrar", MessageBoxButtons.OK);
                    this.Close();
                }
                else MessageBox.Show("Error al grabar", "Registrar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private bool Validar()
        {
            if (txtnombre.Text == string.Empty || txtnombre.Text == "Nombre")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                return false;
            }
            if (txtapellido.Text == string.Empty || txtapellido.Text == "Apellido")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                return false;
            }
            if (txtmail.Text == string.Empty || txtmail.Text == "Usuario (e-mail)")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                return false;
            }
            if (txtcontra.Text == string.Empty || txtcontra.Text == "Contraseña")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                return false;
            }
            if (txtcontraval.Text == string.Empty)
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                return false;
            }
            if (dtpFechanac.Value == null)
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                return false;
            }
            if (dtpFechanac.Value > DateTime.Now)
            {
                txtValidacion.Text = "(La fecha de nacimiento no puede ser mayor a la fecha actual)";
                return false;
            }
            if (txtcontra.Text.Length < 7 || txtconfirmarcontra.Text.Length < 7)
            {
                txtValidacion.Text = "(La contraseña debe contener más de 7 carácteres)";
                return false;
            }
            if (txtcontra.Text != txtconfirmarcontra.Text)
            {
                txtValidacion.Text = "(Las contraseñas deben ser iguales)";
                return false;
            }
            if (!int.TryParse(txtcelular.Text, out _))
            {
                if (txtcelular.Text != string.Empty)
                {
                    txtValidacion.Text = "(Debe ingresar únicamente números en el campo celular)";
                    return false;
                }
            }
            List<Parametro> lista2 = new List<Parametro>();
            lista2.Add(new Parametro("@usu", txtmail.Text.ToString()));
            if (!gestor.VerificarMail(lista2))
            {
                txtValidacion.Text = "(El mail ingresado ya está en uso)";
                return false;
            }
            return true;
        }

        private void EnterLeaveCampos()
        {
            txtnombre.Enter += txtnombre_Enter;
            txtnombre.Leave += txtnombre_Leave;
            txtapellido.Enter += txtapellido_Enter;
            txtapellido.Leave += txtapellido_Leave;
            txtmail.Enter += txtmail_Enter;
            txtmail.Leave += txtmail_Leave;
            txtcontra.Enter += txtcontra_Enter;
            txtcontra.Leave += txtcontra_Leave;
            dtpFechanac.Enter += dtpFechanac_Enter;
            dtpFechanac.Leave += dtpFechanac_Leave;
            txtconfirmarcontra.Enter += txtconfirmarcontra_Enter;
            txtconfirmarcontra.Leave += txtconfirmarcontra_Leave;

        }

        private void txtconfirmarcontra_Enter(object sender, EventArgs e)
        {
            txtconfirmarcontraval.Visible = true;
            if (txtconfirmarcontra.Text == "Confirmar contraseña")
            {
                txtconfirmarcontra.Text = "";
                txtconfirmarcontra.ForeColor = Color.Black;
                txtconfirmarcontra.PasswordChar = '*';

            }

        }

        private void txtconfirmarcontra_Leave(object sender, EventArgs e)
        {
            txtconfirmarcontraval.Visible = false;
            if (txtconfirmarcontra.Text == "")
            {
                txtconfirmarcontra.Text = "Confirmar contraseña";
                txtconfirmarcontra.ForeColor = Color.Gray;
                txtconfirmarcontra.PasswordChar = '\0';
            }
        }

        private void dtpFechanac_Leave(object sender, EventArgs e)
        {
            txtmailval.Visible = false;
        }

        private void dtpFechanac_Enter(object sender, EventArgs e)
        {
            dtpfechanacval.Visible = true;
        }

        private void txtcontra_Leave(object sender, EventArgs e)
        {
            txtcontraval.Visible = false;
            if (txtcontra.Text == "")
            {
                txtcontra.Text = "Contraseña";
                txtcontra.ForeColor = Color.Gray;
                txtcontra.PasswordChar = '\0';
            }
        }

        private void txtcontra_Enter(object sender, EventArgs e)
        {
            txtcontraval.Visible = true;
            if (txtcontra.Text == "Contraseña")
            {
                txtcontra.Text = "";
                txtcontra.ForeColor = Color.Black;
                txtcontra.PasswordChar = '*';
            }

        }

        private void txtmail_Leave(object sender, EventArgs e)
        {
            txtmailval.Visible = false;
            if (txtmail.Text == "")
            {
                txtmail.Text = "@gmail";
                txtmail.ForeColor = Color.Gray;
            }
        }

        private void txtmail_Enter(object sender, EventArgs e)
        {
            txtmailval.Visible = true;
            if (txtmail.Text == "@gmail")
            {
                txtmail.Text = "";
                txtmail.ForeColor = Color.Black;
            }
        }

        private void txtapellido_Leave(object sender, EventArgs e)
        {
            txtapellidoval.Visible = false;
            if (txtapellido.Text == "")
            {
                txtapellido.Text = "Apellido";
                txtapellido.ForeColor = Color.Silver;
            }
        }

        private void txtapellido_Enter(object sender, EventArgs e)
        {
            txtapellidoval.Visible = true;
            if (txtapellido.Text == "Apellido")
            {
                txtapellido.Text = "";
                txtapellido.ForeColor = Color.Black;

            }
        }


        private void txtnombreval_Click(object sender, EventArgs e)
        {

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Seguro que quiere salir?", "Atencion", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                this.Close();
            }
        }



        private void txtcelular_Enter(object sender, EventArgs e)
        {
            if (txtcelular.Text == "Celular")
            {
                txtcelular.Text = "";
                txtcelular.ForeColor = Color.Black;
            }
        }

        private void txtcelular_Leave(object sender, EventArgs e)
        {
            if (txtcelular.Text == "")
            {
                txtcelular.Text = "Celular";
                txtcelular.ForeColor = Color.Gray;

            }
        }

        private void PicVer_Click(object sender, EventArgs e)
        {
            PicOcultar.BringToFront();
            txtcontra.PasswordChar = '\0';
        }

        private void PicOcultar_Click(object sender, EventArgs e)
        {
            PicVer.BringToFront();
            txtcontra.PasswordChar = '*';
        }

        private void picConfVer_Click(object sender, EventArgs e)
        {
            picConOcultar.BringToFront();
            txtconfirmarcontra.PasswordChar = '\0';
        }

        private void picConOcultar_Click(object sender, EventArgs e)
        {
            picConfVer.BringToFront();
            txtconfirmarcontra.PasswordChar = '*';
        }

        private void txtconfirmarcontraval_Click(object sender, EventArgs e)
        {

        }

        private void txtcelular_TextChanged(object sender, EventArgs e)
        {

        }
        private void txtcelular_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                txtValidacion.Text = "(El número de celular debe ser numérico)";
                e.Handled = true;
            }
        }









        /*private void timer1_Tick(object sender, EventArgs e)
        {
            Tick(txtnombreval);
        }

        private void Tick(Label l)
        {
            float opacity = 0.0f;
            if (l.Visible)
            {
                if (opacity > 0)
                {
                    opacity -= 0.1f; // Cambia el nivel de opacidad gradualmente
                }
                else
                {
                    l.Visible = false; // Oculta el Label cuando la opacidad llega a cero
                    timer1.Stop(); // Detiene el Timer
                }
            }
            else
            {
                if (opacity < 1)
                {
                    opacity += 0.1f; // Cambia el nivel de opacidad gradualmente
                }
                else
                {
                    timer1.Stop(); // Detiene el Timer cuando la opacidad alcanza 1
                }
            }

            // Cambia el color de fondo del Label con el nivel de opacidad actual
            l.BackColor = Color.FromArgb((int)(opacity * 255), l.BackColor);

        }*/
    }
}
