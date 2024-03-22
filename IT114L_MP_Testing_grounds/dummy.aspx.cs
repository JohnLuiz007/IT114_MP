using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_MP_Testing_grounds
{
    public partial class claireann : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        bool usernameExists()
        {
            //Change file path when testing on other pcs
            var connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Jiro\Code\IT114L MP Testing\IT114L_MP_Testing_grounds\App_Data\musically.mdf;Integrated Security=True";
            
            using (var connection = new SqlConnection(connectionString))
            using (var command = connection.CreateCommand())
            {
                connection.Open();
                command.CommandText = $"SELECT User_name FROM LogIn";

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        var UNString = reader.GetString(0);
                        if (UNString == txtUsername.Text)
                        {
                            //DebugLbl.Visible = true;
                            return true;
                        }
                    }
                }
                else
                {
                    DebugLbl.Text = "Database is empty";
                    return false;
                }
            }
            return false;
        }

        protected void SignupClick(object sender, EventArgs e)
        {
            var connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Jiro\Code\IT114L MP Testing\IT114L_MP_Testing_grounds\App_Data\musically.mdf;Integrated Security=True";

            if (txtUsername.Text != "" && txtPassword.Text != "")
            {
                bool usernameMatch = usernameExists();

                if (!usernameMatch)
                {
                    using (var connection = new SqlConnection(connectionString))
                    // Insert new data into the account database
                    using (var command = connection.CreateCommand())
                    {
                        connection.Open();
                        command.CommandText = $"INSERT INTO LogIn(User_name, Pass_word) VALUES (@username, @password)";

                        command.Parameters.AddWithValue("username", txtUsername.Text);
                        command.Parameters.AddWithValue("password", txtPassword.Text);

                        int rowsAffected = command.ExecuteNonQuery();
                    };

                    txtUsername.Text = "";
                    txtPassword.Text = "";
                    //DebugLbl.Visible = false;
                    DebugLbl.Text = "Registration successful.";
                }
                else
                {
                    DebugLbl.Text = "Username is already in use.";
                }
            }
            else
            {
                DebugLbl.Text = "Please enter username and password";
            }
        }
    }
}