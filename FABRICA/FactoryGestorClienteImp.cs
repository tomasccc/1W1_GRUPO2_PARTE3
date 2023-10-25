using _1W1_GRUPO2_PARTE3.INTERFACES;
using _1W1_GRUPO2_PARTE3.SERVICIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.FABRICA
{
    internal class FactoryGestorClienteImp : FactoryGestorCliente
    {
        public override IGestorCliente CrearGestorCliente()
        {
            return new GestorCliente();
        }
    }
}
