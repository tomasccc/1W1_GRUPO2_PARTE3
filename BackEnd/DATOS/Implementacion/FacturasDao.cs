using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.DATOS
{
    internal class FacturasDao : IFacturasDao
    {
        public bool EditarFacturas(List<Parametro> l)
        {
            int afectadas = DBHelper.ObtenerInstancia().Actualizar("SP_EDITAR_FACTURAS", l);
            if (afectadas > 0)
            {
                return true;
            }
            else
            { return false; }
        }

        public bool EliminarFactura(int id)
        {
            List<Parametro> lista = new List<Parametro> { new Parametro("@id", id) };
            int afectadas = DBHelper.ObtenerInstancia().Actualizar("SP_eliminar_factura", lista);
            if (afectadas > 0)
            {
                return true;
            }
            else
            { return false; }
        }

        public DataTable TraerFacturas(string nom, string ape)
        {
            List<Parametro> list = new List<Parametro>();
            list.Add(new Parametro("@nom", nom));
            list.Add(new Parametro("@ape", ape));
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar(@"sp_cargar_factura",list);
            return tabla;
        }

        public DataTable EjecutarIngresosXDia(DateTime diadesde,DateTime diahasta)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("@diadesde", diadesde));
            parametros.Add(new Parametro("@diahasta", diahasta));
            return DBHelper.ObtenerInstancia().Consultar("SP_INGRESOS_POR_DIA",parametros);
        }

        public DataTable TraerIdUsuario(string usuario)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("@usuario", usuario));
            DataTable table=new DataTable();
            table= DBHelper.ObtenerInstancia().Consultar("SP_traer_id_cliente",parametros);
            return table;
        }

        public DataTable TraerMedioPago(string nt)
        {
            DataTable tabla=new DataTable();
            tabla=DBHelper.ObtenerInstancia().ConsultarTabla(nt);
            return tabla;
        }

        public DataTable VerificarMail(string usuario)
        {
            List<Parametro> parametros = new List<Parametro>();
            parametros.Add(new Parametro("@mail", usuario));
            DataTable tabla = DBHelper.ObtenerInstancia().Consultar("SP_VERIFICAR_MAIL", parametros);
                return tabla;
            
        }

        public int GrabarFactura(Facturas f)
        {
            int nro_factura = 0;
            bool resultado = false;
            SqlTransaction trans;
            trans = null;
            SqlConnection cnn = DBHelper.ObtenerInstancia().ObtenerConexion();

            try
            {
                cnn.Open();
                trans = cnn.BeginTransaction();
                SqlCommand comando = new SqlCommand();
                comando.Connection = cnn;
                comando.CommandType = CommandType.StoredProcedure;
                comando.Transaction = trans;
                comando.Parameters.Clear();
                comando.CommandText = "SP_INSERTAR_MAESTRO";
                comando.Parameters.AddWithValue("@id_medio_pago", f.id_medio_pago);
                comando.Parameters.AddWithValue("@id_cliente", f.id_cliente);
                comando.Parameters.AddWithValue("@fecha", f.fecha);

                SqlParameter para = new SqlParameter();
                para.ParameterName = "@id_factura";
                para.SqlDbType = SqlDbType.Int;
                para.Direction = ParameterDirection.Output;
                comando.Parameters.Add(para);
                comando.ExecuteNonQuery();
                nro_factura = (int)para.Value;


                SqlCommand cmd1;

                int nro_detalle = 1;
                foreach (DetalleFactura det in f.detalles)
                {
                    cmd1 = new SqlCommand("SP_INSERTAR_DETALLE_2", cnn, trans);
                    cmd1.Connection = cnn;
                    cmd1.Transaction = trans;
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@id_factura", nro_factura);
                    cmd1.Parameters.AddWithValue("@monto", det.Monto);
                    cmd1.Parameters.AddWithValue("@id_funcion", det.Id_funcion);
                    cmd1.Parameters.AddWithValue("@id_butaca", det.Id_butaca);
                    cmd1.ExecuteNonQuery();
                    nro_detalle++;
                }

                trans.Commit();
                resultado = true;

            }
            catch
            {
                if (trans != null)
                {
                    trans.Rollback();
                    resultado = false;
                    throw;
                }
            }
            finally
            {
                if (cnn != null && cnn.State == ConnectionState.Open)
                {
                    cnn.Close();

                }
            }

            if (resultado)
            {
                return nro_factura;
            }
            else
                return 0;
        }
    }
}
