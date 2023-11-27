using System;
using System.Net.Http;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApi.Controllers.DTO;
using System.Net.Http.Json;
using System.Reflection.Metadata;
using BackEnd.ENTIDADES;
using Newtonsoft.Json;
using FrontEnd.DTO;
using System.Data;

namespace FrontEnd.CLIENTE
{
    class ClienteSingleton
    {
        private static ClienteSingleton instancia;
        private HttpClient client;
        private ClienteSingleton()
        {
            client = new HttpClient();
        }

        public static ClienteSingleton getInstance()
        {
            if (instancia == null)
            {
                instancia = new ClienteSingleton();
            }
            return instancia;
        }

        public async Task<string> GetJSONAsync(string url)
        {
            var result = await client.GetAsync(url);
            var content = "";
            if (result.IsSuccessStatusCode)
                content = await result.Content.ReadAsStringAsync();
            return content;
        }

        public async Task<string> GetAsync(string url)
        {
            var result = await client.GetAsync(url);
            var content = "";
            if (result.IsSuccessStatusCode)
                content = await result.Content.ReadAsStringAsync();
            return content;
        }

        public async Task<string> PostAsync(string url, string data)
        {
            StringContent content = new StringContent(data, Encoding.UTF8,
            "application/json");
            var result = await client.PostAsync(url, content);
            var response = "";
            if (result.IsSuccessStatusCode)
                response = await result.Content.ReadAsStringAsync();
            return response;
        }


        //crear usuario
        public async Task<int> PostCrearUsuarioAsync(string url, Cliente data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                int result = JsonConvert.DeserializeObject<int>(jsonResponse);
                return result;

            }
            return 0;
        }

        public async Task<List<Cliente>> PostConsultarClienteAsyncDTO(string url, ConsultarClienteDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                List<Cliente> result = JsonConvert.DeserializeObject<List<Cliente>>(jsonResponse);
                return result;

            }
            return null;
        }

        public async Task<Cliente> PostConsultarClienteAsync(string url, TraerVerificarClienteDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                Cliente result = JsonConvert.DeserializeObject<Cliente>(jsonResponse);
                return result;

            }
            return null;
        }

        public async Task<int> PostRegistrarClienteAsync(string url, CrearUsuarioDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                int result = JsonConvert.DeserializeObject<int>(jsonResponse);
                return result;

            }
            return 0;
        }

        public async Task<bool> PostVerificarClienteAsync(string url, TraerVerificarClienteDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                bool result = JsonConvert.DeserializeObject<bool>(jsonResponse);
                return result;

            }
            return false;
        }

        public async Task<bool> PostVerificarMailAsync(string url,ClienteVerificarMailDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                bool result = JsonConvert.DeserializeObject<bool>(jsonResponse);
                return result;
            }
            return false;
        }

        public async Task<bool> PutEditarClienteAsync(string url, Cliente data)
        {
            HttpResponseMessage response = await client.PutAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                bool result = JsonConvert.DeserializeObject<bool>(jsonResponse);
                return result;

            }
            return false;
        }

        public async Task<bool> PutBorrarUsuarioAsync(string url, BorrarUsuarioDTO data)
        {
            HttpResponseMessage response = await client.PutAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {

                string jsonResponse = await response.Content.ReadAsStringAsync();
                bool result = JsonConvert.DeserializeObject<bool>(jsonResponse);
                return result;

            }
            return false;
        }

        public async Task<List<Funcion>> PostCargarComboFechaAsync(string url, CargarFuncionesDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                List<Funcion> result = JsonConvert.DeserializeObject<List<Funcion>>(jsonResponse);
                return result;
            }
            return null;
        }

        public async Task<List<string>> PostCargarComboHorarioAsync(string url, CargarHorariosDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                List<string> result = JsonConvert.DeserializeObject<List<string>>(jsonResponse);
                return result;
            }
            return null;
        }

        public async Task<int> PostTraerIdFuncionAsync(string url, TraerIDFuncionDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                int result = JsonConvert.DeserializeObject<int>(jsonResponse);
                return result;
            }
            return 0;
        }

        public async Task<List<Butaca>> PostTraerButacasAsync(string url, TraerButacasDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                List<Butaca> result = JsonConvert.DeserializeObject<List<Butaca>>(jsonResponse);
                return result;
            }
            return null;
        }

        public async Task<List<MedioPago>> PostCargarMediosPagoAsync(string url, CargarComboMediosPagoDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                List<MedioPago> result = JsonConvert.DeserializeObject<List<MedioPago>>(jsonResponse);
                return result;
            }
            return null;
        }

        public async Task<int> PostGrabarFacturaAsync(string url, FacturaGrabarDTO data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                int result = JsonConvert.DeserializeObject<int>(jsonResponse);
                return result;
            }
            return 0;
        }

        public async Task<List<string>> PostCargarTiposSalaAsync(string url, object data)
        {
            HttpResponseMessage response = await client.PostAsJsonAsync(url, data);
            if (response.IsSuccessStatusCode)
            {
                string jsonResponse = await response.Content.ReadAsStringAsync();
                List<string> result = JsonConvert.DeserializeObject<List<string>>(jsonResponse);
                return result;
            }
            return null;
        }

        public async Task<string> DeleteAsync(string url)
        {
            var result = await client.DeleteAsync(url);
            var content = "";
            if (result.IsSuccessStatusCode)
                content = await result.Content.ReadAsStringAsync();
            return content;
        }

    }
}
