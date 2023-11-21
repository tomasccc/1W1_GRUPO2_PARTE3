using BackEnd.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.ENTIDADES
{
    public class Facturas
    {
        public List<DetalleFactura> detalles;
        public string nombre { get; set; }
        public string apellido { get; set; }
        public int idFactura { get; set; }
        public int id_medio_pago { get; set; }
        public string medio_pago { get; set; }
        public int tipoVenta { get; set; }
        public string tipoVentadesc { get; set; }
        public DateTime fecha { get; set; }
        public int id_cliente { get; set; }

        public Facturas()
        {
            nombre = string.Empty;
            apellido = string.Empty;
            idFactura = 0;
            tipoVenta = 0;
            fecha = DateTime.Now;
            id_medio_pago = 0;
            id_cliente = 0;

        }
    }
}
