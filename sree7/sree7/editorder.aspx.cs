using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace sree7
{
    public partial class editorder : System.Web.UI.Page
    {
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            totaldays.Text = Session["Days"].ToString();
            if (IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["sno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];
                    
                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        //int sr;
                        //int sr1;
                        //sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                        //Label3.Text= Request.QueryString["sno"];
                        //Label4.Text = sr.ToString();
                        //sr1 = Convert.ToInt32(Label3.Text.ToString());
                        //sr1 = sr1.ToString();
                        //sr1 = sr1 + 1;
                        //if (sr == sr1)
                        //{

                        Label3.Text = dt.Rows[i]["sno"].ToString();
                        Label4.Text = dt.Rows[i]["id"].ToString();
                        Label5.Text = dt.Rows[i]["Room_Type"].ToString();
                        DropDownList1.Text = dt.Rows[i]["quantity"].ToString();
                        Label6.Text = dt.Rows[i]["price"].ToString();
                        Label7.Text = dt.Rows[i]["totalprice"].ToString();
                        //name.Text = dt.Rows[i]["Name"].ToString();
                        break;
                        //Session["num"] = DropDownList1.ToString();
                        //}
                    }
                }
                else
                {
                }

            }
            //name.Text = Convert.ToString(name.Text);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //CHECKIN.Text = Session["CHECKIN"].ToString();
            //CHECKOUT.Text = Session["CHECKOUT"].ToString();
            //double day = Session["Days"].GetType(double);
            int day = (int)Session["Days"];
            string a = Label4.Text;
            string hello = "1";
            if (a == hello)
            {
                int q;
                q = Convert.ToInt32(DropDownList1.SelectedValue);
                if (q >= 1 && q <= 6)
                {
                    int cost;
                    cost = Convert.ToInt32(Label6.Text);
                    int totalcost;
                    float r = q / 3;
                    //room.Text = hello;
                    //string gst = "3";
                    //DropDownList1.Text = gst;
                    //if(q>3)
                    //{
                    //    r = r + 1;
                    //}
                    //else
                    //{
                    //}
                    //double doubleVal = System.Convert.ToDouble(r);
                    //room.Text= Math.Ceiling(r).ToString() + "  ";
                    room.Text = r.ToString();
                    //int s = Convert.ToInt32(r);
                    //int testCeiling = (int)Math.Ceiling(r);
                    //room.Text = s.ToString();
                    //t.Text = s.ToString();
                    totalcost = cost * q * day;
                    Label7.Text = totalcost.ToString();
                    if (q % 3 != 0)
                    {
                        r = r + 1;
                        room.Text = r.ToString();
                    }
                    Session["ob"] = q;
                    lbl.Text = "";

                }
                else
                {
                    int cost = Convert.ToInt32(Label6.Text);
                    if (q <= 3)
                    {
                        room.Text = hello;
                    }

                    else
                    {
                        string six = "2";
                        room.Text = six;
                    }
                    lbl.Text = "Please Select Up to 6  Guests only";
                    lbl.ForeColor = Color.Red;
                    string ss = "6";
                    DropDownList1.SelectedValue = ss;
                    int totalcost;
                    totalcost = 6 * cost * day;
                    Label7.Text = totalcost.ToString();
                }
            }
            else
            {
                int q;
                q = Convert.ToInt32(DropDownList1.SelectedValue);
                if (q >= 1)
                {
                    int cost;
                    cost = Convert.ToInt32(Label6.Text);
                    int totalcost;
                    float r = q / 3;
                    room.Text = r.ToString();
                    //int s = Convert.ToInt32(r);
                    //int testCeiling = (int)Math.Ceiling(r);
                    //room.Text = s.ToString();
                    //t.Text = s.ToString();
                    totalcost = cost * q * day;
                    Label7.Text = totalcost.ToString();
                    if (q % 3 != 0)
                    {
                        r = r + 1;
                        room.Text = r.ToString();
                    }
                    Session["ob"] = q;
                }
                else
                {
                    Console.WriteLine("Please Select Guests");
                    lbl.Text = "Please Select Guests";
                    lbl.ForeColor = Color.Red;
                }
            }
        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                sr1 = Convert.ToInt32(Label3.Text);
                
                if (sr == sr1)
                {
                    dt.Rows[i]["sno"] = Label3.Text;
                    dt.Rows[i]["id"] = Label4.Text;
                    dt.Rows[i]["Room_Type"] = Label5.Text;
                    dt.Rows[i]["quantity"] = DropDownList1.Text;
                    dt.Rows[i]["price"] = Label6.Text;
                    dt.Rows[i]["totalprice"] = Label7.Text;
                    dt.Rows[i]["Rooms"] = room.Text;
                    //name.Text = dt.Rows[i]["Name"].ToString();
                    dt.AcceptChanges();
                    break;
                }
            }
            Response.Redirect("RoomBook.aspx?");
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}

    }
}