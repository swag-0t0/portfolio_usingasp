using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Portfoliio
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submission(object sender, EventArgs e)
        {
            string inputName = name.Value;
            string inputPassword = password.Value;

            // Hardcoded username and password for demonstration
            string validUsername = "Swagoto";
            string validPassword = "Swagoto";

            if (inputName == validUsername && inputPassword == validPassword)
            {
                Response.Write("<script> alert('Login successful')</script>");
                Response.Redirect("~/webform3.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid username or password')</script>");
            }
        }
    }
}