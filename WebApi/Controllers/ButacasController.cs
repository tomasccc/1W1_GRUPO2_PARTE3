using BackEnd.FABRICA;
using BackEnd.INTERFACES;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApi.Controllers.DTO;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ButacasController : Controller
    {
        IGestorButacas gb;
        public ButacasController()
        {
            gb = new FactoryServicioImp().CrearGestorButacas();
        }

        [HttpPost("TraerButacas")]
        public IActionResult PostTraerButacas(TraerButacasDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gb.TraerButacas(c.idfuncion));
        }
    }
}
