using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
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

namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    public partial class FormTransaccionFactura : Form
    {
        IGestorFacturas g;
        List<Facturas> lstfacturas = new List<Facturas>();
        public FormTransaccionFactura(IGestorFacturas ge)
        {
            InitializeComponent();

            g = ge;
        }

        private void FormTransaccionFactura_Load(object sender, EventArgs e)
        {

        }





        private bool Validar()
        {
            if (txtnombre.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar un nombre");
                return false;
            }
            if (txtapellido.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar un apellido");
                return false;
            }


            return true; ;
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {

            DGVClientes.Rows.Clear();

            string nom = txtnombre.Text;
            string ape = txtapellido.Text;
            lstfacturas = g.TraerFacturas(nom, ape);
            foreach (Facturas li in lstfacturas)
            {

                DGVClientes.Rows.Add(new object[] {"",
                        li.nombre,li.apellido,li.idFactura,li.medio_pago,
                        li.tipoVentadesc,li.fecha });

            }
            DGVClientes.Columns["Fecha"].DefaultCellStyle.Format = "dd/MM/yyyy";



        }

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void DGVClientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (DGVClientes.CurrentCell.ColumnIndex == 7)
            {
                Facturas factura = new Facturas();

                FrmEditarFactura f = new FrmEditarFactura(lstfacturas[DGVClientes.CurrentRow.Index], g);
                f.ShowDialog();
                btnBuscar_Click(sender, e);
            }
            if (DGVClientes.CurrentCell.ColumnIndex == 8)
            {
                if (MessageBox.Show("¿Esta seguro que desea borrar la factura seleccionada?", "Borrar", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {

                    if (g.EliminarFactura((int)DGVClientes.CurrentRow.Cells["colidfactura"].Value))
                    {
                        MessageBox.Show("El usuario fue borrado de la base de datos con éxito.", "Borrar", MessageBoxButtons.OK);
                        btnBuscar_Click(sender, e);
                    }

                }
            }
        }

        private void txtnombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && char.IsDigit(e.KeyChar))
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
    }
}
