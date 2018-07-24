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
using System.Net.Mail;
using System.Net;
using System.Drawing;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    public partial class RoomBook : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
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






            //SqlCommand cmd = new SqlCommand("select * from TblRoom where Room_Id=" + Request.QueryString["id1"], con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //bookgrid.DataSource = ds;
            //bookgrid.DataBind();
            //con.Close();
            CHECKIN.Text = Session["CHECKIN"].ToString();
            CHECKOUT.Text = Session["CHECKOUT"].ToString();
            Totaldays.Text = Session["Days"].ToString();


            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("Room_Type");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("image");
                dt.Columns.Add("ImagePath");
                dt.Columns.Add("Rooms");

                if (Request.QueryString["id1"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        MySqlConnection scon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                        String myquery = "select * from TblRoom where Room_Id=" + Request.QueryString["id1"];
                        MySqlCommand cmd = new MySqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        MySqlDataAdapter da = new MySqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["quantity"] = 1;
                        //dr["Guest"] = 2;

                        dr["id"] = ds.Tables[0].Rows[0]["Room_Id"].ToString();
                        dr["Room_Type"] = ds.Tables[0].Rows[0]["Room_Type"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["Room_Image"].ToString();
                        dr["ImagePath"] = ds.Tables[0].Rows[0]["ImagePath"].ToString();
                        dr["quantity"] = Request.QueryString["Guest"];
                        dr["Rooms"] = ds.Tables[0].Rows[0]["Rooms"].ToString();
                        //dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        //int quantity = Convert.ToInt32(Request.QueryString["Guest"].ToString());
                        //int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());

                        int totalprice = price * 1;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        bookgrid.DataSource = dt;
                        bookgrid.DataBind();
                        Session["buyitems"] = dt;
                        bookgrid.FooterRow.Cells[5].Text = "Total Amount";
                        bookgrid.FooterRow.Cells[6].Text = grandtotal().ToString();
                        //Session["num"] = quantity;
                        Session["id"] = ds.Tables[0].Rows[0]["Room_Id"].ToString();
                        Response.Redirect("RoomBook.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        MySqlConnection scon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                        String myquery = "select * from TblRoom where Room_Id=" + Request.QueryString["id1"];
                        MySqlCommand cmd = new MySqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        MySqlDataAdapter da = new MySqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["Room_Id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["Room_Type"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["Room_Image"].ToString();
                        dr["quantity"] = Request.QueryString["Guest"];
                        dr["price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["Guest"].ToString());


                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        bookgrid.DataSource = dt;
                        bookgrid.DataBind();
                        Session["buyitems"] = dt;
                        bookgrid.FooterRow.Cells[5].Text = "Total Amount";
                        bookgrid.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("RoomBook.aspx");
                        Session["num"] = quantity;
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    bookgrid.DataSource = dt;
                    bookgrid.DataBind();
                    if (bookgrid.Rows.Count > 0)
                    {
                        bookgrid.FooterRow.Cells[5].Text = "Total Amount";
                        bookgrid.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
                //Label2.Text = bookgrid.Rows.Count.ToString();
            }
            Label4.Text = DateTime.Now.ToShortDateString();

            Session["dateoforder"] = Label4.Text;
            findorderid();

        }


        private object grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;

        }

        protected void bookgrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = bookgrid.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();

                sr1 = Convert.ToInt32(qdata);
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;

                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("RoomBook.aspx");
            Label1.Text = "Item Has Been Deleted From Shopping Cart";
        }

        protected void bookgrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("editorder.aspx?sno=" + bookgrid.SelectedRow.Cells[0].Text);
        }

        protected void bookgrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //btn.Attributes.Add("onclick", "popWin()");
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into TblReservation(sno,name,RoomType,price,Guest,dateoforder,Rooms,email,address,contact,Check_In,Check_Out,Reservation_Id,Room_Id) values('" + dt.Rows[i]["sno"] + "','" + name.Text + "','" + dt.Rows[i]["Room_Type"] + "','" + dt.Rows[i]["totalprice"] + "','" + dt.Rows[i]["quantity"] + "','" + Label4.Text + "','" + dt.Rows[i]["Rooms"] + "','" + emaieltxt.Text + "','" + txtadress.Text + "','" + txtcntnum.Text + "','" + CHECKIN.Text + "','" + CHECKOUT.Text + "','" + Label3.Text + "','" + dt.Rows[i]["id"] + "')";
                MySqlConnection scon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                //String mycon1 = "Data Source=.;Initial Catalog=sree7;Integrated Security=True";
                //MySqlConnection s = new MySqlConnection(mycon1);
                scon.Open();
                MySqlCommand cmd1 = new MySqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = scon;
                cmd1.ExecuteNonQuery();
                scon.Close();
                Session["address"] = txtadress.Text;
                Session["guests"] = dt.Rows[i]["quantity"].ToString();
                Session["Rooms"] = dt.Rows[i]["Rooms"].ToString();
                Session["totalprice"] = dt.Rows[i]["totalprice"].ToString();
                Session["RoomType"] = dt.Rows[i]["Room_Type"].ToString();
                Session["address"] = "Name Is:" + name.Text + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + txtadress.Text + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact Number Is :" + txtcntnum.Text;

                MailMessage msg = new MailMessage();
                //msg.ReplyTo = new MailAddress(emaieltxt.Text);
                msg.From = new MailAddress("sri7inn@gmail.com");
                msg.To.Add(emaieltxt.Text);
                msg.Subject = "Booking Details";
                msg.Body = string.Format("Hi {0}!!! Your Room is Booked <br/> <br/>  Check In: {1} <br/><br/> Check Out: {2}<br/> <br/> Room Type:{3} <br/><br/> Rooms :{4} </br> </br> <br/> </br></br> Guests: {5} </br></br> <br/>  <br/> <br/> Address :{6} <br/> <br/> <br/> Thank you", name.Text, CHECKIN.Text, CHECKOUT.Text, dt.Rows[i]["Room_Type"].ToString(), dt.Rows[i]["Rooms"].ToString(), dt.Rows[i]["quantity"].ToString(), txtadress.Text);
                msg.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "relay-hosting.secureserver.net";
                //smtp.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                //ntwd.UserName = "sri7inn@gmail.com"; //Your Email ID  
                //ntwd.Password = "19677668";            // Your Password  
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = ntwd;
                smtp.Port = 25;
                smtp.EnableSsl = false;
                smtp.Send(msg);



            }
            updatequantity();



            Response.Redirect("placedsuccessfully.aspx");
        }
        private void updatequantity()
        {
            MySqlConnection scon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            //string a = Request.QueryString["id"];
            //Label8.Text = Request.QueryString["id"];
            Label8.Text = Session["id"].ToString();
            //string b = Session["num"].ToString();
            Label9.Text = Session["Rooms"].ToString();

            scon.Open();
            string quer = "Update TblRoom set availablerooms = (availablerooms - '" + Label9.Text + "') Where Room_Id = '" + Label8.Text + "'";
            MySqlCommand cmd = new MySqlCommand();
            //cmd.Parameters.AddWithValue("@roomid", Label8.Text);
            //cmd.Parameters.AddWithValue("@availroom", Label9.Text);
            cmd.CommandText = quer;
            cmd.Connection = scon;
            cmd.ExecuteNonQuery();
        }



        static Random _r = new Random();
        public void findorderid()
        {
            // Use class-level Random so that when this
            // ... method is called many times, it still has
            // ... good Randoms.
            int n = _r.Next();
            // If this declared a local Random, it would
            // ... repeat itself.
            Console.WriteLine(n);
            Label3.Text = "SRI7" + n.ToString();
            Session["BookId"] = Label3.Text;
        }

        protected void booking_info_Click(object sender, EventArgs e)
        {


            DataTable dt;
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                MySqlConnection scon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                String updatepass = "insert into TblReservation(sno,name,RoomType,price,Guest,dateoforder,Rooms,email,address,contact,Check_In,Check_Out,Reservation_Id,Room_Id) values('" + dt.Rows[i]["sno"] + "','" + name.Text + "','" + dt.Rows[i]["Room_Type"] + "','" + dt.Rows[i]["totalprice"] + "','" + dt.Rows[i]["quantity"] + "','" + Label4.Text + "','" + dt.Rows[i]["Rooms"] + "','" + emaieltxt.Text + "','" + txtadress.Text + "','" + txtcntnum.Text + "','" + CHECKIN.Text + "','" + CHECKOUT.Text + "','" + Label3.Text + "','" + dt.Rows[i]["id"] + "')";


                scon.Open();
                MySqlCommand cmd1 = new MySqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = scon;
                cmd1.ExecuteNonQuery();
                scon.Close();
                Session["address"] = txtadress.Text;
                Session["guests"] = dt.Rows[i]["quantity"].ToString();
                Session["Rooms"] = dt.Rows[i]["Rooms"].ToString();
                Session["totalprice"] = dt.Rows[i]["totalprice"].ToString();
                Session["RoomType"] = dt.Rows[i]["Room_Type"].ToString();
                Session["address"] = "Name Is:" + name.Text + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + txtadress.Text + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact Number Is :" + txtcntnum.Text;

                MailMessage msg = new MailMessage();
                //msg.ReplyTo = new MailAddress(emaieltxt.Text);
                msg.From = new MailAddress("sri7inn@gmail.com");
                msg.To.Add(emaieltxt.Text);
                msg.Subject = "Booking Details";
                msg.Body = string.Format("Hi !!!  Room is Booked On the Name Of: {0} <br/> <br/>  Check In: {1} <br/><br/> Check Out: {2}<br/> <br/> Room Type:{3} <br/><br/> Rooms :{4} </br> </br> <br/> </br></br> Guests: {5} </br></br> <br/>  <br/> <br/> Address :{6} <br/> <br/> <br/> Thank you", name.Text, CHECKIN.Text, CHECKOUT.Text, dt.Rows[i]["Room_Type"].ToString(), dt.Rows[i]["Rooms"].ToString(), dt.Rows[i]["quantity"].ToString(), txtadress.Text);
                msg.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "relay-hosting.secureserver.net";
                //smtp.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                //ntwd.UserName = "sri7inn@gmail.com"; //Your Email ID  
                //ntwd.Password = "19677668";            // Your Password  
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = ntwd;
                smtp.Port = 25;
                smtp.EnableSsl = false;
                smtp.Send(msg);




                updatequantity();

                Response.Redirect("payment.aspx");

            }

        }

        protected void btnlgt_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
        }


    }
}



