using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.ENTIDADES
{
    internal class tiket
    {
        private int id_tiket;
        private int id_funcion;
        private int id_butaca;

        public tiket(int id_tiket, int id_funcion, int id_butaca)
        {
            this.Id_tiket = id_tiket;
            this.Id_funcion = id_funcion;
            this.Id_butaca = id_butaca;
        }

        public int Id_tiket { get => id_tiket; set => id_tiket = value; }
        public int Id_funcion { get => id_funcion; set => id_funcion = value; }
        public int Id_butaca { get => id_butaca; set => id_butaca = value; }
        public tiket() 
        {
            Id_tiket = 0;
            Id_funcion = 0;
            Id_butaca = 0;
        }
        public override string ToString()
        {
            return id_funcion.ToString()+' '+id_butaca;
        }
    }
}
