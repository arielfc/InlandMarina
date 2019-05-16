using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using BusinessLayer;


namespace DataLayer
{
    public class DockDB
    {
        public static List<Dock> GetDocks()
        {
            SqlConnection connection = MarinaDB.GetConneciton();
            List<Dock> results = new List<Dock>();
            try
            {
                string sql = "SELECT ID, Name, WaterService, ElectricalService FROM Dock;";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Dock s = new Dock
                    {
                        ID = Convert.ToInt32(reader["ID"].ToString()),
                        Name = reader["Name"].ToString(),
                        WaterService = reader["WaterService"].ToString(),
                        ElectricalService = reader["ElectricalService"].ToString()
                    };

                    /*if (Convert.ToInt32(reader["WaterService"].ToString())==1)
                    {
                        s.WaterService = "Yes";
                    }
                    else
                    {
                        s.WaterService = "No";
                    }
                    if (Convert.ToInt32(reader["WaterService"].ToString())==1)
                    {
                        s.ElectricalService = "Yes";
                    }
                    else
                    {
                        s.ElectricalService = "No";
                    }
                    */
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
