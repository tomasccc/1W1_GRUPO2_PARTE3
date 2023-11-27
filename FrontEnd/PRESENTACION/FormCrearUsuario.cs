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
                c.telefono = txtArea.Text + txtcelular.Text.ToString();
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
                txtnombre.Focus();
                return false;
            }
            if (txtapellido.Text == string.Empty || txtapellido.Text == "Apellido")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                txtapellido.Focus();
                return false;
            }
            if (txtmail.Text == string.Empty || txtmail.Text == "Usuario (e-mail)")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                txtmailval.Focus();
                return false;
            }
            if (txtcontra.Text == string.Empty || txtcontra.Text == "Contraseña")
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                txtcontra.Focus();
                return false;
            }
            if (txtcontraval.Text == string.Empty)
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                txtcontraval.Focus();
                return false;
            }
            if (dtpFechanac.Value == null)
            {
                txtValidacion.Text = "(Debe completar los campos obligatorios)";
                dtpFechanac.Focus();
                return false;
            }
            if (dtpFechanac.Value >= DateTime.Now)
            {
                txtValidacion.Text = "(La fecha de nacimiento no puede ser mayor a la fecha actual)";
                dtpFechanac.Focus();
                return false;
            }
            if (dtpFechanac.Value.Year >= DateTime.Now.Year - 13)
            {
                txtValidacion.Text = "(Debes ser mayor de 13 años)";
                dtpFechanac.Focus();
                return false;
            }
            if (txtcontra.Text.Length < 7 || txtconfirmarcontra.Text.Length < 7)
            {
                txtValidacion.Text = "(La contraseña debe contener más de 7 carácteres)";
                txtcontra.Focus();
                return false;
            }

            if (txtcontra.Text.Length > 21)
            {
                txtValidacion.Text = "(La contraseña debe contener menos de 21 carácteres)";
                txtcontra.Focus();
                return false;
            }

            if (Regex.IsMatch(txtcontra.Text, @"[!@#$%^&*(),.?\:{ }|<>]"))
            {
                txtValidacion.Text = "(La contraseña no puede contener caracteres especiales.)";
                txtcontra.Focus();
                return false;
            }

            if (txtcontra.Text != txtconfirmarcontra.Text)
            {
                txtValidacion.Text = "(Las contraseñas deben ser iguales)";
                txtValidacion.Focus();
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
            if (txtcelular.Text == "celular")
            {
                txtValidacion.Text = "(Debe ingresar un numero celular)";
                txtcelular.Focus();
                return false;
            }

            if (txtcelular.Text.Length < 6)
            {
                txtValidacion.Text = "(Numero de Celular Invalido)";
                return false;
            }
            if (txtArea.Text.Length < 3)
            {
                txtValidacion.Text = "(Numero de Area Invalido)";
                return false;
            }

            if (txtArea.Text == string.Empty)
            {
                txtValidacion.Text = "(Debe ingresar un numero de Area)";
                return false;
            }

            if (!int.TryParse(txtArea.Text, out _))
            {
                if (txtArea.Text != string.Empty)
                {
                    txtValidacion.Text = "(Debe ingresar únicamente números en el campo Numero Area)";
                    return false;
                }
            }

            if (!ValidarEmail(txtmail.Text))
            {
                txtValidacion.Text = "(Correo electrónico no válido)";
                return false;
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




        private bool ValidarEmail(string email)
        {
            string patron = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
            Regex regex = new Regex(patron);

            return regex.IsMatch(email);
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
            txtcontra.TextChanged += Txtcontra_TextChanged;

        }

        private void Txtcontra_TextChanged(object? sender, EventArgs e)
        {
            string nivel = SeguridadContra(txtcontra.Text);
            lblNivel.Text = nivel;
            lblNivel.Visible = true;
            lblSeguridad.Visible = true;

        }

        private string SeguridadContra(string contraseña)
        {
            string nivel = "";
            bool Numeros = contraseña.Any(char.IsDigit);

            if (contraseña.Length <= 6)
            {
                lblNivel.ForeColor = Color.Red;
                nivel = "Baja";
            }
            else if (contraseña.Length <= 8 || !Numeros)
            {
                lblNivel.ForeColor = Color.Yellow;
                nivel = "Media";
            }
            else if (contraseña.Length > 10 || Numeros)
            {
                lblNivel.ForeColor = Color.LightGreen;
                nivel = "Alta";
            }

            return nivel;
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
            lblSeguridad.Visible = false;
            lblNivel.Visible = false;
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

            if (txtcelular.Text.Length >= 7 && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }




        private void txtArea_TextChanged(object sender, EventArgs e)
        {

        }


        private void txtcontra_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (txtcontra.Text.Length >= 21 && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtconfirmarcontra_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (txtconfirmarcontra.Text.Length >= 21 && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }



        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void SalirClickk_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            btnRegistrarse_Click(sender, e);
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        private void txtArea_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
                return;
            }

            if (txtArea.Text.Length >= 4 && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtcontra_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtArea_Enter(object sender, EventArgs e)
        {
            if (txtArea.Text == "Area")
            {
                txtArea.Text = "";
                txtArea.ForeColor = Color.Black;
            }
        }

        private void txtArea_Leave_1(object sender, EventArgs e)
        {
            if (txtArea.Text == string.Empty)
            {
                txtArea.Text = "Area";
                txtArea.ForeColor = Color.Gray;
            }
        }

        private void txtconfirmarcontra_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            if (txtconfirmarcontra.Text.Length >= 21 && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtapellido_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtnombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtapellido_Enter_1(object sender, EventArgs e)
        {
            txtapellidoval.Visible = true;
            if (txtapellido.Text == "Apellido")
            {
                txtapellido.Text = "";
                txtapellido.ForeColor = Color.Black;

            }
        }

        private void txtapellido_Leave_1(object sender, EventArgs e)
        {
            txtapellidoval.Visible = false;
            if (txtapellido.Text == string.Empty)
            {
                txtapellido.Text = "Apellido";
                txtapellido.ForeColor = Color.Gray;
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
