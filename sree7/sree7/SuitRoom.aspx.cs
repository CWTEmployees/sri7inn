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
using System.ComponentModel;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    public partial class SuitRoom : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                if (Session["Buyitems"] == null)
                {
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    con.Open();

                    MySqlCommand cmd = new MySqlCommand("select * from TblRoom where Room_Id=" + Request.QueryString["id"], con);

                    cmd.ExecuteNonQuery();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    prdDetail.DataSource = dt;
                    prdDetail.DataBind();
                    dt = (DataTable)Session["buyitems"];
                    con.Close();
                }
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

        protected void selectroom_Click(object sender, EventArgs e)
        {
            
        }

        protected void prdDetail_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "addroom")
            {
                Response.Redirect("RoomBook.aspx?id1=" + e.CommandArgument.ToString());
            }
        }

        protected void btnlgt_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
        }

      
    }
}