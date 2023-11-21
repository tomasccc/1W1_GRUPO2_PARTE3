using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using FrontEnd.CLIENTE;
using WebApi.Controllers.DTO;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace FrontEnd.PRESENTACION
{
    public partial class FormSoporteClientes : Form
    {
        IGestorCliente g;
        List<Cliente> clientesAusar;
        Cliente clienteu;
        public FormSoporteClientes(IGestorCliente g, Cliente clienteu)
        {
            InitializeComponent();
            this.g = g;
            this.clienteu = clienteu;
            clientesAusar = new List<Cliente>();
        }

        private void FormSoporteClientes_Load(object sender, EventArgs e)
        {

        }

        private void ClickCerrar_Click(object sender, EventArgs e)
        {

        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Hide();

        }

        private void txttel_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            DGVClientes.Rows.Clear();
           
            BuscarClientes();

            
        }

        private async void BuscarClientes()
        {
            string url = "https://localhost:7214/api/Clientes/consultar";
            ConsultarClienteDTO clienteDTO = new ConsultarClienteDTO();
            clienteDTO.nombre = txtnombre.Text.ToString();
            clienteDTO.apellido = txtapellido.Text.ToString();
            clienteDTO.email = txtemail.Text.ToString();
            if (txttel.Text == "")
            {
                clienteDTO.telefono = "";
            }
            else
            {
                clienteDTO.telefono = txttel.Text.ToString();
            }
            List<Cliente> clientes = await ClienteSingleton.getInstance().PostConsultarClienteAsyncDTO(url, clienteDTO);
            if (clientes == null)
            {
                return;
            }
            clientesAusar=clientes.ToList();
            foreach (Cliente li in clientes)
            {

                DGVClientes.Rows.Add(new object[] {
                            li.ID,li.nombre,li.apellido ,li.email ,li.telefono ,li.fechanac ,"Editar","Eliminar" });

            }
            DGVClientes.Columns["ColFechaNacimiento"].DefaultCellStyle.Format = "dd/MM/yyyy";
        }



        private bool Validar()
        {
            if (txttel.Text != string.Empty)
            {
                try
                {
                    string input = txttel.Text;
                    int resultado = Convert.ToInt32(input);
                }
                catch (FormatException ex)
                {
                    MessageBox.Show("Debe ingresar un valor númerico");
                    return false;
                }
            }
            else
                if (txttel.Text == string.Empty)
            {
                txttel.Text = null;
            }


            return true; ;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FormCrearUsuario f = new FormCrearUsuario(g);
            f.ShowDialog();
        }

        private async void DGVClientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (DGVClientes.CurrentCell.ColumnIndex == 6)
            {
                Cliente cliente = new Cliente();
                foreach (Cliente c in clientesAusar)
                {
                    if (c.ID == (int)DGVClientes.CurrentRow.Cells["colID"].Value)
                    {
                        cliente = c;
                        break;
                    }
                }
                if (cliente == null)
                {
                    MessageBox.Show("El cliente que intenta editar no fue encontrado", "Error");
                    return;
                }
                FormEditarCliente f = new FormEditarCliente(cliente, g);
                f.ShowDialog();
                btnBuscar_Click(sender, e);
            }
            else
            {

                if (DGVClientes.CurrentCell.ColumnIndex == 7)
                {
                    if (MessageBox.Show("¿Esta seguro que desea borrar el usuario seleccionado?", "Borrar", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        if ((int)DGVClientes.CurrentRow.Cells["colID"].Value != this.clienteu.ID)
                        {
                            string url = "https://localhost:7214/api/Clientes/BorrarUsuario";
                            BorrarUsuarioDTO usuarioDTO = new BorrarUsuarioDTO();
                            usuarioDTO.id = (int)DGVClientes.CurrentRow.Cells["colID"].Value;
                            bool resultado = await ClienteSingleton.getInstance().PutBorrarUsuarioAsync(url, usuarioDTO);
                            if (resultado)
                            {
                                MessageBox.Show("El usuario fue borrado de la base de datos con éxito.", "Borrar", MessageBoxButtons.OK);
                                btnBuscar_Click(sender, e);
                            }else
                                MessageBox.Show("El usuario no pudo ser borrado", "Borrar", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                        else
                            MessageBox.Show("No puede borrar el usuario con el que ha iniciado sesión", "Borrar", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
            }
        }
    }
}
