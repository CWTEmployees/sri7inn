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
    public partial class MyBookings : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        string query = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                MySqlDataAdapter da = new MySqlDataAdapter("select * from TblRegistration where Email = '" + Session["user"] + "'", con);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                lblUser.Text = "Hii " + dt1.Rows[0]["FirstName"].ToString();
            }
        }

        protected void btnId_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Reservation_Id, name, email, RoomType, Rooms,Check_In,Check_Out,contact,BookStatus FROM TblReservation WHERE email='" + Session["user"] + "' AND Reservation_Id='" + txtBookingId.Text + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvBooking.DataSource = ds;
            gvBooking.DataBind();
                
            

        }

        protected void gvBooking_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            gvBooking.PageIndex = e.NewSelectedIndex;
            gvBooking.DataBind();
        }

        protected void gvBooking_SelectedIndexChanged(object sender, EventArgs e)
        {
            gvBooking.DataBind();
        }

        protected void gvBooking_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

    }
}