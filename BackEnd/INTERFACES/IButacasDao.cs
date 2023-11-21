using BackEnd.DATOS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.INTERFACES
{
    public interface IButacasDao
    {
        DataTable TraerButacas(int idFuncion);
        DataTable TraerFunciones(string nt);
        DataTable TraerFecha(int idpelicula);
        DataTable CargarDataGrid(List<Parametro> ls);
    }
}
