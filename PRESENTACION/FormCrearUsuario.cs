using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    public partial class FormCrearUsuario : Form
    {
        public FormCrearUsuario()
        {
            InitializeComponent();
            dtpFechanac.MaxDate = DateTime.Now;
            EnterLeaveCampos();
        }

        private void txtnombre_Leave(object sender, EventArgs e)
        {
            txtnombreval.Visible=false;
        }

        private void txtnombre_Enter(object sender, EventArgs e)
        {
            txtnombreval.Visible = true;

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
        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                
            }
        }

        private bool Validar()
        {
            if (txtnombre.Text == string.Empty)
            {
                txtValidacion.Text = "Debe completar los campos obligatorios";
                return false;
            }
            if (txtapellido.Text == string.Empty)
            {
                txtValidacion.Text = "Debe completar los campos obligatorios";
                return false;
            }
            if (txtmail.Text == string.Empty)
            {
                txtValidacion.Text = "Debe completar los campos obligatorios";
                return false;
            }
            if (txtcontra.Text == string.Empty)
            {
                txtValidacion.Text = "Debe completar los campos obligatorios";
                return false;
            }
            if (txtcontraval.Text == string.Empty)
            {
                txtValidacion.Text = "Debe completar los campos obligatorios";
                return false;
            }//v||
            if (dtpFechanac.Value == null)
            {
                txtValidacion.Text = "Debe completar los campos obligatorios";
                return false;
            }
            if(dtpFechanac.Value > DateTime.Now)
            {
                txtValidacion.Text = "La fecha de nacimiento no puede ser mayor a la fecha actual";
                return false;
            }
            if(txtcontra.Text.Length<7 || txtcontraval.Text.Contains())
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
        }

        private void txtconfirmarcontra_Leave(object sender, EventArgs e)
        {
            txtconfirmarcontraval.Visible=false;
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
        }

        private void txtcontra_Enter(object sender, EventArgs e)
        {
            txtcontraval.Visible = true;
        }

        private void txtmail_Leave(object sender, EventArgs e)
        {
            txtmailval.Visible = false;
        }

        private void txtmail_Enter(object sender, EventArgs e)
        {
            txtmailval.Visible = true;
        }

        private void txtapellido_Leave(object sender, EventArgs e)
        {
            txtapellidoval.Visible = false;
        }

        private void txtapellido_Enter(object sender, EventArgs e)
        {
            txtapellidoval.Visible=true;
        }

        private void txtnombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtnombreval_Click(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            string texto = txtconfirmarcontra.Text; 
            if (checkMostrarCaracteres.Checked)
            {
                txtconfirmarcontra.Text = texto;
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
