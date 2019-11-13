using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text.RegularExpressions;

namespace oldCarRto.Inword
{
    public partial class InwordEdit : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
        SqlConnection cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
        SqlCommand vcmd = new SqlCommand();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) { Response.Redirect("../Login/Login.aspx"); } else { }
            lb_id.Text = Request.QueryString["id"];
            if (txt_name.Text == "" && txt_date.Text == "")
            {
                if (drp_Showroom.Text == "")
                {
                    fetchShowrooms();
                }
                Fill();
               
            }

        }

        void Fill()
        {
            cmd.Connection = cn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Inword where No='" + lb_id.Text + "'";
            cn.Open();
            SqlDataReader sd = cmd.ExecuteReader();
            if (sd.HasRows)
            {
                while (sd.Read())
                {
                    txt_date.Text = sd["Date"].ToString();
                    txt_name.Text = sd["Name"].ToString();
                    txt_contact.Text = sd["Contact"].ToString();
                    txt_address.Text = sd["Address"].ToString();
                    txt_vehicleNo.Text = sd["VehicleNo"].ToString();
                    txt_chassis.Text = sd["ChassisNo"].ToString();
                    txt_vehicleType.Text = sd["VehicleType"].ToString();
                    txt_rto.Text = sd["RTO"].ToString();
                    txt_rtoFee.Text = sd["RTOFee"].ToString();
                    txt_rtoReceiptNo.Text = sd["RTOReceiptNo"].ToString();
                    txt_work.Text = sd["Works"].ToString();
                    txt_totalAmt.Text = sd["TotalAmount"].ToString();
                    txt_paidAmt.Text = sd["PayableAmount"].ToString();
                    txt_Note.Text = sd["Note"].ToString();
                    drp_Status.SelectedIndex = drp_Status.Items.IndexOf(drp_Status.Items.FindByText(sd["Status"].ToString()));
                    txt_closingDate.Text = sd["ClosingDate"].ToString();
                    drp_Showroom.SelectedIndex = drp_Showroom.Items.IndexOf(drp_Showroom.Items.FindByText(sd["ShowRoom"].ToString()));
                    txt_remarks.Text = sd["Remarks"].ToString();
                }

            }
            sd.Dispose();
            cmd.Clone();
            cn.Close();

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
             try
            {
                SqlCommand ucmd = new SqlCommand("UPDATE Inword SET RTO=@RTO,RTOFee=@RTOFee,RTOReceiptNo=@RTOReceiptNo,Works=@Works,TotalAmount=@TotalAmount,PayableAmount=@PayableAmount,Note=@Note,Status=@Status,ClosingDate=@ClosingDate,ShowRoom=@ShowRoom Where  No='" + lb_id.Text + "' ", cn);
                        ucmd.Parameters.Add("@RTO", SqlDbType.NVarChar).Value = txt_rto.Text;
                        ucmd.Parameters.Add("@RTOFee", SqlDbType.NVarChar).Value = txt_rtoFee.Text;
                        ucmd.Parameters.Add("@RTOReceiptNo", SqlDbType.NVarChar).Value = txt_rtoReceiptNo.Text;
                        ucmd.Parameters.Add("@Works", SqlDbType.NVarChar).Value = txt_work.Text;
                        ucmd.Parameters.Add("@TotalAmount", SqlDbType.NVarChar).Value = txt_totalAmt.Text;
                        ucmd.Parameters.Add("@PayableAmount", SqlDbType.NVarChar).Value = txt_paidAmt.Text;
                        ucmd.Parameters.Add("@Note", SqlDbType.NVarChar).Value = txt_Note.Text;
                        ucmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value =drp_Status.Text;
                        ucmd.Parameters.Add("@ClosingDate", SqlDbType.NVarChar).Value = txt_closingDate.Text;
                        ucmd.Parameters.Add("@ShowRoom", SqlDbType.NVarChar).Value = drp_Showroom.Text;
                        ucmd.Connection = cn;
                        cn.Open();
                        ucmd.ExecuteNonQuery();
                        ucmd.Clone();
                        cn.Close();
                        Response.Redirect("InwordView.aspx");
                }
             catch (Exception ex)
             {
                 ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + ex.ToString() + "')</script>");
             }

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.Connection = cn;
                cmd.CommandText = "DELETE FROM Inword WHERE No ='" + lb_id.Text + "'";
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("InwordView.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + ex.ToString() + "')</script>");
            }
        }

        protected void txt_closingDate_TextChanged(object sender, EventArgs e)
        {
            try
            {

                Regex rgx = new Regex(@"(\\|-|\.)");
                string FormattedDate = rgx.Replace(txt_closingDate.Text, @"/");

                string[] dateComponents = FormattedDate.Split('/');
                if (dateComponents.Count() >= 3)
                {

                    string day = dateComponents[0].Trim();
                    string month = dateComponents[1].Trim();
                    string year = dateComponents[2].Trim();
                    Regex reg = new Regex("^[0-9]+$");
                    if (reg.IsMatch(day) && reg.IsMatch(month) && reg.IsMatch(year))
                    {

                        //e.Cancel = dd < 1 || dd > 31 || mm < 1 || mm > 12 || yyyy > 2012;   
                        if (day.Length > 0 && month.Length > 0 && year.Length > 0)
                        {
                            decimal mm = Convert.ToDecimal(month.ToString());



                            if (mm >= 1 && mm <= 12)
                            {
                                if (month.Length == 1)
                                {
                                    month = "0" + month;
                                }
                            }
                            else
                            {
                                month = DateTime.Now.ToString("MM");
                            }

                            if (Convert.ToDecimal(day.ToString()) >= 1 && Convert.ToDecimal(day.ToString()) <= 31)
                            {
                                if (day.Length == 1)
                                {
                                    day = "0" + day;
                                }
                            }
                            else
                            {
                                day = DateTime.Now.ToString("dd");
                            }

                            if (year.Length == 2)
                            {
                                year = "20" + year;

                            }


                            txt_closingDate.Text = day + "-" + month + "-" + year;
                           
                            SetFocus(txt_date);
                        }
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Date')</script>");
                        SetFocus(txt_date);

                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Date')</script>");
                    SetFocus(txt_date);
                }

            }
            catch (Exception ex)
            {
                string exp = ex.ToString();
            }
        }

        void fetchShowrooms()
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Showroom"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = cn;
                cn.Open();
                drp_Showroom.DataSource = cmd.ExecuteReader();
                drp_Showroom.DataTextField = "ShowRoom";
                drp_Showroom.DataValueField = "ShowRoom";
                drp_Showroom.DataBind();
                cn.Close();
            }
            drp_Showroom.Items.Insert(0, new ListItem("No", "No"));
        }

    }
}