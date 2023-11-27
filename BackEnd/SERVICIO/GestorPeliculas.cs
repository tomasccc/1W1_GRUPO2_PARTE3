using BackEnd.DATOS;
using BackEnd.DATOS.Implementacion;
using BackEnd.ENTIDADES;
using BackEnd.INTERFACES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.SERVICIO
{
    public class GestorPeliculas:IGestorPeliculas
    {
        IPeliculasDAO dao;
        public GestorPeliculas()
        {
            dao = new PeliculasDAO();
        }

        public DataTable ConsultarBD(string sp, List<Parametro> a)
        {
            return dao.ConsultarBD(sp, a);
        }


        public DataTable TraerBD(string sp)
        {
            return dao.TraerBD(sp);
        }

        public List<Pelicula> TraerPeliculas(List<Parametro> list)
        {
            DataTable tabla = dao.TraerPeliculas(list);
            List<Pelicula> p = new List<Pelicula>();
            foreach (DataRow r in tabla.Rows)
            {

                Pelicula peli = new Pelicula();
                int id = int.Parse(r["id_pelicula"].ToString());
                string nom = r["nombre"].ToString();
                string idioma = r["descripcion"].ToString();
                string cat = r["categoria"].ToString();
                string dire = r["director"].ToString();
                int dur = int.Parse(r["duracion"].ToString());
                DateTime fecEstreno = DateTime.Parse(r["fec_estreno"].ToString());
                peli.ID = id;
                peli.Nombre = nom;
                peli.Categoria = cat;
                peli.Idioma = idioma;
                peli.Director = dire;
                peli.Duracion = dur;
                peli.FechaEstreno = fecEstreno;
                p.Add(peli);
            }
            return p;
        }

        public bool BorrarPelicula(int id)
        {
            return dao.BorrarPelicula(id);
        }
        public bool EditarPelicula(List<Parametro> l)
        {
            return dao.EditarPelicula(l);
        }

        public Pelicula TraerPelicula(List<Parametro> a)
        {
            throw new NotImplementedException();
        }
    }
}
