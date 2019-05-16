﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using BusinessLayer;


namespace DataLayer
{
    public class CustomerDB
    {
        public static Customer GetCustomer(int ID)
        {
            SqlConnection connection = MarinaDB.GetConneciton();
            Customer s = new Customer();
            try
            {
                string sql = "SELECT ID, FirstName, LastName, Phone, City, " +
                    "UserName, PassWord" +
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

            }
            finally
            {
                connection.Close();
            }
            return s;

        }

        public static Customer GetCustomer(string un)
        {
            SqlConnection connection = MarinaDB.GetConneciton();
            Customer s = new Customer();
            try
            {
                string sql = "SELECT ID, FirstName, LastName, Phone, City, " +
                    "UserName, PassWord" +
                    " FROM Customer WHERE Username=" + un;
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

            }
            finally
            {
                connection.Close();
            }
            return s;

        }

        public static bool AddCustomer(string FirstName, string LastName,
            string Phone, string City, string UserName, string Password)
        {
            string sql = "INSERT INTO Customer" +
                " (FirstName, LastName, Phone, City, UserName, Password) " +
                " VALUES " +
                "(@FirstName, @LastName, @Phone, @City, @UserName, @Password)";
            SqlConnection connection = MarinaDB.GetConneciton();
            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName", LastName);
            command.Parameters.AddWithValue("@Phone", Phone);
            command.Parameters.AddWithValue("@City", City);
            command.Parameters.AddWithValue("@UserName", UserName);
            command.Parameters.AddWithValue("@Password", Password);

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
            string sql = "UPDATE Customer" +
                " Set FirstName=@FirstName, LastName=@LastName, " +
                " Phone=@Phone, City=@City) " +
                " WHERE ID =" + ID;
            SqlConnection connection = MarinaDB.GetConneciton();
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