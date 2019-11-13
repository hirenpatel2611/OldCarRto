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

namespace BIS_Embroidery.Login
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txt_username.Text = Request.Cookies["UserName"].Value;
                txt_password.Attributes["value"] = Request.Cookies["Password"].Value;
                Session["user"] = txt_username.Text;
                Response.Redirect("../Dasbord/Dasbord.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                SqlCommand cmd = new SqlCommand("select * from UserMaster where UserName =@username and Password=@password", cn);
                cmd.Parameters.AddWithValue("@username", txt_username.Text);
                cmd.Parameters.AddWithValue("@password", txt_password.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (DateTime.Now >= new DateTime(2020, 01, 01))
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Licence is Expire on (01/01/2020)')</script>");
                        return;
                    }
                    else
                    {
                        Session["user"] = txt_username.Text;
                        if (rememberchk.Checked)
                        {
                            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                        }
                        else
                        {
                            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                        }
                        Response.Cookies["UserName"].Value = txt_username.Text.Trim();
                        Response.Cookies["Password"].Value = txt_password.Text.Trim();

                        Response.Redirect("../Dasbord/Dasbord.aspx");
                    }
                    string url;
                    /*url = "Company.aspx?uname=" + TextBox1.Text;
                    Response.Redirect(url);*/
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                    SetFocus(txt_password);
                }
        }
    }
}