using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.DATOS.Implementacion
{
    public class FuncionesDAO : IFuncionesDAO
    {

        public DataTable TraerFechas(int idFuncion)
        {

            List<Parametro> list = new List<Parametro>();
            Parametro p = new Parametro("id", idFuncion);
            list.Add(p);
            DataTable dt = DBHelper.ObtenerInstancia().Consultar("SP_TRAER_FECHAS", list);
            return dt;
        }

        public DataTable TraerHorarios(int idFuncion, string fecha)
        {
            List<Parametro> list = new List<Parametro>();
            list.Add(new Parametro("id", idFuncion));
            list.Add(new Parametro("fec", fecha));

            DataTable dt = DBHelper.ObtenerInstancia().Consultar("SP_TRAER_HORARIOS", list);
            return dt;
        }

        public DataTable TraerIDFuncion(int idp, DateTime fecha, string horario)
        {
            List<Parametro> list = new List<Parametro>();
            list.Add(new Parametro("@idp", idp));
            list.Add(new Parametro("@fecha", fecha));
            list.Add(new Parametro("@horario", horario));

            DataTable dt = DBHelper.ObtenerInstancia().Consultar("SP_TRAER_ID_FUNCION", list);
            return dt;
        }
    }
}
