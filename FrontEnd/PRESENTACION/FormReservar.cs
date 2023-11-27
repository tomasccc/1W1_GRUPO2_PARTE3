using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using _1W1_GRUPO2_PARTE3.SERVICIO;
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
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WebApi.Controllers.DTO;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar;
using Button = System.Windows.Forms.Button;

namespace _1W1_GRUPO2_PARTE3.PRESENTACION
{
    public partial class FormReservar : Form
    {
        object[] arregloDeObjetos;
        IGestorButacas gestor;
        IGestorFunciones gestorf;
        IGestorFacturas gestorfac;
        List<DateTime> fechas;
        List<Funcion> funciones;
        Pelicula p;
        Funcion funcion;
        List<Butaca> butacasreservadas;
        List<Butaca> listab;
        DateTime fechaDet, horarioDet;
        Cliente c;
        Facturas nueva;
        public FormReservar(IGestorButacas g, Pelicula p, IGestorFunciones fu, IGestorFacturas gestorfac, Cliente c, Facturas nueva)
        {
            InitializeComponent();
            gestor = g;
            this.p = p;
            gestorf = fu;
            CargarFunciones(p.ID);
            this.gestorfac = gestorfac;
            butacasreservadas = new List<Butaca>();
            listab = new List<Butaca>();
            this.c = c;
            funcion = new Funcion();
            this.nueva = nueva;
            panel1.SendToBack();
        }

        private void FormReservar_Load(object sender, EventArgs e)
        {

        }

        private DateTime EncontrarFecha()
        {
            DateTime d = new DateTime();
            foreach (Funcion f in funciones)
            {
                if (f.fecha.ToString() == cboFunciones.SelectedItem.ToString())
                {
                    d = f.fecha; break;
                }
            }
            return d;
        }


        private async void CargarFunciones(int idpelicula)
        {
            CargarFuncionesDTO c = new CargarFuncionesDTO();
            c.idpelicula = idpelicula;
            string url = "https://localhost:7214/api/Funciones/CargarFechas";
            List<Funcion> resultado = await ClienteSingleton.getInstance().PostCargarComboFechaAsync(url, c);
            fechas = new List<DateTime>();
            if (resultado == null)
            {
                return;

            }
            else
                funciones = resultado;
            foreach (Funcion f in resultado)
            {
                fechas.Add(Convert.ToDateTime(f.fecha));
            }

            cboFunciones.DropDownStyle = ComboBoxStyle.DropDownList;
            //cboFunciones.DataSource = fechas;
            cboFunciones.Items.Clear();
            HashSet<DateTime> elementosUnicos = new HashSet<DateTime>(fechas);
            fechas.Clear();
            fechas.AddRange(elementosUnicos);
            arregloDeObjetos = elementosUnicos.Cast<object>().ToArray();
            cboFunciones.Items.AddRange(arregloDeObjetos);
        }

        private async void CargarHorarios(int idpelicula)
        {
            CargarHorariosDTO cargarHorariosDTO = new CargarHorariosDTO();
            cargarHorariosDTO.Idpelicula = idpelicula;
            cargarHorariosDTO.fecha = cboFunciones.SelectedItem.ToString();
            string url = "https://localhost:7214/api/Funciones/CargarHorarios";
            List<string> resultado = await ClienteSingleton.getInstance().PostCargarComboHorarioAsync(url, cargarHorariosDTO);
            cboHorario.DataSource = resultado;
            cboHorario.DropDownStyle = ComboBoxStyle.DropDownList;


        }

        private async void CargarTiposSala()
        {
            CargarTiposSalaDTO dto = new CargarTiposSalaDTO();
            dto.fecha = cboFunciones.SelectedItem.ToString();
            dto.hora = cboHorario.SelectedItem.ToString();
            string url = "https://localhost:7214/api/Funciones/CargarTiposSala";
            List<string> resultado = await ClienteSingleton.getInstance().PostCargarTiposSalaAsync(url, dto);
            cboTipoSala.DataSource = resultado;
            cboTipoSala.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void cboFunciones_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboTipoSala.Enabled = true;
            CargarTiposSala();
        }


        public async void CargarButacas(int idFuncion)
        {
            listab.Clear();
            TraerButacasDTO dto = new TraerButacasDTO();
            dto.idfuncion = idFuncion;
            string url = "https://localhost:7214/api/Butacas/TraerButacas";
            List<Butaca> resultado = await ClienteSingleton.getInstance().PostTraerButacasAsync(url, dto);
            listab = resultado;
            fechaDet = Convert.ToDateTime(cboFunciones.SelectedItem);
            horarioDet = Convert.ToDateTime(cboHorario.SelectedItem);

            int posicionX = 810;
            int posicionY = 87;
            int c = 1;
            foreach (Butaca elemento in listab)
            {
                Button nuevoBoton = new Button
                {
                    Text = elemento.columna.ToString(),
                    Location = new System.Drawing.Point(posicionX, posicionY),
                    Size = new System.Drawing.Size(32, 32),
                    Name = elemento.fila + elemento.columna,
                    ForeColor = Color.White
                };
                if (elemento.estado == 1)
                {
                    nuevoBoton.BackColor = Color.Green;
                }
                if (elemento.estado == 2)
                {
                    nuevoBoton.BackColor = Color.Red;
                }
                Controls.Add(nuevoBoton);

                posicionY = posicionY + 52;
                if (posicionY > 347)
                {
                    posicionY = 87;
                    if (posicionX == 762 || posicionX == 526)
                    {
                        posicionX = posicionX - 92;
                    }
                    else
                    {
                        posicionX = posicionX - 48;
                    }
                    c++;
                }

            }
            AsignarClickATodosLosBotones();
            panel1.SendToBack();
        }




        private void AsignarClickATodosLosBotones()
        {
            foreach (Control control in Controls)
            {
                if (control is Button boton)
                {
                    boton.Click += TodosLosBotones_Click;
                }
            }
        }



        private void TodosLosBotones_Click(object sender, EventArgs e)
        {
            if (sender is Button botonPresionado &&
       botonPresionado != btnPantalla &&
       botonPresionado != btnSiguiente && botonPresionado.BackColor != Color.Red)
            {
                if (botonPresionado.BackColor == Color.Green)
                {
                    botonPresionado.BackColor = Color.Yellow;
                    botonPresionado.ForeColor = Color.Black;
                }
                else
                {
                    if (botonPresionado.BackColor == Color.Yellow)
                    {
                        botonPresionado.BackColor = Color.Green;
                        botonPresionado.ForeColor = Color.White;
                    }
                }
            }

        }


        private void btnC7_Click(object sender, EventArgs e)
        {

        }


        private void button1_Click(object sender, EventArgs e)
        {


        }

        private void GuardarButacasReservadas()
        {
            foreach (Butaca b in listab)
            {
                string nombre = b.fila + b.columna.ToString();
                foreach (Control bot in Controls)
                {
                    if (bot is Button)
                    {
                        if (bot.Name == nombre && bot.BackColor == Color.Yellow)
                        {
                            butacasreservadas.Add(b);
                        }
                    }
                }

            }
        }

        private bool Validar()
        {
            if (cboHorario.SelectedIndex == -1)
            {
                MessageBox.Show("Debe seleccionar un horario de función", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (cboFunciones.SelectedIndex == -1)
            {
                MessageBox.Show("Debe seleccionar una función", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (butacasreservadas.Count == 0)
            {
                MessageBox.Show("No puede avanzar al formulario de compra sin reservar alguna butaca", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }

        //BOTON BUSCAR BUTACAS
        private async void button1_Click_1(object sender, EventArgs e)
        {
            if (cboHorario.SelectedIndex != -1 || cboFunciones.SelectedIndex != -1)
            {
                TraerIDFuncionDTO traerid = new TraerIDFuncionDTO();
                traerid.idp = p.ID;
                traerid.fecha = cboFunciones.SelectedItem.ToString();
                traerid.horario = cboHorario.SelectedItem.ToString();

                string url = "https://localhost:7214/api/Funciones/TraerIdFuncion";
                int resultado = await ClienteSingleton.getInstance().PostTraerIdFuncionAsync(url, traerid);
                if (resultado != 0)
                {

                    funcion = EncontrarFuncion();
                    BorrarBotones();
                    CargarButacas(funcion.Id);
                }
                else
                    MessageBox.Show("No se encontró una función con la fecha y horario ingresados", "Buscar", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            else
                MessageBox.Show("Debe seleccionar un horario y fecha para buscar butacas", "Buscar", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private Funcion EncontrarFuncion()
        {
            foreach (Funcion f in funciones)
            {
                int tiposala;
                if (cboTipoSala.SelectedItem.ToString() == "2D")
                {
                    tiposala = 1;
                }
                else
                {
                    if (cboTipoSala.SelectedItem.ToString() == "3D")
                    {
                        tiposala = 2;
                    }
                    else
                        tiposala = 0;
                }
                if (f.fecha.ToString() == cboFunciones.SelectedItem.ToString())
                {
                    if (f.IdtipoSala == tiposala)
                    {
                        f.hora = cboHorario.SelectedItem.ToString();
                        return f;
                    }

                }
            }
            return null;
        }

        private void BorrarBotones()
        {
            foreach (Control control in this.Controls)
            {
                if (control is Button && control.Name != "btnVolver" && control.Name != "btnPantalla" && control.Name != "btnBuscar"
                    && control.Name != "btnSiguiente")
                {
                    this.Controls.Remove(control);
                }
            }
        }
        private void cboFunciones_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (cboFunciones.SelectedIndex != -1 || cboFunciones.SelectedIndex != 0)
            {
                cboHorario.Enabled = true;
                CargarHorarios(p.ID);
            }
        }

        private void btnPantalla_Click(object sender, EventArgs e)
        {

        }

        private void btnSiguiente_Click(object sender, EventArgs e)
        {

            butacasreservadas.Clear();
            GuardarButacasReservadas();
            if (Validar())
            {
                FormCompra f = new FormCompra(p, gestorfac, butacasreservadas, nueva, c, funcion, this);
                f.ShowDialog();
            }
        }

        /* private Funcion EncontrarFuncion()
         {
             foreach (Funcion f in funciones)
             {
                 int tiposala=0;
                 if (cboTipoSala.SelectedItem.ToString() == "2D")
                 {
                     tiposala = 1;
                 }
                 else
                 {
                     if (cboTipoSala.SelectedItem.ToString()=="3D")
                     {
                         tiposala = 2;
                     }
                 }

                 if (f.fecha.ToString() == cboFunciones.SelectedItem.ToString() && f.IdtipoSala==tiposala)
                 {
                     funcion= f;
                     break;
                 }
             }
             return funcion;
         }*/

        private void btnRegresar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnD8_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void cboTipoSala_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint_1(object sender, PaintEventArgs e)
        {

        }
    }
}

