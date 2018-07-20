using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;


namespace sree7
{
    public partial class placedsuccessfully : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Session["BookId"].ToString();
            Label5.Text = Session["dateoforder"].ToString();
            //Label8.Text = Session["totalprice"].ToString();
            Label6.Text = Session["address"].ToString();
            //guests.Text = Session["guests"].ToString();
            //Rooms.Text = Session["Rooms"].ToString();
            checkin.Text = Session["CHECKIN"].ToString();
            checkout.Text = Session["CHECKOUT"].ToString();
            showgrid(Session["buyitems"].ToString());
            //roomtype.Text = Session["RoomType"].ToString();


        }
        private void exportpdf()
        {

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();

        }


        private void showgrid(string orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("Rooms");

            String mycon = "Data Source=50.62.209.78; Port=3306; User Id=sa; Password=sa123; Database=sree7";
            MySqlConnection scon = new MySqlConnection(mycon);
            //String myquery = "select sno,id,name,price,quantity from orderdetails where orderid="+ Session["oid"].ToString();
            String myquery = "select * from TblReservation where Reservation_Id='" + Label3.Text + "'";
            MySqlCommand cmd = new MySqlCommand(myquery, scon);
            //cmd.CommandText = myquery;
            //cmd.Connection = scon;
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            //da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["id"] = ds.Tables[0].Rows[i]["Room_Id"].ToString();
                dr["name"] = ds.Tables[0].Rows[i]["RoomType"].ToString();
                dr["Rooms"] = ds.Tables[0].Rows[0]["Rooms"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["Guest"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["Price"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["Guest"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //GridView1.FooterRow.Cells[5].Text = "Total Amount";
            //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
            //Label8.Text = grandtotal.ToString();
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
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        
    }
}