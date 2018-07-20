using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Runtime.Versioning;
using System.Drawing;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    public partial class Home : System.Web.UI.Page
    {
        DataTable dt;
        //MySql.Data.MySqlClient.MyMySqlConnection con;
        //String connstring = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ToString();

        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        //MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];
            CalendarExtender1.StartDate = DateTime.Now;   //to dissable past Date
            CalendarExtender2.StartDate = DateTime.Now;   //to dissable past Date

            if (Session["user"] == null)
            {
                Session.Remove("user");
                lblUser.Text = "";

            }
            else
            {

                MySqlDataAdapter da = new MySqlDataAdapter("select * from TblRegistration where Email = '" + Session["user"] + "'", con);
                con.Open();
                //SqlDataAdapter da = new SqlDataAdapter("select * from TblRegistration where Email = '" + Session["user"] + "'", con);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                lblUser.Text = "Hii " + dt1.Rows[0]["FirstName"].ToString();
                con.Close();
            }


        }

        protected void btncontact_Click1(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.ReplyTo = new MailAddress(email.Text);
            msg.From = new MailAddress(email.Text);
            msg.To.Add("sri7inn@gmail.com");
            msg.Subject = "Customer Message";
            msg.Body = string.Format("{0}.<br/> <br/>  Mobile Number: {1} <br/><br/> E-Mail: {2}<br/> <br/>  Thank you", name.Text, phone.Text, email.Text);
            msg.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "relay-hosting.secureserver.net";
            //smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            //ntwd.UserName = "sri7inn@gmail.com"; 
            //ntwd.Password = "19677668";             
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = ntwd;
            smtp.Port = 25;
            smtp.EnableSsl = false;
            smtp.Send(msg);
            name.Text = "";
            email.Text = "";
            phone.Text = "";

            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "javascript:JSalert();", true);

            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Message Send Successfully')", true);

        }

        protected void submit_Click(object sender, EventArgs e)
        {


            MySqlCommand cmd = new MySqlCommand("SELECT room.availablerooms, reserv.Check_In,reserv.Check_Out FROM TblRoom room LEFT JOIN TblReservation reserv ON room.Room_Id = reserv.Room_Id  where availablerooms >= @AvailRoom OR Check_In >= @checkin AND Check_Out <= @checkout", con);

            con.Open();

            Int32 R;
            Int32.TryParse(DDlRoom.SelectedValue, out R);
            cmd.Parameters.Add("@AvailRoom", MySqlDbType.Int32).Value = R;

            DateTime dp1;
            DateTime.TryParse(checkin.Text.Trim(), out dp1);
            cmd.Parameters.Add("@checkin", MySqlDbType.Date).Value = dp1;
            DateTime dp2;
            DateTime.TryParse(checkout.Text.Trim(), out dp2);
            cmd.Parameters.Add("@checkout", MySqlDbType.Date).Value = dp2;

            int s = (dp2 - dp1).Days;
            Session["CHECKIN"] = checkin.Text;
            Session["CHECKOUT"] = checkout.Text;

            var result = cmd.ExecuteReader();
            if (s > 0)
            {
                Session["Days"] = s;
                if (!result.HasRows)
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "javascript:RoomN();", true);
                    checkin.Text = "";
                    checkout.Text = "";
                    DDlRoom.SelectedValue = "Select a Room";
                }
                else
                {
                    Response.Redirect("Rooms.aspx");
                    checkin.Text = "";
                    checkout.Text = "";
                    DDlRoom.SelectedValue = "Select a Room";
                }

            }
            else if (s == 0)
            {
                s = 1;
                Session["Days"] = s;
                if (!result.HasRows)
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "javascript:RoomN();", true);
                    checkin.Text = "";
                    checkout.Text = "";
                    DDlRoom.SelectedValue = "Select a Room";
                }
                else
                {
                    Response.Redirect("Rooms.aspx");
                    checkin.Text = "";
                    checkout.Text = "";
                    DDlRoom.SelectedValue = "Select a Room";
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "javascript:dates();", true);
                checkin.Text = "";
                checkout.Text = "";
                DDlRoom.SelectedValue = "Select a Room";
            }

        }







        protected void btnlgt_Click(object sender, EventArgs e)
        {

            Session.Remove("user");
            Session.Clear();

        }



    }
}

