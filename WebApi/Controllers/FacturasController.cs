using _1W1_GRUPO2_PARTE3.ENTIDADES;
using BackEnd.FABRICA;
using BackEnd.INTERFACES;
using Microsoft.AspNetCore.Mvc;
using WebApi.Controllers.DTO;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FacturasController : Controller
    {
        IGestorFacturas gf;
     
        public FacturasController()
        {
            gf=new FactoryServicioImp().CrearGestorFacturas();
        }

        [HttpPost("CargarMediosPago")]
        public IActionResult PostCargarMediosPago(CargarComboMediosPagoDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un objeto!");
            }
            return Ok(gf.TraerMedioPago(c.nombretabla));
        }

        [HttpPost("InsertarFactura")]
        public IActionResult PostGrabarFactura(FacturaGrabarDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere una factura!");
            }
            Facturas f = new Facturas();
            f.id_cliente = c.idcliente;
            f.id_medio_pago = c.idmediopago;
            f.detalles = c.lstDetalles;
            f.fecha=c.fecha;
            return Ok(gf.GrabarFactura(f));
        }
    }
}
