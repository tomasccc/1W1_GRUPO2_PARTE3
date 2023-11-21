using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SqlCommand = System.Data.SqlClient.SqlCommand;
using SqlConnection = System.Data.SqlClient.SqlConnection;
using SqlException = System.Data.SqlClient.SqlException;
using SqlParameter = System.Data.SqlClient.SqlParameter;
using SqlTransaction = System.Data.SqlClient.SqlTransaction;

namespace BackEnd.DATOS.Implementacion
{
    public class ClienteDAO : IClienteDAO
    {
        public bool BorrarUsuario(int id)
        {
            List<Parametro> lista = new List<Parametro> { new Parametro("id", id) };
            int afectadas = DBHelper.ObtenerInstancia().Actualizar("SP_BORRAR_USUARIO", lista);
            if (afectadas > 0)
            {
                return true;
            }
            else
            { return false; }
        }

        public bool EditarCliente(List<Parametro> l)
        {
            int afectadas = DBHelper.ObtenerInstancia().Actualizar("SP_EDITAR_CLIENTE", l);
            if (afectadas > 0)
            {
                return true;
            }
            else
            { return false; }
        }

        public DataTable EjecutarClientesMedioP(List<Parametro> lparmas)
        {
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_CLIENTES_MEDIO", lparmas);
            return tabla;
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
                SqlCommand cmd = new SqlCommand("SP_INSERTAR_CLIENTE", conexion, transaccion);
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
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_VERIFICAR_CLIENTE", list);
            return tabla;
        }

        public DataTable VerificarMail(List<Parametro> l)
        {
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_VERIFICAR_MAIL", l);
            return tabla;
        }

        public DataTable TraerClientes(List<Parametro> list)
        {
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_BUSCAR_CLIENTES", list);
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
