using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using BackEnd.DATOS.Implementacion;
using Microsoft.AspNetCore.Mvc;
using BackEnd.FABRICA;
using BackEnd.DATOS;
using WebApi.Controllers.DTO;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FuncionesController : ControllerBase
    {
        IGestorFunciones gf;
       
        public FuncionesController()
        {
            gf = new FactoryServicioImp().CrearGestorFuncion();
        }

        [HttpPost("CargarFechas")]
        public IActionResult PostCargarFechas(CargarFuncionesDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gf.TraerFecha(c.idpelicula));
        }

        [HttpPost("CargarHorarios")]
        public IActionResult PostCargarHorarios(CargarHorariosDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gf.TraerHorario(c.Idpelicula,c.fecha));
        }
        
        [HttpPost("TraerIdFuncion")]
        public IActionResult PostIdFuncion(TraerIDFuncionDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gf.TraerIDFuncion(c.idp, Convert.ToDateTime(c.fecha),c.horario));
        }


    }
}
