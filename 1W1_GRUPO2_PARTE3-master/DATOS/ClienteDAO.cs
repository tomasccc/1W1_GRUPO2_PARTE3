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

      
    }
}
