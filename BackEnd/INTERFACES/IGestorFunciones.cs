using BackEnd.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.INTERFACES
{
    public interface IGestorFunciones
    {
        List<Funcion> TraerFecha(int idpelicula);
        List<string> TraerHorario(int idp, string fecha);

        int TraerIDFuncion(int idp,DateTime fecha,string horario);

        List<string> TraerTiposSala(string fecha,string hora);
    }
}
