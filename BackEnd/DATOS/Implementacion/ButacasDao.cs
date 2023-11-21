using BackEnd.DATOS;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BackEnd.DATOS.Implementacion;

namespace BackEnd.DATOS.Implementacion;

public class ButacasDao : IButacasDao
{
    public ButacasDao() { }
    public DataTable TraerButacas(int idFuncion)
    {
        DataTable tabla = new DataTable();
        List<Parametro> list = new List<Parametro>();
        Parametro p = new Parametro("id_funcion", idFuncion);

        list.Add(p);
        tabla = DBHelper.ObtenerInstancia().Consultar("sp_traer_butacas", list);
        return tabla;

    }
    public DataTable CargarDataGrid(List<Parametro> ls)
    {
        DataTable dt = new DataTable();
        dt = DBHelper.ObtenerInstancia().Consultar("SP_BUTACASDISP2", ls);
        return dt;
    }

    public DataTable TraerFecha(int idpelicula)
    {
        List<Parametro> list = new List<Parametro>();
        Parametro p = new Parametro("id_pelicula", idpelicula);
        list.Add(p);
        DataTable dt = DBHelper.ObtenerInstancia().Consultar("SP_CARGAR_COMBO_FECHA", list);
        return dt;
    }

    public DataTable TraerFunciones(string nt)
    {
        List<Parametro> ls = new List<Parametro>();

        DataTable tabla = new DataTable();
        tabla = DBHelper.ObtenerInstancia().Consultar("SP_CARGAR_COMBO_FUNCION");
        return tabla;
    }
}
