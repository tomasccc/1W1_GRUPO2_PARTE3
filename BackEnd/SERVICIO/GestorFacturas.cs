using _1W1_GRUPO2_PARTE3.DATOS;
using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.INTERFACES;
using BackEnd.DATOS;
using BackEnd.ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.SERVICIO
{
    public class GestorFacturas : IGestorFacturas
    {
        IFacturasDao fdao;

        public GestorFacturas()
        {
            fdao = new FacturasDao();
        }

        public bool GrabarFactura(Facturas f)
        {
            return fdao.GrabarFactura(f);
        }

        public DataTable EjecutarIngresosXDia(DateTime diadesde,DateTime diahasta)
        {
            return fdao.EjecutarIngresosXDia(diadesde,diahasta);
        }

        public bool EditarFactura(List<Parametro> l)
        {
            if (fdao.EditarFacturas(l))
            {
                return true;
            }
            return false;
        }

        public bool EliminarFactura(int id)
        {
            return fdao.EliminarFactura(id);
        }

        public List<Facturas> TraerFacturas(string nom, string ape)
        {
            List<Facturas> lstfacturas = new List<Facturas>();
            DataTable tabla = fdao.TraerFacturas(nom, ape);
            foreach (DataRow dr in tabla.Rows)
            {
                Facturas f = new Facturas();
                f.nombre = dr["nombre"].ToString();
                f.apellido = dr["apellido"].ToString();
                f.tipoVentadesc = (dr["tipo_venta"].ToString());
                f.medio_pago = dr["id_medio_pago"].ToString();
                f.idFactura = Convert.ToInt32(dr["id_factura"]);
                f.fecha = Convert.ToDateTime(dr["fecha"]);
                lstfacturas.Add(f);
            }

            return lstfacturas;
        }

        public int TraerIdCliente(string usuario)
        {
            int id = 0;
            DataTable tabla = fdao.TraerIdUsuario(usuario);
            foreach (DataRow dr in tabla.Rows)
            {

               id = Convert.ToInt32(dr["id_cliente"]);
            }
            return id ;
        }

        public List<MedioPago> TraerMedioPago(string nt)
        {
            DataTable tabla= fdao.TraerMedioPago(nt);
            List<MedioPago> lst = new List<MedioPago>();
            foreach (DataRow dr in tabla.Rows)
            {
                MedioPago m= new MedioPago();
                m.Id= (int)dr["id_medio_pago"];
                m.Medio= dr["descripcion"].ToString();
                lst.Add(m);
            }
            return lst;
        }

        public DataTable TraerMediosPago()
        {
            throw new NotImplementedException();
        }

        public bool VerificarMail(string usuario)
        {
            DataTable dt = fdao.VerificarMail(usuario);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }
    }
}
