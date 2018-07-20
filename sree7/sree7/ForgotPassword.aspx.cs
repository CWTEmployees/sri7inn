using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void frgpassbtn_Click(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string dbconnection = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(dbconnection))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT Email,Password FROM TblRegistration WHERE Email = @Email"))
                {
                    cmd.Parameters.AddWithValue("@Email", frgmailtxt.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (MySqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["Email"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress("sri7inn@gmail.com");
                mm.To.Add(frgmailtxt.Text);
                mm.Subject = "Password Recovery";
                mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "relay-hosting.secureserver.net";
                //smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = false;
                NetworkCredential NetworkCred = new NetworkCredential();
                //NetworkCred.UserName = "sri7inn@gmail.com";
                //NetworkCred.Password = "19677668";
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = NetworkCred;
                smtp.Port = 25;
                smtp.Send(mm);


                frgpasslbl.Text = "Password Send successfully";
                frgpasslbl.ForeColor = Color.Green;
                //Response.Redirect("LoginPage.aspx");

            }
            else
            {
                frgpasslbl.Text = "Email Id Does Not Match";
                frgpasslbl.ForeColor = Color.Red;
                //Response.Write("This email address does not match our records.");
            }
        }

        protected void cls_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}