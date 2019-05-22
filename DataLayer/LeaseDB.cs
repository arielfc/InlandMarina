using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using BusinessLayer;

namespace DataLayer
{
    public class LeaseDB
    {
        public static List<Lease> GetLeases()
        {
            SqlConnection connection = MarinaDB.GetConnection();
            List<Lease> result = new List<Lease>();
            try
            {
                string sql = "SELECT ID, SlipID, CustomerID FROM Lease";
                SqlCommand command = new SqlCommand(sql, connection);

                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Lease s = new Lease
                    {
                        ID = Convert.ToInt32(reader["ID"].ToString()),
                        SlipID = Convert.ToInt32(reader["SlipID"].ToString()),
                        CustomerID = Convert.ToInt32(reader["CustomerID"].ToString())
                    };
                    result.Add(s);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                connection.Close();
            }
            return result;
        }


        public static List<Lease> GetLeasesBySlipID(int ID)
        {
            SqlConnection connection = MarinaDB.GetConnection();
            List<Lease> result = new List<Lease>();
            try
            {
                string sql = "SELECT ID, SlipID, CustomerID" +
                    " FROM Lease WHERE SlipID=" + ID;
                SqlCommand command = new SqlCommand(sql, connection);
                // return multiple records
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Lease s = new Lease
                    {
                        ID = Convert.ToInt32(reader["ID"].ToString()),
                        SlipID = Convert.ToInt32(reader["SlipID"].ToString()),
                        CustomerID = Convert.ToInt32(reader["CustomerID"].ToString())
                    };
                    result.Add(s);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public static List<Lease> GetLeasesByCustomerID(int ID)
        {
            SqlConnection connection = MarinaDB.GetConnection();
            List<Lease> result = new List<Lease>();
            try
            {
                string sql = "SELECT ID, SlipID, CustomerID" +
                    " FROM Lease WHERE CustomerID=" + ID;
                SqlCommand command = new SqlCommand(sql, connection);
                // return multiple records
                SqlDataReader reader =
                    command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Lease s = new Lease
                    {
                        ID = Convert.ToInt32(reader["ID"].ToString()),
                        SlipID = Convert.ToInt32(reader["SlipID"].ToString()),
                        CustomerID = Convert.ToInt32(reader["CustomerID"].ToString())
                    };
                    result.Add(s);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                connection.Close();
            }
            return result;
        }
        public static bool AddLease(int slipid, int customerid)
        {
            string sql = "INSERT INTO Lease" +
                " (SlipId, CustomerID) " +
                " VALUES " +
                "(@slipid, @customerid)";
            SqlConnection connection = MarinaDB.GetConnection();
            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@SlipId", slipid);
            command.Parameters.AddWithValue("@CustomerID", customerid);

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
