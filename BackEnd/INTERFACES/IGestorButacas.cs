using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.INTERFACES
{
    public interface IGestorButacas
    {
        List<Butaca> TraerButacas(int idFuncion);
        DataTable TraerFunciones(string nt);
        List<DateTime> TraerFecha(int idpelicula);
        DataTable CargarDataGrid(List<Parametro> ls);




    }
}
