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
    public partial class Payment : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            con.Close();
        }

        protected void rdbPay_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdbPay.SelectedItem.Value == "Cash")
            {
                txtamount.Visible = true;
                lblupdate.Text = "";
                btnPayment.Visible = true;
            }
            else if (rdbPay.SelectedItem.Value == "Online")
            {
                lblupdate.Text = "Online Integration is Pending";
                lblupdate.ForeColor = Color.Red;
                btnPayment.Visible = true;
                txtamount.Visible = false;
            }
        }

        private Boolean checkorderid()
        {
            Boolean idavailable = false;
            MySqlCommand cmd = new MySqlCommand("Select * from TblReservation where Reservation_Id='" + txtOrderid.Text + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                idavailable = true;
            }
            con.Close();

            return idavailable;
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            if (checkorderid() == false)
            {
                lblupdate.Text = "Your Id Is Wrong!!!";
                lblupdate.ForeColor = Color.Red;
            }
            else
            {
                MySqlCommand cmd = new MySqlCommand("select * from TblReservation where Reservation_Id = '" + txtOrderid.Text + "'", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {

                    lblname.Text = ds.Tables[0].Rows[0]["name"].ToString();
                    lblguests.Text = ds.Tables[0].Rows[0]["Guest"].ToString();
                    lblprice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                    lblcheckin.Text = ds.Tables[0].Rows[0]["Check_In"].ToString();
                    lblcheckout.Text = ds.Tables[0].Rows[0]["Check_Out"].ToString();
                    lblroomtype.Text = ds.Tables[0].Rows[0]["RoomType"].ToString();
                    lblrooms.Text = ds.Tables[0].Rows[0]["Rooms"].ToString();
                    lblcntct.Text = ds.Tables[0].Rows[0]["contact"].ToString();
                    lblupdate.Text = "";
                }
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
           
            if (rdbPay.SelectedItem.Value != "Online")
            {
                MySqlCommand cmd = new MySqlCommand("insert into PaymentDetails(OrderId,GuestName,ContactNo,RoomType,Rooms,CheckIn,CheckOut,Guest,Price,Payment) values('" + txtOrderid.Text + "','" + lblname.Text + "','" + lblcntct.Text + "','" + lblroomtype.Text + "','" + lblrooms.Text + "','" + lblcheckin.Text + "','" + lblcheckout.Text + "','" + lblguests.Text + "','" + lblprice.Text + "','" + txtamount.Text + "')", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                con.Open();

                cmd.Parameters.AddWithValue("@OrderId", txtOrderid.Text);
                cmd.Parameters.AddWithValue("@GuestName", lblname.Text);
                cmd.Parameters.AddWithValue("@ContactNo", lblcntct.Text);
                cmd.Parameters.AddWithValue("@RoomType", lblroomtype.Text);
                cmd.Parameters.AddWithValue("@Rooms", lblrooms.Text);
                cmd.Parameters.AddWithValue("@CheckIn", lblcheckin.Text);
                cmd.Parameters.AddWithValue("@CheckOut", lblcheckout.Text);
                cmd.Parameters.AddWithValue("@Guest", lblguests.Text);
                cmd.Parameters.AddWithValue("@Price", lblprice.Text);
                cmd.Parameters.AddWithValue("@Payment", txtamount.Text);
                cmd.ExecuteNonQuery();

                lblupdate.Text = "Payment Successfully Done";
                lblupdate.ForeColor = Color.Green;

                txtOrderid.Text = "";
                lblname.Text = "";
                lblcntct.Text = "";
                lblroomtype.Text = "";
                lblrooms.Text = "";
                lblcheckin.Text = "";
                lblcheckout.Text = "";
                lblguests.Text = "";
                lblprice.Text = "";
                txtamount.Text = "";
                rdbPay.ClearSelection();
                txtamount.Visible = false;
                btnPayment.Visible = false;
                con.Close();
            }
            else if (rdbPay.SelectedItem.Value == "Online")
            {
                lblupdate.Text = "We Are Sorry For that!!! Please Select Cash Method";
                lblupdate.ForeColor = Color.Red;
                btnPayment.Visible = false;
            }
        }





    }
}