using BackEnd.DATOS;
using BackEnd.DATOS.Implementacion;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.SERVICIO
{
    public class GestorButacas : IGestorButacas
    {
        ButacasDao oBD=new ButacasDao();
        public List<Butaca> TraerButacas(int idFuncion)
        {
            List<Butaca> list = new List<Butaca>();
            DataTable dt = oBD.TraerButacas(idFuncion);
            foreach (DataRow dr in dt.Rows)
            {
                Butaca butacas = new Butaca();
                butacas.fila = dr["fila"].ToString();
                butacas.columna = Convert.ToInt32(dr["columna"]);
                butacas.estado = Convert.ToInt32(dr["id_estado"]);
                butacas.id = Convert.ToInt32(dr["id_butaca"]);
                list.Add(butacas);
            }
            return list;
        }


        public DataTable CargarDataGrid(List<Parametro> ls)
        {
            DataTable dt = new DataTable();
            dt = oBD.CargarDataGrid(ls);
            return dt;
        }

        public List<DateTime> TraerFecha(int idpelicula)
        {
            List<DateTime> fechas = new List<DateTime>();
            DataTable dt = oBD.TraerFecha(idpelicula);
            foreach (DataRow r in dt.Rows)
            {
                DateTime fecha = DateTime.Parse(r["fecha"].ToString());
                fechas.Add(fecha);
            }
            return fechas;
        }

        public DataTable TraerFunciones(string nt)
        {
            DataTable tabla = oBD.TraerFunciones(nt);
            return tabla;
        }




    }
}
