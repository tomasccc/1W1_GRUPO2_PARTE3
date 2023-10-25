using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.SERVICIO
{
    public class GestorCliente : IGestorCliente
    {
        IClienteDAO dao;
        public GestorCliente() {
            dao= new ClienteDAO();
        }

        public bool ExisteCliente(List<Parametro> list)
        {
            return dao.ExisteCliente(list);
        }

        public Cliente TraerCLiente()
        {
            throw new NotImplementedException();
        }
    }
}
