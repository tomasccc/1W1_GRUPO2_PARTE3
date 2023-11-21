using BackEnd.ENTIDADES;

namespace WebApi.Controllers.DTO
{
    public class FacturaGrabarDTO
    {
        public int idcliente { get; set; }
        public int idmediopago { get; set; }
        public DateTime fecha { get; set; }
        public List<DetalleFactura> lstDetalles { get; set;}
    }
}
