using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.PRESENTACION;
using BackEnd.ENTIDADES;
using BackEnd.FABRICA;
using BackEnd.INTERFACES;
using BackEnd.SERVICIO;
using FrontEnd.PRESENTACION_CONSULTAS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;

namespace FrontEnd.PRESENTACION
{
    public partial class FormPrincipal : Form
    {
        IGestorCliente gecliente;
        IGestorFunciones gestorfunciones;
        IGestorFacturas gestorfac;
        IGestorButacas gestorbut;
        IGestorPeliculas gp;
        bool esAdmin;
        Cliente cliente;

        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hWnd, int wParam, int lParam, int v);


        public FormPrincipal(IGestorCliente g, IGestorButacas gb, IGestorFunciones f, IGestorFacturas gesfac, IGestorPeliculas gp, bool esAdmin, Cliente c)
        {
            InitializeComponent();
            gecliente = g;
            gestorfunciones = f;
            this.esAdmin = esAdmin;
            cliente = c;
            gestorfac = gesfac;
            gestorbut = gb;
            this.gp = gp;
        }

        private void ClickCerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }



        private void clickMaximizar_Click(object sender, EventArgs e)
        {

            this.WindowState = FormWindowState.Maximized;
            clickMaximizar.Visible = false;
            clickRestaurar.Visible = true;
        }

        private void clickRestaurar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Normal;
            clickMaximizar.Visible = true;
            clickRestaurar.Visible = false;
        }

        private void ClickMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnReportes_Click(object sender, EventArgs e)
        {
            subMenuReportes.Visible = true;
            subMenuArchivo.Visible = false;
            subMenuSoporte.Visible = false;
            subMenuAcercaDe.Visible = false;
            subMenuTransaccion.Visible = false;
        }
        private void btnRegistros_Click(object sender, EventArgs e)
        {
            subMenuReportes.Visible = false;
            FormReportesRegistros formReportesRegistros = new FormReportesRegistros();
            formReportesRegistros.Show();
        }



        private void btnArchivo_Click(object sender, EventArgs e)
        {
            subMenuArchivo.Visible = true;
            subMenuSoporte.Visible = false;
            subMenuAcercaDe.Visible = false;
            subMenuReportes.Visible = false;
            subMenuTransaccion.Visible = false;
        }
        private void btnSalir_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnSoporte_Click(object sender, EventArgs e)
        {
            subMenuSoporte.Visible = true;
            subMenuAcercaDe.Visible = false;
            subMenuArchivo.Visible = false;
            subMenuReportes.Visible = false;
            subMenuTransaccion.Visible = false;
            pnlConsultas.Visible = false;
        }
        private void btnClientes_Click(object sender, EventArgs e)
        {
            if (esAdmin)
            {
                subMenuSoporte.Visible = false;

                FormSoporteClientes formSoporteClientes = new FormSoporteClientes(gecliente, cliente);
                formSoporteClientes.Show();
            }
            else
                MessageBox.Show("Debe ser administrador para tener acceso al soporte de clientes de la aplicación", "Soporte", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }




        private void btnTransaccion_Click(object sender, EventArgs e)
        {
            subMenuTransaccion.Visible = true;
            subMenuAcercaDe.Visible = false;
            subMenuArchivo.Visible = false;
            subMenuReportes.Visible = false;
            subMenuSoporte.Visible = false;
            pnlConsultas.Visible = false;
        }

        private void btnFactura_Click(object sender, EventArgs e)
        {
            subMenuTransaccion.Visible = false;

            //FormTransaccionFactura formTransaccionFactura = new FormTransaccionFactura();
            //formTransaccionFactura.Show();
        }



        private void btnAcercaDe_Click(object sender, EventArgs e)
        {
            subMenuAcercaDe.Visible = true;
            subMenuArchivo.Visible = false;
            subMenuReportes.Visible = false;
            subMenuSoporte.Visible = false;
            subMenuTransaccion.Visible = false;
            pnlConsultas.Visible = false;
        }
        private void btnIntegrantes_Click(object sender, EventArgs e)
        {
            Integrantes.Visible = true;
            panProfesor.Visible = false;
        }
        private void btnProfesor_Click(object sender, EventArgs e)
        {
            panProfesor.Visible = true;
            Integrantes.Visible = false;

        }

        private void label1_Click(object sender, EventArgs e)
        {
            panProfesor.Visible = true;
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
        private void AbrirReservar(Pelicula Pelicula)
        {
            FormReservar f = new FormReservar(gestorbut, Pelicula, gestorfunciones, gestorfac,cliente,new Facturas());
            f.ShowDialog();
        }

        private void PicSpiderman_Click(object sender, EventArgs e)
        {
            Pelicula p = new Pelicula();
            p.ID = 1;
            AbrirReservar(p);

        }

        private void PicLJDH_Click(object sender, EventArgs e)
        {
            Pelicula p = new Pelicula();
            p.ID = 4;
            AbrirReservar(p);
        }

        private void PicTrols3_Click(object sender, EventArgs e)
        {
            Pelicula p = new Pelicula();
            p.ID = 3;
            AbrirReservar(p);
        }

        private void PicMonja_Click(object sender, EventArgs e)
        {
            Pelicula p = new Pelicula();
            p.ID = 2;
            AbrirReservar(p);
        }

        private void btnConsultas_Click(object sender, EventArgs e)
        {

            subMenuAcercaDe.Visible = false;
            subMenuArchivo.Visible = false;
            subMenuReportes.Visible = false;
            subMenuSoporte.Visible = false;
            subMenuTransaccion.Visible = false;
            pnlConsultas.Visible = true;
            /*FormConsultaIngresos f=new FormConsultaIngresos(gestorfac);
            f.ShowDialog();*/
            //FormConsultaClienteMedio f = new FormConsultaClienteMedio(gecliente, gestorfac);
            //f.ShowDialog();
        }

        private void btnClienteMedio_Click(object sender, EventArgs e)
        {
            FormConsultaClienteMedio f = new FormConsultaClienteMedio(gecliente, gestorfac);
            f.ShowDialog();
        }

        private void btnPeliculasVistas_Click(object sender, EventArgs e)
        {
            FormPeliculas p = new FormPeliculas(gp);
            p.ShowDialog();
        }

        private void btnIngresoLapsoDias_Click(object sender, EventArgs e)
        {
            FormConsultaIngresos I = new FormConsultaIngresos(gestorfac);
            I.ShowDialog();
        }

        private void btnFuncionHoraDia_Click(object sender, EventArgs e)
        {
            FormButacasDisponibles HD = new FormButacasDisponibles(gestorbut);
            HD.ShowDialog();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
            pictureBox1.BringToFront();
            ReleaseCapture();
            SendMessage(this.Handle, 0x0112, 0xf012, 0);
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel2_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x0112, 0xf012, 0);
        }
    }
}
