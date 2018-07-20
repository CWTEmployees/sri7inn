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
    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void lgnbtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select RoleName from TblRegistration where Email=@email and Password=@password ", con);
                cmd.Parameters.AddWithValue("@email", emailtxt.Text);
                cmd.Parameters.AddWithValue("@password", passtxt.Text);

                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["RoleName"].ToString() == "Admin")
                    {
                        Session["admin"] = emailtxt.Text;
                        Response.Redirect("Admin/OrderDetails.aspx");
                    }
                    else
                    {
                        Session["user"]= emailtxt.Text;
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    lgnlbl.Text = "Invalid Username Or Password";
                }
                
                
                //string _rolename =CheckUser(emailtxt.Text, passtxt.Text);
                //con.Open();

                //if (_rolename != "")
                //{
                //    if (_rolename == "Admin")
                //    {
                //        Session["admin"] = emailtxt.Text;
                //        Response.Redirect("Admin/OrderDetails.aspx");
                //    }
                //    else if (_rolename == "User")
                //    {
                //        Session["user"] = emailtxt.Text;
                //        Response.Redirect("Home.aspx");
                //    }
                //    else
                //    {
                //        lgnlbl.Text = "Invalid User";
                //    }
                //}
                //else
                //{
                //    lgnlbl.Text = "Invalid User";
                //}
            }
            finally
            { 
            con.Close();
            }
        }
        //public string CheckUser(string _uname, string _pwd)
        //{
        //    MySqlCommand cmd = new MySqlCommand("select RoleName  from TblRegistration where Email='" + emailtxt.Text + "' and Password='" + passtxt.Text + "'", con);

        //    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    string _rolename = "";
        //    if (ds != null && ds.Tables[0].Rows.Count > 0)
        //    {
        //        _rolename = ds.Tables[0].Rows[0]["RoleName"].ToString();
        //    }
        //    else
        //    {
        //        _rolename = "";
        //    }
        //    return _rolename;

        //}

        protected void cls_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


    }
}
