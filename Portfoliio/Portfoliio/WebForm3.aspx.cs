using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfoliio
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveToDatabase(object sender,EventArgs e)
        {
            try
            {

                byte[] projectImage = null;
                using (var binaryReader = new BinaryReader(imageFile.PostedFile.InputStream))
                {
                    projectImage = binaryReader.ReadBytes(imageFile.PostedFile.ContentLength);
                }            

                SqlConnection connect = new SqlConnection(connectionString);
                connect.Open();
                SqlCommand command = new SqlCommand("INSERT INTO Projects (Name, Details, ImagePath, Link) VALUES (@Name, @Details, @ImagePath, @Link)",connect);

                command.Parameters.AddWithValue("@Name", name.Value);
                command.Parameters.AddWithValue("@Details", details.Value);
                command.Parameters.AddWithValue("@ImagePath",projectImage);
                command.Parameters.AddWithValue("@Link",link.Value);
      
                command.ExecuteNonQuery();
                connect.Close();
            }   
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
 
        }
        protected void serviceSave(object sender, EventArgs e)
        {
            try
            { 
            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            SqlCommand command = new SqlCommand("INSERT INTO services (heading,details,link,font) VALUES (@heading,@details,@link,@font)", connect);

            command.Parameters.AddWithValue("@heading", heading.Value);
            command.Parameters.AddWithValue("@details", service_details.Value);
            command.Parameters.AddWithValue("@link", learnmore_link.Value);
            command.Parameters.AddWithValue("@font", font.Value);

            command.ExecuteNonQuery();
            connect.Close();

            }catch(Exception ex)
            {
                Response.Write(ex.ToString()+"\n");
            }

        }

        protected void redirecttomain(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/Main.aspx");
            }
            catch(Exception ex) { 
                Response.Write(ex.ToString());
            }

        }

        //To delete from Project

        protected void DeleteProject(object sender, EventArgs e) 
        {
            string projectName = dltname.Value; 

            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Projects] WHERE [Name]=@Name", connect);
            cmd.Parameters.AddWithValue("@Name", projectName); 
            cmd.ExecuteNonQuery(); // Executeing the SQL command
            Response.Redirect("~/Webform3.aspx");
            connect.Close();

        }

        protected void DeleteService(object sender, EventArgs e)
        {
            string projectName = dltheading.Value;

            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[services] WHERE [heading]=@heading", connect);
            cmd.Parameters.AddWithValue("@heading", projectName);
            cmd.ExecuteNonQuery(); // Executeing the SQL command
            Response.Redirect("~/Webform3.aspx");
            connect.Close();

        }


    }
}