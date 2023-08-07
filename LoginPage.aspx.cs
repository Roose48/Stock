using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Stock
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Here, you would perform authentication logic, such as checking against a database or any other authentication mechanism
            if (IsValidUser(username, password))
            {
                // Authentication successful
                // Redirect the user to the second page
                Response.Redirect("Menu.aspx");
            }
            else
            {
                // Authentication failed
                lblMessage.Text = "Invalid username or password";
            }
        }

        private bool IsValidUser(string username, string password)
        {
            // Implement your own logic here to validate the user credentials
            // This could involve checking against a database or any other authentication mechanism
            // Return true if the user is valid; otherwise, return false

            // For example:
            if (username == "admin" && password == "password")
            {
                return true;
            }
            return false;
        }
}