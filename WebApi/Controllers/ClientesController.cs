using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using BackEnd.DATOS.Implementacion;
using BackEnd.DATOS;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using BackEnd.FABRICA;
using WebApi.Controllers.DTO;
using System.Collections;
using FrontEnd.DTO;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClientesController : ControllerBase
    {
        private IGestorCliente g;

        public ClientesController()
        {
            g = new FactoryServicioImp().CrearGestorCliente();
        }

        
        //cambiar

        // POST api/<ClientesController>
        [HttpPost("consultar")]
        public IActionResult Clientes(ConsultarClienteDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere una lista de parámetros!");
            }
            List<Parametro> list = new List<Parametro>();
            list.Add(new Parametro("@nombre", c.nombre));
            list.Add(new Parametro("@apellido", c.apellido));
            list.Add(new Parametro("@email", c.email));
            list.Add(new Parametro("@telefono", c.telefono.ToString()));
            return Ok(g.TraerCLientes(list));
        }

        [HttpPost("CrearUsuario")]
        public IActionResult PostCrearUsuario(CrearUsuarioDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un cliente!");
            }
            List<Parametro> list = new List<Parametro>();
            list.Add(new Parametro("@nombre", c.nombre));
            list.Add(new Parametro("@apellido", c.apellido));
            list.Add(new Parametro("@mail", c.email));
            list.Add(new Parametro("@nro_tel", c.telefono));
            list.Add(new Parametro("@fecha_nac", c.fechanac));
            list.Add(new Parametro("@contraseña", c.contraseña));
            return Ok(g.RegistrarCliente(list));
        }

        // GET api/<ClientesController>
        [HttpPost("ConsultarCliente")]
        public IActionResult PostTraer(TraerVerificarClienteDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un cliente!");
            }
            List<Parametro> lista = new List<Parametro>();
            lista.Add(new Parametro("@usuario", c.usuario));
            lista.Add(new Parametro("@contra", c.contraseña));
            return Ok(g.TraerCLiente(lista));
        }

        [HttpPost("VerificarCliente")]
        public IActionResult PostVerificar(TraerVerificarClienteDTO c)
        {
            if (c==null)
            {
                return BadRequest("Se requiere un cliente!");
            }
            List<Parametro> lista = new List<Parametro>();
            lista.Add(new Parametro("@usuario", c.usuario));
            lista.Add(new Parametro("@contra", c.contraseña));
            return Ok(g.ExisteCliente(lista));
        }

        [HttpPut("EditarCliente")]
        public IActionResult PutEditar(Cliente c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un cliente!");
            }
            List<Parametro> lista = new List<Parametro>();
            lista.Add(new Parametro("@id", c.ID));
            lista.Add(new Parametro("@nombre", c.nombre));
            lista.Add(new Parametro("@apellido", c.apellido));
            lista.Add(new Parametro("@mail", c.email));
            lista.Add(new Parametro("@tel", c.telefono));
            lista.Add(new Parametro("@fechanac", c.fechanac));
            lista.Add(new Parametro("@contra", c.contraseña));
            return Ok(g.EditarCliente(lista));
        }

        [HttpPost("VerificarMail")]
        public IActionResult PostVerificarMail(ClienteVerificarMailDTO c)
        {
            if (c == null)
            {
                return BadRequest("Se requiere un cliente!");
            }
            List<Parametro> lista = new List<Parametro>();
            lista.Add(new Parametro("@usu", c.usuario));
            return Ok(g.VerificarMail(lista));
        }

        [HttpPut("BorrarUsuario")]
        public IActionResult PutBorrar(BorrarUsuarioDTO i)
        {
            if (i == null)
            {
                return BadRequest("Se requiere un cliente!");
            }
            List<Parametro> lista = new List<Parametro>();
            return Ok(g.BorrarUsuario(i.id));
        }


        // DELETE api/<ClientesController>
        //  [HttpDelete("{Id}")]
        /* public IActionResult Delete(int id)
         {
             if (id == null || id == 0)
             {
                 return BadRequest("Se requiere un valor no nulo para el id del cliente!");
             }
             //return Ok(g.TraerCLiente(id));
         }*/





    } 
}
