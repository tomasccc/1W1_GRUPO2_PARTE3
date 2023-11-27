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

        //cargar fechas con GET
        [HttpGet("CargarFechas")]
        public IActionResult GetCargarFechas([FromQuery] CargarFuncionesDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }

            return Ok(gf.TraerFecha(c.idpelicula));
        }

        //cargar fechas con POST
        [HttpPost("CargarFechas")]
        public IActionResult PostCargarFechas(CargarFuncionesDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gf.TraerFecha(c.idpelicula));
        }
        //cargar Horarios con Get
        [HttpGet("CargarHorarios")]
        public IActionResult GetCargarHorarios([FromQuery] CargarHorariosDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula y fecha válidos.");
            }

            return Ok(gf.TraerHorario(c.Idpelicula, c.fecha));
        }
        //cargar Horarios con POST
        [HttpPost("CargarHorarios")]
        public IActionResult PostCargarHorarios(CargarHorariosDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gf.TraerHorario(c.Idpelicula, c.fecha));
        }


        //TRAER ID CON GET
        [HttpGet("TraerIdFuncion")]
        public IActionResult GetIdFuncion([FromQuery] TraerIDFuncionDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula, fecha y horario válidos.");
            }

            return Ok(gf.TraerIDFuncion(c.idp, Convert.ToDateTime(c.fecha), c.horario));
        }


        //TRAER ID CON POST
        [HttpPost("TraerIdFuncion")]
        public IActionResult PostIdFuncion(TraerIDFuncionDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un id_pelicula!");
            }
            return Ok(gf.TraerIDFuncion(c.idp, Convert.ToDateTime(c.fecha), c.horario));
        }

        //cargar tiposala con GET
        [HttpGet("CargarTiposSala")]
        public IActionResult GetCargarTiposSala([FromQuery] CargarTiposSalaDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un objeto!");
            }

            return Ok(gf.TraerTiposSala(c.fecha, c.hora));
        }

        //cargar tiposala con POST
        [HttpPost("CargarTiposSala")]
        public IActionResult PostCargarTiposSala(CargarTiposSalaDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un objeto!");
            }
            return Ok(gf.TraerTiposSala(c.fecha, c.hora));
        }


    }
}
