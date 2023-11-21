using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.ENTIDADES
{
    public class Estado
    {
       
        private string descripcion;

        public Estado( string descripcion)
        {
            this.Descripcion = descripcion;
        }

        public string Descripcion { get => descripcion; set => descripcion = value; }

        public Estado()
        {
            descripcion = string.Empty;
        }

        public override string ToString()
        {
            return descripcion;
        }

    }
}
