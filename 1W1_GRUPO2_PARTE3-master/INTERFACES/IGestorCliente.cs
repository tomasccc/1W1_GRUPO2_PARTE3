using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.INTERFACES
{
    public interface IGestorCliente
    {
        bool ExisteCliente(List<Parametro> liust);

        Cliente TraerCLiente();
    }
}
