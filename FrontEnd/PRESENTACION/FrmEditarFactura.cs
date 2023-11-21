using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using BackEnd.DATOS;
using BackEnd.ENTIDADES;
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
    public partial class FrmEditarFactura : Form
    {
        IGestorFacturas g;
        Facturas factura;
        public FrmEditarFactura(Facturas f, IGestorFacturas ge)
        {
            InitializeComponent();
            g = ge;
            factura = f;
        }

        private void FrmEditarFactura_Load(object sender, EventArgs e)
        {
            CargarCombo("medios_pago");
            CargarDatos();
        }

        private void CargarDatos()
        {
            txtUsuario.Text = string.Empty;
            cboMedioPago.SelectedIndex = factura.id_medio_pago;
            txttipoVent.Text = factura.tipoVenta.ToString();
            dtpFecha.Value = factura.fecha;
        }

        private void CargarCombo(string nombreTabla)
        {
            List<MedioPago> dt = g.TraerMedioPago(nombreTabla);
            cboMedioPago.DataSource = dt;
            cboMedioPago.DisplayMember = "descripcion";
            cboMedioPago.ValueMember = "id";
            cboMedioPago.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (Validarcampos())
            {
                if (ValidarMail())
                {
                    List<Parametro> l = new List<Parametro>();
                    l.Add(new Parametro("@idc", g.TraerIdCliente(txtUsuario.Text)));
                    l.Add(new Parametro("@mediopago", cboMedioPago.SelectedIndex));
                    l.Add(new Parametro("@tipoventa", txttipoVent.Text));
                    l.Add(new Parametro("@fec", dtpFecha.Value.ToString("MM-dd-yyyy")));
                    l.Add(new Parametro("@idf", factura.idFactura));

                    if (g.EditarFactura(l))
                    {
                        MessageBox.Show("Se editó la factura con éxito", "Editar", MessageBoxButtons.OK);
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("Error al editar", "Editar", MessageBoxButtons.OK);
                    }
                }
                else
                {
                    MessageBox.Show("El usuario ingresado no existe", "Editar", MessageBoxButtons.OK);
                }
            }
        }

        private bool ValidarMail()
        {
            if (g.VerificarMail(txtUsuario.Text.ToString()))
            {
                return true;
            }
            return false;
        }

        private bool Validarcampos()
        {
            if (txtUsuario.Text == string.Empty)
            {
                MessageBox.Show("Ingrese un usuario", "Editar", MessageBoxButtons.OK);
                txtUsuario.Focus();
                return false;
            }
            if (cboMedioPago.SelectedIndex < 1)
            {
                MessageBox.Show("Seleccione un medio de pago", "Editar", MessageBoxButtons.OK);
                cboMedioPago.Focus();
                return false;
            }
            if (txttipoVent.Text == string.Empty)
            {
                MessageBox.Show("Ingrese un tipo de venta", "Editar", MessageBoxButtons.OK);
                txttipoVent.Focus();
                return false;
            }
            if (dtpFecha.Value > DateTime.Today)
            {
                MessageBox.Show("No puede ingresar una fecha mayor a la actual", "Editar", MessageBoxButtons.OK);
                dtpFecha.Focus();
                return false;
            }
            return true;
        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
