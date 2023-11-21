using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.DATOS
{
    public class Parametro
    {
        public string Name { get; set; }
        public object Value { get; set; }

        public Parametro(string name, object valor)
        {
            Name=name;
            Value=valor;
        }
    }
}
