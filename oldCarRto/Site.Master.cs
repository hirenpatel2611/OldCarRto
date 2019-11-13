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


namespace BIS_Embroidery
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) { Response.Redirect("./Login/Login.aspx"); } else {}
          
        }

        protected void btn_LogOut_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Company"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["FinYear"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("../Login/Login.aspx");
        }

    }
}