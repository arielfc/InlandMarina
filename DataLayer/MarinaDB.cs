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
        public static SqlConnection GetConnection()
        {/*
            string ConnectionString = "Data Source=DESKTOP-JE6DIRU;" +
                "Initial Catalog = Marina;" +
                "Integrated Security = true;";
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConnectionString;
            */
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "softdev0516.database.windows.net";
            builder.UserID = "softdevlogin";
            builder.Password = "softDevma3$";
            builder.InitialCatalog = "InlandMarinaScript";
            SqlConnection connection = new SqlConnection(builder.ConnectionString);

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
