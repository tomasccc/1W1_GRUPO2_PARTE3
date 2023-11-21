
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using BackEnd.DATOS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.INTERFACES
{
    internal interface IFacturasDao
    {
        DataTable TraerFacturas(string nom,string ape);
        bool EliminarFactura(int id);
        DataTable TraerIdUsuario(string usuario);
        DataTable VerificarMail(string usuario);
        bool EditarFacturas(List<Parametro> l);
        DataTable TraerMedioPago(string nt);
        DataTable EjecutarIngresosXDia(DateTime diadesde, DateTime diahasta);
        bool GrabarFactura(Facturas f);
    }
}
