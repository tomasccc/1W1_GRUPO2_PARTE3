using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FrontEnd.PRESENTACION
{
    public partial class Ticket : Form
    {
        public Ticket()
        {
            InitializeComponent();
        }

        private void Ticket_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.None;

        }

        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);

            // Configuración para un ticket
            int margen = 10;
            int alturaLinea = 20;
            Font fuente = new Font("Arial", 10);
            SolidBrush pincel = new SolidBrush(Color.Black);

            // Dibujar el contenido del ticket
            string[] lineas = ObtenerContenidoTicket().Split('\n');

            foreach (string linea in lineas)
            {
                e.Graphics.DrawString(linea, fuente, pincel, margen, alturaLinea);
                alturaLinea += 20;  // Ajusta el espacio entre líneas
            }

            GraphicsPath path = new GraphicsPath();
            int borderRadius = 20; // Puedes ajustar este valor según tus preferencias

            path.AddArc(0, 0, borderRadius, borderRadius, 180, 90);
            path.AddArc(this.Width - borderRadius, 0, borderRadius, borderRadius, 270, 90);
            path.AddArc(this.Width - borderRadius, this.Height - borderRadius, borderRadius, borderRadius, 0, 90);
            path.AddArc(0, this.Height - borderRadius, borderRadius, borderRadius, 90, 90);

            this.Region = new Region(path);
        }

        private string ObtenerContenidoTicket()
        {

            return "Nombre del Cliente: Juan Pérez\nProducto: Producto A\nTotal: $20.00";
        }
    }
}
