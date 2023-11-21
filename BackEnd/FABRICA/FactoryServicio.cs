using _1W1_GRUPO2_PARTE3.ENTIDADES;
using BackEnd.INTERFACES;
using BackEnd.SERVICIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.FABRICA
{
    public abstract class FactoryServicio
    {
        public abstract IGestorCliente CrearGestorCliente();

        public abstract IGestorFunciones CrearGestorFuncion();
        public abstract IGestorFacturas CrearGestorFacturas();
        public abstract IGestorButacas CrearGestorButacas();

        public abstract IGestorPeliculas CrearGestorPeliculas();
    }
}
