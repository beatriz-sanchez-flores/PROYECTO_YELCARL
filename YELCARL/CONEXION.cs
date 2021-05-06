using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace YELCARL
{
    class CONEXION
    {

        //C<adena de conexióN
        string cadena = "Data source=LAPTOP-JQJNVT0F\\SQLEXPRESS01;Initial Catalog=YELCARL; Integrated Security=True";
        //Crear conexión public
        public SqlConnection conectarbd = new SqlConnection();
        //Agregar constructor
        public CONEXION()
        {
            conectarbd.ConnectionString = cadena; //Objeto creado
        }

        //Crear metodo para abrir y cerrar conexión
        public void abrir()
        {   //Sección para capturar errores
            try
            {   //Intentar abrir conexión
                conectarbd.Open();
                Console.WriteLine("Conexión abierta ");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al abrir BD " + ex.Message);
            }
        }
        //Procedimiento a cerrar
        public void cerrar()
        {
            conectarbd.Close();
        }
    }
}
