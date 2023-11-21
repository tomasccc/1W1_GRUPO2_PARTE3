using BackEnd.DATOS;
using BackEnd.DATOS.Implementacion;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
//using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace BackEnd.SERVICIO
{
    public class GestorrCliente : IGestorCliente
    {
        IClienteDAO dao;
        public GestorrCliente() {
            dao= new ClienteDAO();
        }

        public bool ExisteCliente(List<Parametro> list)
        {
            DataTable dt= dao.TraerCliente(list);
            if(dt.Rows.Count>0)
                return true;
            else return false;
        }
        public bool VerificarMail(List<Parametro> lñ)
        {
            DataTable dt = dao.VerificarMail(lñ);
            if (dt.Rows.Count >0)
            {
                return false;
            }
            return true;
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
                string tel = r["nro_tel"].ToString();
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

        public List<Cliente> TraerCLientes(List<Parametro> list)
        {
            DataTable tabla = dao.TraerClientes(list);
            List<Cliente> c=new List<Cliente>();
            foreach (DataRow r in tabla.Rows)
            {
            
                Cliente cliente = new Cliente();
                int id = int.Parse(r["id_cliente"].ToString());
                string nom = r["nombre"].ToString();
                string ape = r["apellido"].ToString();
                string email = r["mail"].ToString();
                string tel = r["nro_tel"].ToString();
                DateTime fechanac = DateTime.Parse(r["fecha_nac"].ToString());
                string contra = r["contraseña"].ToString();
                cliente.ID = id;
                cliente.nombre = nom;
                cliente.email = email;
                cliente.contraseña = contra;
                cliente.apellido = ape;
                cliente.telefono = tel;
                cliente.fechanac = fechanac;
                c.Add(cliente);
            }
            return c;
        }

        public bool BorrarUsuario(int id)
        {
            return dao.BorrarUsuario(id);
        }

        public bool EditarCliente(List<Parametro> l)
        {
            return dao.EditarCliente(l);
        }

        public DataTable EjecutarClientesMedioP(List<Parametro> lparmas)
        {
            return dao.EjecutarClientesMedioP(lparmas);
        }
    }
}
