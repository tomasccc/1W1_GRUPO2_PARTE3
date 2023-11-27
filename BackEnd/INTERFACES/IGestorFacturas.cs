using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.ENTIDADES
{
    public interface IGestorFacturas
    {
        DataTable TraerMediosPago();
        List<Facturas> TraerFacturas(string nom, string ape);
        bool EliminarFactura(int id);
        int TraerIdCliente(string usuario);
        bool VerificarMail(string usuario);
        bool EditarFactura(List<Parametro> l);
        List<MedioPago> TraerMedioPago(string nt);
        DataTable EjecutarIngresosXDia(DateTime diadesde,DateTime diahasta);
        int GrabarFactura(Facturas f);
    }
}
