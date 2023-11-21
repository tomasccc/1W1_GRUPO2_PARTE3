using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.ENTIDADES
{
    public class Butaca
    {
        public int id { get; set; }
        public int columna { get; set; }
        public string fila { get; set; }
        public int estado { get; set; }

        public Butaca(int id_butaca, int e, int columna, string fila)
        {
            this.id = id_butaca;
            this.columna = columna;
            this.fila = fila;
            estado = e;
        }

        public Butaca()
        {
            
        }


        public override string ToString()
        {
            return id +' '+columna+' '+fila;
        }

    }
}
