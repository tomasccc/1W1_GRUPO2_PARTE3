using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.DATOS.Implementacion
{
    public class PeliculasDAO:IPeliculasDAO
    {

        public PeliculasDAO() { }


        public bool BorrarPelicula(int id)
        {
            List<Parametro> lista = new List<Parametro>();
            lista.Add(new Parametro("@id", id));
            int afectadas = DBHelper.ObtenerInstancia().Actualizar("SP_BORRAR_PELICULA", lista);
            if (afectadas > 0)
            {
                return true;
            }
            else
            { return false; }
        }
        public bool EditarPelicula(List<Parametro> l)
        {
            int afectadas = DBHelper.ObtenerInstancia().Actualizar("SP_EDITAR_PELICULA", l);
            if (afectadas > 0)
            {
                return true;
            }
            else
            { return false; }
        }

        public DataTable ConsultarBD(string sp, List<Parametro> l)
        {
            return DBHelper.ObtenerInstancia().Consultar(sp, l);
        }

        public DataTable TraerBD(string sp)
        {
            return DBHelper.ObtenerInstancia().ConsultarTabla(sp);
        }
        public DataTable TraerPeliculas(List<Parametro> a)
        {
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_BUSCAR_PELICULAS", a);
            return tabla;
        }
    }
}
