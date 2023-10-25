using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1W1_GRUPO2_PARTE3.ENTIDADES
{
    public class Cliente
    {
        public int ID { get; set; }
        public int telefono { get; set; }
        public DateTime fechanac { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string contraseña { get; set; }
        public string email { get; set; }

        public Cliente()
        {

        }
    }
}
