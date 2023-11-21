using _1W1_GRUPO2_PARTE3.ENTIDADES;
using _1W1_GRUPO2_PARTE3.SERVICIO;
using BackEnd.INTERFACES;
using BackEnd.SERVICIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.FABRICA
{
    public class FactoryServicioImp : FactoryServicio
    {
        public override IGestorButacas CrearGestorButacas()
        {
            return new GestorButacas();
        }

        public override IGestorCliente CrearGestorCliente()
        {
            return new GestorrCliente();
        }

        public override IGestorFacturas CrearGestorFacturas()
        {
            return new GestorFacturas();
        }

        public override IGestorFunciones CrearGestorFuncion()
        {
            return new GestorFunciones();
        }

        public override IGestorPeliculas CrearGestorPeliculas()
        {
            return new GestorPeliculas();
        }


    }
}
