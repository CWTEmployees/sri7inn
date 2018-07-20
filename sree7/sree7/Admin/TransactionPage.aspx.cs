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

namespace sree7.Admin
{
    public partial class TransactionPage : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTrans_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "SELECT * FROM TblReservation WHERE dateoforder BETWEEN '" + txtcheckin.Text + "' AND '" + txtcheckout.Text + "'";
                //string query = "select * from TblReservation where dateoforder >= '" + txtcheckin.Text + "'AND dateoforder  <= '" + txtcheckout.Text + "'";
                MySqlCommand cmd = new MySqlCommand(query, con);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@dateoforder", query.ToString());
                DataSet ds = new DataSet();
                da.Fill(ds);
                var result = cmd.ExecuteReader();

                if (!result.HasRows)
                {
                    TrancView.DataSource = null;
                    TrancView.DataBind();
                    total.Visible = false;
                    lbltotal.Visible = false;
                    lbltrns.Text = "No Transaction During This Session!!!!";

                }
                else
                {
                    TrancView.DataSource = ds;
                    TrancView.DataBind();



                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        decimal _total = 0M;
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            _total += Convert.ToDecimal(dr["Price"].ToString());
                        }
                        total.Visible = true;
                        lbltotal.Visible = true;
                        lbltotal.Text = _total.ToString();
                        lbltrns.Text = "";
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}