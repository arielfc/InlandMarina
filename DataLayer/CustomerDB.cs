using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using BusinessLayer;
using System.Security.Cryptography;


namespace DataLayer
{
    public class CustomerDB
    {
        public static Customer GetCustomer(int ID)
        {
            SqlConnection connection = MarinaDB.GetConnection();
            Customer s = new Customer();
            try
            {
                string sql = "SELECT ID, FirstName, LastName, Phone, City, " +
                    " UserName, PassWord" +
                    " FROM Customer WHERE ID=" + ID;
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                // check if there is a record????????????
                while (reader.Read())
                {
                    s.ID = Convert.ToInt32(reader["ID"].ToString());
                    s.FirstName = reader["FirstName"].ToString();
                    s.LastName = reader["LastName"].ToString();
                    s.Phone = reader["Phone"].ToString();
                    s.City = reader["City"].ToString();
                    s.UserName = reader["UserName"].ToString();
                    s.PassWord = reader["PassWord"].ToString();
                }
            }
            catch (Exception ex)
            {
                ;
            }
            finally
            {
                connection.Close();
            }
            return s;

        }
        
        public static Customer GetCustomer(string un)
        {
            SqlConnection connection = MarinaDB.GetConnection();
            Customer s = new Customer();
            try
            {
                string sql = "SELECT ID, FirstName, LastName, Phone, City, " +
                    " UserName, PassWord" +
                    "  FROM Customer WHERE UserName='" + un+"'";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    s.ID = Convert.ToInt32(reader["ID"].ToString());
                    s.FirstName = reader["FirstName"].ToString();
                    s.LastName = reader["LastName"].ToString();
                    s.Phone = reader["Phone"].ToString();
                    s.City = reader["City"].ToString();
                    s.UserName = reader["UserName"].ToString();
                    s.PassWord = reader["PassWord"].ToString();

                }

            }
            catch (Exception ex)
            {
                ;
            }
            finally
            {
                connection.Close();
            }
            return s;

        }
        public static string Md5Encrypt32(string str)
        {
            System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(str));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sb.Append(data[i].ToString("x2"));
            }
            return sb.ToString();
        }
        public static bool AddCustomer(string FirstName, string LastName,
            string Phone, string City, string UserName, string Password)
        {
            if (FirstName == null || LastName == null || Phone == null ||
                City == null|| UserName == null|| Password == null)
            {
                return false;
            }
            string sql = "INSERT INTO Customer" +
                " (FirstName, LastName, Phone, City, UserName, Password) " +
                " VALUES " +
                "(@FirstName, @LastName, @Phone, @City, @UserName, @Password)";
            SqlConnection connection = MarinaDB.GetConnection();
            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName", LastName);
            command.Parameters.AddWithValue("@Phone", Phone);
            command.Parameters.AddWithValue("@City", City);
            command.Parameters.AddWithValue("@UserName", UserName);
            // Hash password 20190517 to UPPERCASE hash code
            string pwHash = Md5Encrypt32(Password);
            command.Parameters.AddWithValue("@Password", pwHash);

            if (command.ExecuteNonQuery() > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool UpdateCustomer(int ID, string FirstName, string LastName,
            string Phone, string City)
        {
            if (FirstName == null || LastName == null || Phone == null ||
                City == null)
            {
                return false;
            }
            string sql = "UPDATE Customer" +
                " Set FirstName=@FirstName, LastName=@LastName, " +
                " Phone=@Phone, City=@City " +
                " WHERE ID =" + ID;
            SqlConnection connection = MarinaDB.GetConnection();
            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName", LastName);
            command.Parameters.AddWithValue("@Phone", Phone);
            command.Parameters.AddWithValue("@City", City);

            if (command.ExecuteNonQuery() > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
