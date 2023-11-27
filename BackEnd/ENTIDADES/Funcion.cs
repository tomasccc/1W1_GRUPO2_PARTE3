using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.ENTIDADES
{
    public class Funcion
    {
        public int IdPelicula { get; set; }
        public int Id { get; set; }
        public int IdSala { get; set; }
        public int IdtipoSala { get; set; }
        public DateTime fecha { get; set; }
        public string hora { get; set; }
        public Funcion()
        {
            
        }
    }
}
