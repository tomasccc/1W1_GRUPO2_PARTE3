using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using FrontEnd.CLIENTE;
using FrontEnd.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WebApi.Controllers.DTO;

namespace FrontEnd.PRESENTACION
{
    public partial class FormEditarCliente : Form
    {
        Cliente cliente;
        IGestorCliente g;
        string email;
        public FormEditarCliente(Cliente c, IGestorCliente g)
        {
            InitializeComponent();
            cliente = c;
            this.g = g;
            dateTimePicker1.Format = DateTimePickerFormat.Short;
        }

        private void CargarDatos()
        {


            txtnombre.Text = cliente.nombre;
            txtapellido.Text = cliente.apellido;
            txtemail.Text = cliente.email;
            txtcontra.Text = cliente.contraseña;
            if (cliente.telefono == null)
            {

            }
            else
                txttel.Text = cliente.telefono.ToString();
            if (cliente.fechanac != DateTime.MinValue)
            {
                dateTimePicker1.Value = cliente.fechanac;
            }
            else
            {
                dateTimePicker1.Value = DateTime.Now;

            }
        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txttel_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private async void btnEditar_Click(object sender, EventArgs e)
        {
            if (await VerificarMail() || cliente.email == txtemail.Text)
            {
                if (Validar())
                {
                    string url = "https://localhost:7214/api/Clientes/EditarCliente";
                    if (txtemail.Text != cliente.email)
                    {
                        cliente.email = txtemail.Text.ToString();
                    }
                    cliente.contraseña = txtcontra.Text.ToString();
                    cliente.nombre = txtnombre.Text.ToString();
                    cliente.fechanac = dateTimePicker1.Value;
                    if (txttel.Text == "")
                    {
                        cliente.telefono = "";
                    }
                    else
                    {
                        cliente.telefono = txttel.Text.ToString();
                    }
                    cliente.apellido = txtapellido.Text;
                    bool resultado = await ClienteSingleton.getInstance().PutEditarClienteAsync(url, cliente);
                    if (resultado)
                    {
                        MessageBox.Show("Se editó el cliente con éxito", "Editar", MessageBoxButtons.OK);
                        this.Close();
                    }
                    else
                        MessageBox.Show("El cliente no pudo ser editado", "Editar", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
            else
                MessageBox.Show("El email que intenta ingresar ya está en uso", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

        private void FormEditarCliente_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }
        private bool Validar()
        {
            if (txtnombre.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtapellido.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtemail.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtcontra.Text == string.Empty)
            {
                MessageBox.Show("Debe llenar todos los campos", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (dateTimePicker1.Value >= DateTime.Now)
            {
                MessageBox.Show("No puede ingresar una fecha mayor a la fecha actual", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (txtcontra.Text.Length < 7)
            {
                MessageBox.Show("La contraseña debe tener más de 7 carácteres", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (int.TryParse(txttel.Text, out _))
            {
                if (txttel.Text != string.Empty)
                {
                    MessageBox.Show("Debe ingresar únicamente números en el teléfono", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
            }
            /* bool resultado = Convert.ToBoolean(VerificarMail().Result);
             if (!resultado && cliente.email != txtemail.Text)
             {
                 MessageBox.Show("El email que intenta ingresar ya está en uso", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                 return false;
             }*/
            return true;
        }

        private async Task<bool> VerificarMail()
        {

            string url = "https://localhost:7214/api/Clientes/VerificarMail";
            ClienteVerificarMailDTO cveri = new ClienteVerificarMailDTO();
            cveri.usuario = txtemail.Text.ToString();
            bool resultado = await ClienteSingleton.getInstance().PostVerificarMailAsync(url, cveri);
            return resultado;
        }

        private void txttel_TextChanged(object sender, EventArgs e)
        {

        }


        /*if (txtnombre.Text == string.Empty || txtnombre.Text == "Nombre")
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
                if (txtcelular.Text == string.Empty)
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
            return true;*/
    }
}
