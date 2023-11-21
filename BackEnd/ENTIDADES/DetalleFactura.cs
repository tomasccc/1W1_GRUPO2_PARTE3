using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.ENTIDADES
{
    public class DetalleFactura
    {
        private int id_detalle;
        private int id_factura;
        private double monto;
        private int id_descuento;
        private int id_tipo_publico;
        private int id_funcion;
        private int id_butaca;

        public DetalleFactura(int id_detalle, int id_tiket, int id_factura, double monto, int id_descuento, int id_tipo_publico,int id_funcion,int id_butaca)
        {
            this.Id_detalle = id_detalle;
            this.Id_factura = id_factura;
            this.Monto = monto;
            this.Id_descuento = id_descuento;
            this.Id_tipo_publico = id_tipo_publico;
            this.id_funcion = id_funcion;
            this.Id_butaca = id_butaca;
        }

        public int Id_detalle { get => id_detalle; set => id_detalle = value; }
        public int Id_factura { get => id_factura; set => id_factura = value; }
        public double Monto { get => monto; set => monto = value; }
        public int Id_descuento { get => id_descuento; set => id_descuento = value; }
        public int Id_tipo_publico { get => id_tipo_publico; set => id_tipo_publico = value; }
        public int Id_butaca { get => id_butaca; set => id_butaca = value; }
        public int Id_funcion { get => id_funcion; set => id_funcion = value; }



        public DetalleFactura()
        {
            Id_detalle = 0;
            Id_factura = 0;
            Monto = 0;
            Id_descuento = 0;
            Id_tipo_publico = 0;
            Id_funcion = 0;
            Id_butaca = 0;
        }

        public override string ToString()
        {
            return id_detalle.ToString();
        }
    }
}
