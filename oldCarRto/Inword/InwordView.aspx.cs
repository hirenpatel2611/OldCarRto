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
    public partial class InwordView : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["BIS_Embroidery_ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) { Response.Redirect("../Login/Login.aspx"); } else { }
            if (txt_search.Text == "")
            {
                LoadData();
            }
        }

        protected void btn_addnew_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inword.aspx");
        }

        void LoadData()
        {

            SqlCommand cmd = new SqlCommand("select * from Inword order by No DESC", cn);

                try
                {
                    cn.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    list_customer.DataSource = ds;
                    list_customer.DataBind();
                }
                catch (Exception ex)
                {
                    //...
                }
                finally
                {
                    cn.Close();
                }
            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from Inword WHERE (No like  '%" + txt_search.Text + "%' or Date like  '%" + txt_search.Text + "%' or Name like  '%" + txt_search.Text + "%'or Contact like  '%" + txt_search.Text + "%'or VehicleNo like  '%" + txt_search.Text + "%' or RTO like '%"+ txt_search.Text +"%') order by No DESC", cn);
            try
            {
                cn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                list_customer.DataSource = ds;
                list_customer.DataBind();
            }
            catch (Exception ex)
            {
                //...
            }
            finally
            {
                cn.Close();
            }
        
        }
    }
}