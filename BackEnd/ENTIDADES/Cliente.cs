using BackEnd.DATOS;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace BackEnd.ENTIDADES
{
    public class Cliente
    {

        public int ID { get; set; }
        public string nombre { get; set; }
        public string telefono { get; set; }
        public string apellido { get; set; }
        public string contraseña { get; set; }
        public string email { get; set; }
        public DateTime fechanac { get; set; }

        
    }
}
