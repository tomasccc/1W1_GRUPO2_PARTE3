using BackEnd.DATOS;
using BackEnd.DATOS.Implementacion;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.SERVICIO
{
    public class GestorFunciones:IGestorFunciones
    {
        IFuncionesDAO fDAO;
        public GestorFunciones()
        {
            fDAO=new FuncionesDAO();
        }

        public List<Funcion> TraerFunciones(int id)
        {
            /*DataTable dt=funcionesDAO.TraerFunciones(int id);*/
            List<Funcion> funciones = new List<Funcion>();/*
            foreach (DataRow dr in dt.Rows)
            {
                Funcion f = new Funcion();
                f.IdPelicula = dr["fila"].ToString();
                list.Add(butacas);
            }*/
            return funciones;
            

        }

        public List<Funcion> TraerFecha(int idpelicula)
        {
            List<Funcion> f = new List<Funcion>();
            DataTable dt = fDAO.TraerFechas(idpelicula);
            foreach (DataRow r in dt.Rows)
            {
                Funcion funcion = new Funcion();
                funcion.Id = (int)r["id_funcion"];
                funcion.fecha = Convert.ToDateTime(r["fecha"].ToString());
                funcion.IdtipoSala = (int)r["id_tipo_sala"];
                funcion.IdSala = (int)r["id_sala"];
                f.Add(funcion);
            }
            return f;
        }

        public List<string> TraerHorario(int idFuncion, string fecha)
        {
            List<string> strings = new List<string>();
            DataTable dt = fDAO.TraerHorarios(idFuncion, fecha);
            foreach (DataRow r in dt.Rows)
            {
                DateTime horario = DateTime.Parse(r["horario"].ToString());
                string formatoHorario = horario.ToString("HH:mm");
                strings.Add(formatoHorario);
            }
            return strings;
        }

        public int TraerIDFuncion(int idp, DateTime fecha, string horario)
        {
            int id=0;
            DataTable dt=fDAO.TraerIDFuncion(idp,fecha,horario);
            if (dt.Rows.Count != 1)
            {
                return 0;
            }
            else
            {
                foreach (DataRow r in dt.Rows)
                {
                    id = Convert.ToInt32(r["id_funcion"]);
                }
            }
           
            return id;
        }

        public List<string> TraerTiposSala(string fecha, string hora)
        {
            List<string> strings = new List<string>();
            List<Parametro> lst = new List<Parametro>();
            lst.Add(new Parametro("@fec",Convert.ToDateTime(fecha)));
            lst.Add(new Parametro("@hor",hora));
            DataTable dt= fDAO.Traer(lst,"SP_CARGAR_TIPOSSALA");
            foreach (DataRow r in dt.Rows)
            {
                strings.Add(r["descripcion"].ToString());
            }
            return strings;
        }
    }
}
