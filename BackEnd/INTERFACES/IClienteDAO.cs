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
    public interface IClienteDAO
    {
        int RegistrarCliente(List<Parametro> list);
        DataTable TraerCliente(List<Parametro> list);
        DataTable TraerClientes(List<Parametro> list);
        DataTable TraerFunciones(int idpelicula);

        bool EditarCliente(List<Parametro> l);

        bool BorrarUsuario(int id);

        DataTable EjecutarClientesMedioP(List<Parametro> lparmas);
        DataTable VerificarMail(List<Parametro> lñ);
    }
}
