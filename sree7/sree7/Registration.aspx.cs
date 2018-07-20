using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;


namespace sree7
{
    public partial class Registration : System.Web.UI.Page
    {
        //MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        //MySql.Data.MySqlClient.MyMySqlConnection con;
        //MySql.Data.MySqlClient.MySqlCommand cmd;
        //String querystr;
        //MySql.Data.MySqlClient.MySqlDataAdapter da;
        //String connstring = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if (checkemail() == true)
            {
                //Response.Write("Your Email Already Registered with Us");
                // TextBox3.BackColor = System.Drawing.Color.PaleGreen;
                reglbl.Text = "Your Email Already Registered with Us";

            }
            else
            {
                

                //con = new MySql.Data.MySqlClient.MyMySqlConnection(connstring);
                con.Open();

                //querystr = "";

                //querystr = "insert into TblRegistration (FirstName,LastName,Email,Password,CnfPassword,MobileNo) values ('" + FirstNametxt.Text + "','" + LastNametxt.Text + "','" + Emailtxt.Text + "','" + Passtxt.Text + "','" + CPasstxt.Text + "','" + mobiletxt.Text + "')";

                //cmd = new MySql.Data.MySqlClient.MySqlCommand(querystr, con);
                //cmd.ExecuteReader();

                MySqlCommand cmd = new MySqlCommand("insert into TblRegistration (FirstName,LastName,Email,Password,CnfPassword,MobileNo) values ('" + FirstNametxt.Text + "','" + LastNametxt.Text + "','" + Emailtxt.Text + "','" + Passtxt.Text + "','" + CPasstxt.Text + "','" + mobiletxt.Text + "')", con);

                //SqlCommand cmd = new SqlCommand("insert into TblRegistration (FirstName,LastName,Email,Password,CnfPassword,MobileNo) values ('" + FirstNametxt.Text + "','"+LastNametxt.Text+"','" + Emailtxt.Text + "','" + Passtxt.Text + "','" + CPasstxt.Text + "','" + mobiletxt.Text + "')", con);

                cmd.Parameters.AddWithValue("@FirstName", FirstNametxt.Text);
                cmd.Parameters.AddWithValue("@LastName", LastNametxt.Text);
                cmd.Parameters.AddWithValue("@Email", Emailtxt.Text);
                cmd.Parameters.AddWithValue("@Password", Passtxt.Text);
                cmd.Parameters.AddWithValue("@CnfPassword", CPasstxt.Text);
                cmd.Parameters.AddWithValue("@MobileNo", mobiletxt.Text);
                cmd.ExecuteScalar();

                Response.Redirect("Login.aspx");
                Session["firstName"] = FirstNametxt.Text;
            }
        }
        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            
            MySqlCommand cmd = new MySqlCommand("Select * from TblRegistration where Email='" + Emailtxt.Text + "'", con);
            //SqlCommand cmd = new SqlCommand("Select * from TblRegistration where Email='" + Emailtxt.Text + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                emailavailable = true;
            }
            con.Close();

            return emailavailable;
        }

        protected void cls_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}