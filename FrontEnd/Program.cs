using BackEnd.FABRICA;
using BackEnd.SERVICIO;
using FrontEnd.PRESENTACION;

namespace FrontEnd
{
    internal static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // To customize application configuration such as set high DPI settings or default font,
            // see https://aka.ms/applicationconfiguration.
            ApplicationConfiguration.Initialize();
           // Application.Run(new FormPrincipal(new GestorrCliente(),new GestorFunciones(),new bool(),new BackEnd.ENTIDADES.Cliente()));
            Application.Run(new FormLogin(new FactoryServicioImp()));
            //Application.Run(new FormReservar(new GestorButacas(),new Pelicula(),new GestorFunciones()));
        }
    }
}