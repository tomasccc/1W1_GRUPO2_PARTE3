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
        }

        private void FormReservar_Load(object sender, EventArgs e)
        {

        }

        private DateTime EncontrarFecha()
        {
            DateTime d = new DateTime();
            foreach (DateTime f in fechas)
            {
                if (f.ToString() == cboFunciones.SelectedItem.ToString())
                {
                    d = f; break;
                }
            }
            return d;
        }


        private async void CargarFunciones(int idpelicula)
        {
            CargarFuncionesDTO c = new CargarFuncionesDTO();
            c.idpelicula = idpelicula;
            string url = "https://localhost:7214/api/Funciones/CargarFechas";
            List<DateTime> resultado = await ClienteSingleton.getInstance().PostCargarComboFechaAsync(url, c);

            if (resultado == null)
            {


            }
            else
                fechas = resultado;

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

        private void cboFunciones_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

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

            int posicionX = 684;
            int posicionY = 59;
            int c = 1;
            foreach (Butaca elemento in listab)
            {
                Button nuevoBoton = new Button
                {
                    Text = elemento.columna.ToString(),
                    Location = new System.Drawing.Point(posicionX, posicionY),
                    Size = new System.Drawing.Size(29, 29),
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

                posicionY = posicionY + 39;
                if (posicionY > 255)
                {
                    posicionY = 59;
                    if (posicionX == 441 || posicionX == 643)
                    {
                        posicionX = posicionX - 79;
                    }
                    else
                    {
                        posicionX = posicionX - 41;
                    }
                    c++;
                }

            }
            AsignarClickATodosLosBotones();

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
                funcion.Id = resultado;
                if (resultado != 0)
                {
                    BorrarBotones();
                    CargarButacas(resultado);
                }
                else
                    MessageBox.Show("No se encontró una función con la fecha y horario ingresados", "Buscar", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            else
                MessageBox.Show("Debe seleccionar un horario y fecha para buscar butacas", "Buscar", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
                FormCompra f = new FormCompra(p, gestorfac, butacasreservadas, fechaDet, horarioDet, nueva, c, funcion, this);
                f.ShowDialog();
            }
        }

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
    }
}

