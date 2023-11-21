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
    public interface IGestorCliente
    {
        bool ExisteCliente(List<Parametro> liust);
        int RegistrarCliente(List<Parametro> list);
        Cliente TraerCLiente(List<Parametro> lius);

        List<Cliente> TraerCLientes(List<Parametro> lius);

        List<Funcion> TraerFunciones(int id);
        bool EditarCliente(List<Parametro> l);
        bool BorrarUsuario(int id);

        DataTable EjecutarClientesMedioP(List<Parametro> lparmas);
        bool VerificarMail(List<Parametro> lista2);
    }
}
