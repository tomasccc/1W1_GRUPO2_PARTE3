namespace WebApi.Controllers.DTO
{
    public class CrearUsuarioDTO
    {
        public string nombre { get; set; }
        public string telefono { get; set; }
        public string apellido { get; set; }
        public string contraseña { get; set; }
        public string email { get; set; }
        public DateTime fechanac { get; set; }
    }
}
