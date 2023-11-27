using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.ENTIDADES
{
    public class Pelicula
    {
        public int ID { get; set; }
        public string Idioma { get; set; }
        public string Nombre { get; set; }
        public string Categoria { get; set; }
        public string Director { get; set; }
        public int Duracion { get; set; }
        public DateTime FechaEstreno { get; set; }
        public Pelicula()
        {
            ID = 0;
            Idioma = string.Empty;
            Nombre = string.Empty;
            Categoria = string.Empty;
            Director = string.Empty;
            Duracion = 0;
            FechaEstreno = DateTime.MinValue;

        }
    }
}
