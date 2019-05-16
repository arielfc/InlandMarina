using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DataLayer
{
    class MarinaDB
    {
        public static SqlConnection GetConneciton()
        {
            string ConnectionString = "Data Source=DESKTOP-JE6DIRU;" +
                "Initial Catalog = Marina;" +
                "Integrated Security = true;";
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConnectionString;
            try
            {
                connection.Open();
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
            return connection;
        }
    }
}
