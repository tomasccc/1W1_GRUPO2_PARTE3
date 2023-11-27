using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using BackEnd.ENTIDADES;
using FrontEnd.CLIENTE;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
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
        private PrintDocument PD = new PrintDocument();
        private PrintPreviewDialog PPD = new PrintPreviewDialog();
        private int longpaper;

        public FormCompra(Pelicula p, IGestorFacturas g, List<Butaca> breservadas,
            Facturas nueva, Cliente c, Funcion funcion, FormReservar reservar)
        {
            InitializeComponent();
            this.p = p;
            this.g = g;
            BReservadas = breservadas;
            this.nueva = nueva;
            this.c = c;
            this.funcion = funcion;
            this.reservar = reservar;
            PD.BeginPrint += new PrintEventHandler(PD_BeginPrint);
            PD.PrintPage += new PrintPageEventHandler(PrintDocument_PrintPage);

            PPD.Document = PD;
        }

        private void PD_BeginPrint(object sender, PrintEventArgs e)
        {
            PageSettings pagesetup = new PageSettings();
            pagesetup.PaperSize = new PaperSize("Custom", 250, longpaper + 30);
            PD.DefaultPageSettings = pagesetup;
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

        private void PrintDocument_PrintPage(object sender, PrintPageEventArgs e)
        {
            Font f8 = new Font("Calibri", 8, FontStyle.Regular);
            Font f10 = new Font("Calibri", 10, FontStyle.Regular);
            Font f10b = new Font("Calibri", 10, FontStyle.Bold);
            Font f14 = new Font("Calibri", 14, FontStyle.Bold);

            int leftmargin = PD.DefaultPageSettings.Margins.Left;
            int centermargin = PD.DefaultPageSettings.PaperSize.Width / 2;
            int rightmargin = PD.DefaultPageSettings.PaperSize.Width;

            StringFormat right = new StringFormat();
            StringFormat center = new StringFormat();
            right.Alignment = StringAlignment.Far;
            center.Alignment = StringAlignment.Center;

            string line = "****************************************************************";

            Image logo = FrontEnd.Properties.Resources.logo;
            e.Graphics.DrawImage(logo, (e.PageBounds.Width - 50) / 2, 5, 30, 30);

            e.Graphics.DrawString("GRUPO N°2 CINES", f10, Brushes.Black, centermargin, 40, center);
            e.Graphics.DrawString("", f10, Brushes.Black, centermargin, 55, center);

            e.Graphics.DrawString("Factura N", f8, Brushes.Black, 0, 75);
            e.Graphics.DrawString(":", f8, Brushes.Black, 50, 75);
            e.Graphics.DrawString(nueva.idFactura.ToString(), f8, Brushes.Black, 70, 75);

            e.Graphics.DrawString("Sala", f8, Brushes.Black, 0, 85);
            e.Graphics.DrawString(":", f8, Brushes.Black, 50, 85);
            e.Graphics.DrawString(funcion.IdSala.ToString(), f8, Brushes.Black, 70, 85);

            e.Graphics.DrawString("Fecha: " + DateTime.Now.ToShortDateString() + " - Hora: " + DateTime.Now.ToShortTimeString(), f8, Brushes.Black, 0, 95);

            //Columnas
            e.Graphics.DrawString("Butaca.", f8, Brushes.Black, 0, 110);
            e.Graphics.DrawString("ID.", f8, Brushes.Black, 25, 110);
            e.Graphics.DrawString("Valor", f8, Brushes.Black, 180, 110, right);


            e.Graphics.DrawString(line, f8, Brushes.Black, 0, 120);

            int height = 0;
            decimal i;
            DGVfactura.AllowUserToAddRows = false;
            for (int r = 0; r < DGVfactura.RowCount; r++)
            {
                height += 15;
                e.Graphics.DrawString(DGVfactura.Rows[r].Cells[1].Value.ToString(), f8, Brushes.Black, 0, 115 + height);
                e.Graphics.DrawString(DGVfactura.Rows[r].Cells[0].Value.ToString(), f8, Brushes.Black, 25, 115 + height);
                i = Convert.ToDecimal(DGVfactura.Rows[r].Cells[4].Value);
                DGVfactura.Rows[r].Cells[4].Value = i.ToString("##,##0");

                e.Graphics.DrawString(DGVfactura.Rows[r].Cells[4].Value.ToString(), f8, Brushes.Black, 180, 115 + height, right);
            }
            int height2 = 145 + height;
            sumprice();

            e.Graphics.DrawString(line, f8, Brushes.Black, 0, height2);
            e.Graphics.DrawString("Total: " + t_price.ToString("##,##0"), f10b, Brushes.Black, rightmargin, 10 + height2, right);


            e.Graphics.DrawString("~ GRACIAS POR PREFERIRNOS ~", f10, Brushes.Black, centermargin, 70 + height2, center);
            e.Graphics.DrawString("~ Documento generado por: G2 CINES ~", f8, Brushes.Black, centermargin, 85 + height2, center);

        }

        private decimal t_price;
        private int t_qty;
        private void sumprice()
        {
            decimal countprice = 0;
            for (int i = 0; i < DGVfactura.Rows.Count; i++)
            {
                countprice += Convert.ToDecimal(DGVfactura.Rows[i].Cells["colMonto"].Value);
            }
            t_price = countprice;

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
                b.id,nombre,funcion.fecha.ToShortDateString().ToString(),funcion.hora,ValorEntrada()     });


            }
        }

        private double ValorEntrada()
        {
            if (funcion.IdtipoSala == 1)
            {
                return 1500;
            }
            else
                if (funcion.IdtipoSala == 2)
            {
                return 2500;
            }
            return 0;
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
            int resultado = await ClienteSingleton.getInstance().PostGrabarFacturaAsync(url, dto);
            if (resultado != 0)
            {
                nueva.idFactura = resultado;
                CambiarTamañoPPD();
                MessageBox.Show("Compra realizada con éxito :)");
                PPD.ShowDialog();
                this.Close();
                reservar.Close();
            }
            else
            {
                MessageBox.Show("No se pudo agregar");
            }

        }

        private void CambiarTamañoPPD()
        {
            int rowcount = DGVfactura.Rows.Count;
            longpaper = rowcount * 15 + 240;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            DGVfactura.Rows.Clear();
            this.Close();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            btnComprar_Click(sender, e);
        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void DGVfactura_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
