using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using BackEnd.ENTIDADES;
using FrontEnd.CLIENTE;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WebApi.Controllers.DTO;

namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    public partial class FormCompra : Form
    {
        private int idPelicula;
        IGestorFacturas g;
        Pelicula p;
        List<Butaca> BReservadas;
        DateTime fecha, horario;
        Facturas nueva;
        Cliente c;
        Funcion funcion;
        FormReservar reservar;

        public FormCompra(Pelicula p, IGestorFacturas g, List<Butaca> breservadas, DateTime fecha, DateTime horareio,
            Facturas nueva, Cliente c, Funcion funcion, FormReservar reservar)
        {
            InitializeComponent();
            this.p = p;
            this.g = g;
            BReservadas = breservadas;
            this.fecha = fecha;
            this.horario = horareio;
            this.nueva = nueva;
            this.c = c;
            this.funcion = funcion;
            this.reservar = reservar;
        }

        private void CargarImagen()
        {
            if (p.ID == 1)
            {
                PicSpiderman.BringToFront();
                lblGenero.Text = "Genero: Comedia de accion";
                lblDuracion.Text = "Duracion: 140 Minutos";
                lblDirector.Text = "Direccion: Joaquim dos Santos, Kemp Powers";
            }
            else
                if (p.ID == 2)
            {
                PicMonja.BringToFront();
                lblGenero.Text = "Genero: Terror";
                lblDuracion.Text = "Duracion: 109 Minutos";
                lblDirector.Text = "Direccion: Michael Chaves";
            }
            else
                if (p.ID == 3)
            {
                PicTrols3.BringToFront();
                lblGenero.Text = "Genero: Comedia y musical";
                lblDuracion.Text = "Duracion: 92 Minutos";
                lblDirector.Text = "Direccion: Walt Dohrn";
            }
            else
                if (p.ID == 4)
            {
                PicLJDH.BringToFront();
                lblGenero.Text = "Genero: Drama, accion y aventuras";
                lblDuracion.Text = "Duracion: 109 Minutos";
                lblDirector.Text = "Direccion: Francis Lawrence";
            }
        }

        private void FormCompra_Load(object sender, EventArgs e)
        {
            DGVfactura.Rows.Clear();
            CargarImagen();
            CargarCombo("medios_pago");
            CargarDataGrid(BReservadas);
            CalcularTotal();
        }

        private void CalcularTotal()
        {
            int indiceColumna = DGVfactura.Columns["colMonto"].Index;

            double suma = 0;
            foreach (DataGridViewRow fila in DGVfactura.Rows)
            {
                if (fila.Cells[indiceColumna].Value != null)
                {
                    suma += Convert.ToInt32(fila.Cells[indiceColumna].Value);
                }
            }

            txtTotal.Text = suma.ToString();
        }

        private void CargarDataGrid(List<Butaca> Butacasreservadas)
        {
            foreach (Butaca b in Butacasreservadas)
            {
                string nombre = b.fila + b.columna;
                DGVfactura.Rows.Add(new object[] {
                b.id,nombre,fecha,horario,1500     });


            }
        }

        private void cboMedioP_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private async void CargarCombo(string nombreTabla)
        {
            CargarComboMediosPagoDTO cdto = new CargarComboMediosPagoDTO();
            cdto.nombretabla = nombreTabla;
            string url = "https://localhost:7214/api/Facturas/CargarMediosPago";
            List<MedioPago> resultado = await ClienteSingleton.getInstance().PostCargarMediosPagoAsync(url, cdto);


            cboMedioP.DataSource = resultado;
            cboMedioP.ValueMember = "Id";
            cboMedioP.DisplayMember = "Medio";
           
            cboMedioP.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private async void btnComprar_Click(object sender, EventArgs e)
        {
            FacturaGrabarDTO dto = new FacturaGrabarDTO();
            dto.idmediopago = (int)cboMedioP.SelectedValue; 
            dto.idcliente = c.ID;
            dto.fecha = DateTime.Now;
            string url = "https://localhost:7214/api/Facturas/InsertarFactura";
            List<DetalleFactura> lDet = new List<DetalleFactura>();
            foreach (DataGridViewRow dgv in DGVfactura.Rows)
            {
                DetalleFactura d = new DetalleFactura();

                d.Monto = Convert.ToDouble(DGVfactura.Rows[dgv.Index].Cells["colMonto"].Value);
                d.Id_funcion = funcion.Id;
                d.Id_butaca = BReservadas.ElementAt(dgv.Index).id;
                lDet.Add(d);
            }
            dto.lstDetalles = lDet;
            bool resultado = await ClienteSingleton.getInstance().PostGrabarFacturaAsync(url, dto);
            if (resultado)
            {
                MessageBox.Show("Compra realizada con éxito :)");
                this.Close();
                reservar.Close();
            }
            else
            {
                MessageBox.Show("No se pudo agregar");
            }

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            DGVfactura.Rows.Clear();
            this.Close();
        }
    }
}
