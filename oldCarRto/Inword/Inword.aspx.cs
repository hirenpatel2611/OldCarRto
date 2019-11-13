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
    public partial class Inword : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
        SqlConnection cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
        SqlCommand vcmd = new SqlCommand();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) { Response.Redirect("../Login/Login.aspx"); } else { }

            cmd.Connection = cn;
            int r;
            cn.Open();
            SqlCommand scmd = new SqlCommand("Select max(No) from Inword", cn);
            SqlDataReader sdr = scmd.ExecuteReader();
            if (sdr.Read())
            {
                string d = sdr[0].ToString();
                if (d == "")
                {
                    lb_id.Text = "1";//set the value in textbox which name is id
                }
                else
                {
                    r = Convert.ToInt32(sdr[0].ToString());
                    r = r + 1;
                    lb_id.Text = r.ToString();
                }

            }
            cn.Close();


            if (txt_date.Text == "")
            {
                txt_date.Text = DateTime.Now.ToString("dd-MM-yyyy");
                lb_date.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
            if(drp_Showroom.Text == "")
            {
            fetchShowrooms();
            }
        }

        protected void OnTextChangedDate(object sender, EventArgs e)
        {
            try
            {

                Regex rgx = new Regex(@"(\\|-|\.)");
                string FormattedDate = rgx.Replace(txt_date.Text, @"/");

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
                           

                            txt_date.Text = day + "-" + month + "-" + year;
                            lb_date.Text = year + "-" + month + "-" + day;
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

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (txt_date.Text != "" && txt_vehicleNo.Text != "" && txt_name.Text != "" && txt_contact.Text != "")
            {
                try
                {
                    vcmd.Connection = cn1;
                    vcmd.CommandType = CommandType.Text;
                    vcmd.CommandText = "select * from Inword where No='" + lb_id.Text + "'";
                    cn1.Open();
                    SqlDataReader sd = vcmd.ExecuteReader();
                    if (sd.HasRows)
                    {
                        while (sd.Read())
                        {
                            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Iteam is already Exist')</script>");
                        }

                    }
                    else
                    {
                        string status = "Pending";
                        cn.Open();
                        cmd.CommandText = "insert into Inword (No,Date,Date0,Name,Contact,Address,VehicleNo,ChassisNo,VehicleType,RTO,RTOFee,RTOReceiptNo,Works,TotalAmount,PayableAmount,Status,ShowRoom,Remarks) values ('" + lb_id.Text + "','" + txt_date.Text + "','" + lb_date.Text + "','" + txt_name.Text + "','" + txt_contact.Text + "','" + txt_address.Text + "','" + txt_vehicleNo.Text + "','" + txt_chassis.Text + "','" + txt_vehicleType.Text + "','" + txt_rto.Text + "','" + txt_rtoFee.Text + "','" + txt_rtoReceiptNo.Text + "','" + txt_work.Text + "','" + txt_totalAmt.Text + "','" + txt_paidAmt.Text + "','" + status.ToString() + "','" + drp_Showroom.Text + "','"+ txt_remarks.Text +"')";
                        cmd.ExecuteNonQuery();
                        cmd.Clone();
                        cn.Close();

                        Response.Redirect("InwordView.aspx");
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('"+ ex.ToString() +"')</script>");
                }

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Empty Field is not Allow.')</script>");
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