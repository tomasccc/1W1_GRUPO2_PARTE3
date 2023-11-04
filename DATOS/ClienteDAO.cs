using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.DATOS
{
    internal class ClienteDAO:IClienteDAO
    {
        public bool ExisteCliente(List<Parametro> parametros)
        {
            SqlConnection con= DBHelper.ObtenerInstancia().ObtenerConexion();
            SqlCommand cmd = new SqlCommand("SP_EXISTE_CLIENTE",con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            foreach (Parametro parametro in parametros)
            {
                cmd.Parameters.AddWithValue(parametro.Name, parametro.Value);
            }
            int afectadas=cmd.ExecuteNonQuery();
            con.Close();
            if (afectadas > 0)
            {
                return true;
            }else
            { return false; }
        }

        public int RegistrarCliente(List<Parametro> list)
        {
            int idcliente = 0;
            SqlTransaction transaccion = null;
            SqlConnection conexion = DBHelper.ObtenerInstancia().ObtenerConexion();
            try
            {
                conexion.Open();
                transaccion = conexion.BeginTransaction();
                SqlCommand cmd = new SqlCommand("SP_INSERTAR_CLIENTE", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@id_cliente", SqlDbType.Int);
                param.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(param);
                foreach (Parametro parametro in list)
                {
                    cmd.Parameters.AddWithValue(parametro.Name, parametro.Value);
                }
                int afectadas = cmd.ExecuteNonQuery();
                idcliente = (int)param.Value;
                if (afectadas > 0)
                {
                    transaccion.Commit();
                }
                else
                {
                    transaccion.Rollback();
                }
            }
            catch (SqlException)
            {
                transaccion.Rollback();
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                {
                    conexion.Close();
                }
            }
            return idcliente;
        }

        public DataTable TraerCliente(List<Parametro> list)
        {
            Cliente cliente = new Cliente();
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_CONSULTAR_MATERIALES",list);
            return tabla;
        }

        public DataTable TraerFunciones(int idpelicula)
        {
            Cliente cliente = new Cliente();
            List<Parametro> list = new List<Parametro>();
            list.Add(new Parametro("@id_pelicula", idpelicula));
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_CONSULTAR_MATERIALES", list);
            return tabla;
        }
    }
}
