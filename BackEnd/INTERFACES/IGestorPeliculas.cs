using BackEnd.DATOS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.INTERFACES
{
    public interface IGestorPeliculas
    {
        DataTable ConsultarBD(string sp, List<Parametro> a);
        DataTable TraerBD(string sp);

    }
}
