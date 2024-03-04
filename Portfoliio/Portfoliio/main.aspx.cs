using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Portfoliio
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
             string query = "SELECT Name,Details,ImagePath,Link FROM Projects";

            using (SqlConnection connection = new SqlConnection(strcon))
            {
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string imageName = Convert.ToBase64String((byte[])reader["ImagePath"]);
                    string pName = reader["Name"].ToString();
                    string pdetails = reader["Details"].ToString();
                    string link = reader["Link"].ToString();

                    // Constructing HTML dynamically for my each project
                    string projectHtml = $@"
                     <div class='work'>
                         <img src='data:image;base64,{imageName}' style='height: 270px; width: 360px;'>
                         <div class='work-layer'>
                             <h4>{pName}</h4>
                             <p>{pdetails}</p>
                             <div>
                                 <a href='{link}'><i class='bx bx-link-external'></i></a>
                             </div>
                         </div>
                     </div>";

                    // Appending my HTML 
                    HtmlGenericControl container = (HtmlGenericControl)FindControl("worklist");
                    container.InnerHtml += projectHtml;

                }

                reader.Close();
            }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());  
            }
            

        }
   protected void sendbtn_Click(object sender, EventArgs e)
    {
            try
            {
         SqlConnection connect = new SqlConnection(strcon);
         connect.Open();
            SqlCommand command = new SqlCommand("INSERT INTO faq_table (full_name, phone_number, email, subject, message) VALUES (@full_name, @phone_number, @email, @subject, @message)", connect);


             command.Parameters.AddWithValue("@full_name", full_name.Value);
             command.Parameters.AddWithValue("@phone_number",number.Value);
             command.Parameters.AddWithValue("@email", email.Value);
             command.Parameters.AddWithValue("@subject", subject.Value);
             command.Parameters.AddWithValue("@message", message.Value);
             
             command.ExecuteNonQuery();
             connect.Close();
             }
            catch (Exception ex) { 
                Response.Write(ex.ToString());  
            }
       
    }

    }

   
}