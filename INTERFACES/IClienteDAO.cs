using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.INTERFACES
{
    internal interface IClienteDAO
    {
        bool ExisteCliente(List<Parametro> parametros);
        int RegistrarCliente(List<Parametro> list);
        DataTable TraerCliente(List<Parametro> list);
        DataTable TraerFunciones(int idpelicula);
    }
}
