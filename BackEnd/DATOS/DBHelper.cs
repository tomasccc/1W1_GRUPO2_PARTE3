using BackEnd.ENTIDADES;
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
using SqlTransaction = System.Data.SqlClient.SqlTransaction;

namespace BackEnd.DATOS;

internal class DBHelper
{
    private SqlConnection conexion;
    private SqlCommand comando;

    private string cadena = "Data Source=DESKTOP-KFQ7MV9\\SQLEXPRESS;Initial Catalog=cine11;Integrated Security=True";
    private static DBHelper instancia;


    /*CONEXIONES DE TODOS:
     * TrustServerCertificate=true
     * TOMI= Data Source=DESKTOP-KFQ7MV9\SQLEXPRESS;Initial Catalog=cine;Integrated Security=True
     * ISAI= Data Source=DESKTOP-SUGL625\SQLEXPRESS;Initial Catalog=cine;Integrated Security=True
     * FEfo= Data Source=DESKTOP-CJB4O4H;Initial Catalog=cine;Integrated Security=True
     * EUGE = Data Source=DESKTOP-R20PV8M;Initial Catalog=cine_2;Integrated Security=True
     */
//    insert into clientes
//values('fofo','fefe','fofo','3331415','06-02-2020','fofo')
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

    public void Conectar()
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
    public DataTable ConsultarTabla(string nombreTabla) 
    {
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();
        comando.Connection = conexion;
        Conectar();
        comando.CommandText = "SELECT * FROM " + nombreTabla;
        tabla.Load(comando.ExecuteReader());
        Desconectar();
        return tabla;
    }
    public int Actualizar(string consultaSQL,List<Parametro> parametros) 
    {
        int filasAfectadas = 0;
        SqlTransaction transaccion = null;
        try
        {
            Conectar();
            transaccion = conexion.BeginTransaction();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Transaction= transaccion;
            comando.Parameters.Clear();
            foreach (Parametro p in parametros)
            {
                comando.Parameters.AddWithValue(p.Name, p.Value);
            }
            comando.CommandText = consultaSQL;
            filasAfectadas=comando.ExecuteNonQuery();
            if (filasAfectadas>0)
                transaccion.Commit();
        }
        catch (SqlException)
        {
            transaccion.Rollback();
        }
        finally
        {
            if (conexion != null && conexion.State == ConnectionState.Open)
            {
                Desconectar();
            }
        }
        return filasAfectadas;

    }
    public DataTable Consultar(string nombreSP, List<Parametro> lParams)
    {
        SqlCommand comando = new SqlCommand();
        comando.Connection = conexion;
        comando.CommandType = CommandType.StoredProcedure;
        comando.CommandText = nombreSP;
        Conectar();
        foreach (Parametro p in lParams)
        {
            comando.Parameters.AddWithValue(p.Name, p.Value);
        }
        DataTable tabla = new DataTable();
        tabla.Load(comando.ExecuteReader());
        Desconectar();
        return tabla;
    }

    public DataTable Consultar(string nombreSP)
    {
        SqlCommand comando = new SqlCommand();
        comando.Connection = conexion;
        comando.CommandType = CommandType.StoredProcedure;
        comando.CommandText = nombreSP;
        Conectar();

        DataTable tabla = new DataTable();
        tabla.Load(comando.ExecuteReader());
        Desconectar();
        return tabla;
    }




    /*public int Consultar(string nombreSP, List<Parametro> lParams)
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
        int afectadas=comando.ExecuteNonQuery();
        conexion.Close();
        return afectadas;
    }*/

}


