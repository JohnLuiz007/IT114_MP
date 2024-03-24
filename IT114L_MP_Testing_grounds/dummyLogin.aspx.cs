using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_MP_Testing_grounds
{
    public partial class WebForm1 : System.Web.UI.Page
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

        bool accCredCheck()
        {
            //Change file path when testing on other pcs
            var connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Jiro\Code\IT114L MP Testing\IT114L_MP_Testing_grounds\App_Data\musically.mdf;Integrated Security=True";

            using (var connection = new SqlConnection(connectionString))
            using (var command = connection.CreateCommand())
            {
                connection.Open();
                command.CommandText = $"SELECT * FROM LogIn WHERE Pass_word='"+txtPassword.Text+"'";

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    return true;
                }
                else
                {
                    //DebugLbl.Text = "Database is empty";
                    return false;
                }
            }
            //return false;
        }

        protected void LoginClick(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPassword.Text != "")
            {
                if (usernameExists())
                {
                    if (accCredCheck())
                    {
                        DebugLbl.Text = "Username and password matched. Successful login.";
                    }
                    else
                    {
                        DebugLbl.Text = "Incorrect password for this username.";
                    }
                }
                else
                {
                    DebugLbl.Text = "Username doesn't exist.";
                }
            }
            else
            {
                DebugLbl.Text = "Please enter username and password";
            }

        }
    }
}