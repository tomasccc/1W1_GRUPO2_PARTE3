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

        public DataTable ConsultarBD(string sp, List<Parametro> l)
        {
            return DBHelper.ObtenerInstancia().Consultar(sp, l);
        }

        public DataTable TraerBD(string sp)
        {
            return DBHelper.ObtenerInstancia().ConsultarTabla(sp);
        }
    }
}
