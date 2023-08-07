//using System;
//using System.Data.SqlClient;
//using MySql.Data.MySqlClient;

//namespace WebApp_Stock
//{
//    public partial class Menu : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            // Define your connection string
//            string connectionString = "server=your_mysql_server;database=your_database;uid=your_username;pwd=your_password;";

//            // Create a MySqlConnection object
//            using (MySqlConnection connection = new MySqlConnection(connectionString))
//            {
//                try
//                {
//                    // Open the connection
//                    connection.Open();

//                    // Perform database operations here
//                    // For example, executing a query and reading data
//                    string query = "SELECT * FROM your_table;";
//                    MySqlCommand command = new MySqlCommand(query, connection);

//                    using (MySqlDataReader reader = command.ExecuteReader())
//                    {
//                        while (reader.Read())
//                        {
//                            // Read data from the reader and process it
//                            // For example:
//                            string columnName = reader["column_name"].ToString();
//                            // ...
//                        }
//                    }
//                }
//                catch (Exception ex)
//                {
//                    // Handle exceptions, such as connection errors
//                    // Log or display the error message as needed
//                }
//            }
//        }
//    }
//}
