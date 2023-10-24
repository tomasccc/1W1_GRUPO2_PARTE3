using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.DATOS
{
    internal class DBHelper
    {
        private SqlConnection conexion;

        private string cadena = "Data Source=DESKTOP-KFQ7MV9\\SQLEXPRESS;Initial Catalog=cine;Integrated Security=True";
        private static DBHelper instancia;

        /*CONEXIONES DE TODOS:
         * TOMI= Data Source=DESKTOP-KFQ7MV9\SQLEXPRESS;Initial Catalog=cine;Integrated Security=True
         
         */

        private DBHelper()
        {
            conexion = new SqlConnection(cadena);
        }

        public static DBHelper ObtenerInstancia()
        {
            if (instancia == null)
            {
                instancia = new DBHelper();
            }
            return instancia;
        }

        private void Conectar()
        {
            conexion.Open();
        }

        private void Desconectar()
        {
            conexion.Close();
        }

        public SqlConnection ObtenerConexion() {
            return conexion;
        }

        public DataTable Consultar(string nombreSP, List<Parametro> lParams)
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = nombreSP;
            foreach (Parametro p in lParams)
            {
                comando.Parameters.AddWithValue(p.Name, p.Value);
            }
            DataTable tabla = new DataTable();
            tabla.Load(comando.ExecuteReader());
            conexion.Close();
            return tabla;
        }
    }

    
}
