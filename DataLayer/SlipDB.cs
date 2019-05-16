using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using BusinessLayer;

namespace DataLayer
{
    public class SlipDB
    {
        public static List<Slip> GetSlips()
        {
            SqlConnection connection = MarinaDB.GetConneciton();
            List<Slip> results = new List<Slip>();
            try
            {
                string sql = "SELECT ID, Width, Length, DockID FROM Slip";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Slip s = new Slip();
                    s.ID = Convert.ToInt32(reader["ID"].ToString());
                    s.Width = Convert.ToInt32(reader["Width"].ToString());
                    s.Length = Convert.ToInt32(reader["Length"].ToString());
                    s.DockID = Convert.ToInt32(reader["DockID"].ToString());
                    results.Add(s);
                }

            }
            catch { }
            finally
            {
                connection.Close();
            }
            return results;
        }

        public static List<Slip> GetSlips(int ID)
        {
            SqlConnection connection = MarinaDB.GetConneciton();
            List<Slip> results = new List<Slip>();
            try
            {
                string sql = "SELECT ID, Width, Length, DockID FROM Slip" +
                    " WHERE DockID=" + ID;
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Slip s = new Slip();
                    s.ID = Convert.ToInt32(reader["ID"].ToString());
                    s.Width = Convert.ToInt32(reader["Width"].ToString());
                    s.Length = Convert.ToInt32(reader["Length"].ToString());
                    s.DockID = Convert.ToInt32(reader["DockID"].ToString());
                    results.Add(s);
                }

            }
            catch { }
            finally
            {
                connection.Close();
            }
            return results;
        }
    }
}

