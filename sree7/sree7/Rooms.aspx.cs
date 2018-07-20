using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel.DataAnnotations;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    
    public partial class Rooms : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand("select * from TblRoom", con);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                DL.DataSource = dt;
                DL.DataBind();
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }




            if (Session["user"] == null)
            {
                Session.Remove("user");
                lblUser.Text = "";

            }
            else
            {
                MySqlDataAdapter da = new MySqlDataAdapter("select * from TblRegistration where Email = '" + Session["user"] + "'", con);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                lblUser.Text = "Hii " + dt1.Rows[0]["FirstName"].ToString();
            }

        }

        protected void btnlgt_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            
        }

       

      

       

        
    }
}