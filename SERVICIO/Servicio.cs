using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace _1W1_GRUPO2_PARTE3.SERVICIO
{
    public class Servicio : IServicio
    {
        IClienteDAO dao;
        public Servicio() {
            dao= new ClienteDAO();
        }

        public bool ExisteCliente(List<Parametro> list)
        {
            return dao.ExisteCliente(list);
        }

        public Cliente TraerCLiente(List<Parametro> list)
        {
            DataTable tabla = dao.TraerCliente(list);
            Cliente cliente = new Cliente();
            foreach (DataRow r in tabla.Rows)
            {
                int id = int.Parse(r["id_cliente"].ToString());
                string nom = r["nombre"].ToString();
                string ape = r["apellido"].ToString();
                string email = r["mail"].ToString();
                int tel = int.Parse(r["nro_tel"].ToString());
                DateTime fechanac = DateTime.Parse(r["fecha_nac"].ToString());
                string contra = r["contraseña"].ToString();
                cliente.ID = id;
                cliente.nombre = nom;
                cliente.email = email;
                cliente.contraseña = contra;
                cliente.apellido = ape;
                cliente.telefono = tel;
                cliente.fechanac = fechanac;
            }
            return cliente;
        }
        public int RegistrarCliente(List<Parametro> list)
        {
            return dao.RegistrarCliente(list);
        }

        public List<Funcion> TraerFunciones(int id)
        {
            DataTable dt=dao.TraerFunciones(id);
            List<Funcion> lista=new List<Funcion>();
            foreach (DataRow r in dt.Rows)
            {
                Funcion funcion = new Funcion();
                int idfuncion = int.Parse(r["id_funcion"].ToString());
                int idpelicula = int.Parse(r["id_pelicula"].ToString());
                int idsala = int.Parse(r["id_sala"].ToString());
                DateTime horario = DateTime.Parse(r["horario"].ToString());
                DateTime fecha = DateTime.Parse(r["fecha"].ToString());
                funcion.Id = idfuncion;
                funcion.hora = horario;
                funcion.fecha = fecha;
                funcion.IdSala = idsala;
                funcion.IdPelicula = idpelicula;
                lista.Add(funcion);
            }
            return lista;
        }
    }
}
