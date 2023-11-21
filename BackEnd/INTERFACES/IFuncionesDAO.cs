using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.INTERFACES
{
    public interface IFuncionesDAO
    {
        DataTable TraerFechas(int id);
        DataTable TraerHorarios(int id, string fec);

        DataTable TraerIDFuncion(int idp, DateTime fecha, string horario);

    }
}
