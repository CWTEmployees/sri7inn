using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Collections;
using System.Configuration;
using System.Threading.Tasks;
using System.Net.Mime;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;



namespace sree7.Admin
{
    public partial class Notification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            DataTable dtUsers = new DataTable();
            //string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
           

            using (MySqlConnection conn = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("Users_GetEmails", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                    {
                        da.Fill(dtUsers);
                        string subject = "Here You have a News From Sree7";
                        //string body = "Hello {0},<br /><br />Welcome to ASPSnippets<br /><br />Thanks.";
                        string body =   //the message that goes in the body of the email
                            "<html><head><title>" + HttpUtility.HtmlEncode("Here You have a News From Sree7") + "</title></head><body  style='height:200px'>" +
                            //"<img src=\"D:/SAI/23-04-2018 BOOKS ID/BooksID/BooksID/User/images2" +
                            //"/logo.png\" />"+
                            HttpUtility.HtmlEncode(Msg.Text) + "";

                        //Using Parallel Multi-Threading send multiple bulk email.
                        Parallel.ForEach(dtUsers.AsEnumerable(), row =>
                        {
                            SendEmail(row["Email"].ToString(), subject, string.Format(body, row["FirstName"]));
                        });
                    }
                }
            }

        }

        private bool SendEmail(string recipient, string subject, string body)
        {
            MailMessage mm = new MailMessage("sri7inn@gmail.com", recipient);
            mm.Subject = subject;
            mm.Body = body;
            mm.IsBodyHtml = true;
            mm.AlternateViews.Add(Mail_Body());
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "relay-hosting.secureserver.net";
            smtp.EnableSsl = false;
            NetworkCredential NetworkCred = new NetworkCredential();
            //NetworkCred.UserName = "sri7inn@gmail.com";
            //NetworkCred.Password = "19677668";
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = NetworkCred;
            smtp.Port = 25;
            smtp.Send(mm);
            lblMessage.Text = "Message Sent Successfully";
            return true;

        }

        private AlternateView Mail_Body()
        {
            //string path = Server.MapPath(@"images/logo.png");
            //LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);
            //Img.ContentId = "MyImage";
            string str = @"  
            <table>  
                <tr>  
                    <td> '" + Msg.Text + @"'  
                    </td>  
                </tr>  
                
            </table>  
            ";
            AlternateView AV =
            AlternateView.CreateAlternateViewFromString(str, null, MediaTypeNames.Text.Html);
            //AV.LinkedResources.Add(Img);
            return AV;
        }
    }
}