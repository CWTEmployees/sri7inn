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
using System.Drawing;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7.Admin
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        //MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            con.Close();
        }

        protected void Get_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand("select * from TblReservation where Reservation_Id = '" + txtOrderid.Text + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                
                //lbluserid.Text = ds.Tables[0].Rows[0]["User_Id"].ToString();
                lblEmail.Text = ds.Tables[0].Rows[0]["email"].ToString();
                lblname.Text = ds.Tables[0].Rows[0]["name"].ToString();
                lblRoomId.Text = ds.Tables[0].Rows[0]["Room_Id"].ToString();
                lbladdress.Text = ds.Tables[0].Rows[0]["address"].ToString();
                Lblrooms.Text = ds.Tables[0].Rows[0]["Rooms"].ToString();
                lblguests.Text = ds.Tables[0].Rows[0]["Guest"].ToString();
                lblprice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                lblcheckin.Text = ds.Tables[0].Rows[0]["Check_In"].ToString();
                lblcheckout.Text = ds.Tables[0].Rows[0]["Check_Out"].ToString();
                lblsno.Text = ds.Tables[0].Rows[0]["sno"].ToString();
                lblroomtype.Text = ds.Tables[0].Rows[0]["RoomType"].ToString();
                lblcntct.Text = ds.Tables[0].Rows[0]["contact"].ToString();

                lblupdate.Text = "";
            }
        }

        protected void savedata_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand("update TblReservation set email='" + txtEmail.Text + "',name='" + txtname.Text + "',Room_Id='" + txtRoomId.Text + "',address='" + txtaddress.Text + "',Rooms='" + txtrooms.Text + "',Guest='" + txtguests.Text + "',Price='" + txtprice.Text + "',sno='" + txtsno.Text + "',RoomType ='" + txtroomtype.Text + "',contact= '" + txtcntct.Text + "' where Reservation_Id='" + txtOrderid.Text + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Open();
            //cmd.Parameters.AddWithValue("@User_Id", txtuserid.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@Room_Id", txtRoomId.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Rooms", txtrooms.Text);
            cmd.Parameters.AddWithValue("@Guest", txtguests.Text);
            cmd.Parameters.AddWithValue("@Price", txtprice.Text);
            cmd.Parameters.AddWithValue("@sno", txtsno.Text);
            cmd.Parameters.AddWithValue("@RoomType", txtroomtype.Text);
            //cmd.Parameters.AddWithValue("@Check_In", txtcheckin.Text);
            //cmd.Parameters.AddWithValue("@Check_Out", txtcheckout.Text);
            cmd.Parameters.AddWithValue("@contact", txtcntct.Text);
            cmd.ExecuteNonQuery();
            lblupdate.Text = "Update Profile Successfully";
            lblupdate.ForeColor = Color.Green;

            txtOrderid.Text = "";
            lblname.Text = "";
            lblEmail.Text = "";
            lblcntct.Text = "";
            lblRoomId.Text = "";
            lblroomtype.Text = "";
            Lblrooms.Text = "";
            lblcheckin.Text = "";
            lblcheckout.Text = "";
            lblguests.Text = "";
            lblprice.Text = "";
            lblsno.Text = "";
            lbladdress.Text = "";

            con.Close();
        }
    }
}