using BackEnd.DATOS;
using BackEnd.DATOS.Implementacion;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.SERVICIO
{
    public class GestorPeliculas:IGestorPeliculas
    {
        IPeliculasDAO dao;
        public GestorPeliculas()
        {
            dao = new PeliculasDAO();
        }

        public DataTable ConsultarBD(string sp, List<Parametro> a)
        {
            return dao.ConsultarBD(sp, a);
        }


        public DataTable TraerBD(string sp)
        {
            return dao.TraerBD(sp);
        }

    }
}
