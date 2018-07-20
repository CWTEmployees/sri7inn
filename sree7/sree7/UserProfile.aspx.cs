using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    public partial class UserProfile : System.Web.UI.Page
    {
        
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                MySqlDataAdapter da = new MySqlDataAdapter("select * from TblRegistration where Email = '" + Session["user"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblUser.Text = "Hii " + dt.Rows[0]["FirstName"].ToString();
                lblFirstName.Text = dt.Rows[0]["FirstName"].ToString();
                lblLastName.Text = dt.Rows[0]["LastName"].ToString();
                lblEmail.Text = dt.Rows[0]["Email"].ToString();
                lblPhone.Text = dt.Rows[0]["MobileNo"].ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand("update TblRegistration set FirstName='"+txtFirstName.Text+"',LastName='"+txtLastName.Text+"',Email='"+txtEmail.Text+"' where Email='"+txtEmail.Text+"'",con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Open();
            cmd.Parameters.AddWithValue("FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("UserProfile.aspx");
            con.Close();
        }
    }
}