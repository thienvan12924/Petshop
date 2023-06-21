using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GroupProject.Customer
{
    public partial class shoping_cart : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            this.docDL();
            
        }
        private void docDL()
        {
            if (Session["giohang"] == null)
            {
                this.lbl_null.Visible = true;
                this.lbl_null.Text = "Oh no, you haven't bought anything yet";
                return;
            }
                
            DataTable dt = (DataTable)Session["giohang"];
            this.GridView1.DataSource = dt; 
            this.GridView1.DataBind();
            double tong = 0;
            if (dt == null) return;
            else 
            { 
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    double thanhtien = Convert.ToDouble(dt.Rows[i]["soluong"])
                        * Convert.ToDouble(dt.Rows[i]["dongia"]);
                    tong = tong + thanhtien;
                }
            }

            this.lbl_Subtotal.Text = "" + tong;
            this.lbl_Total.Text = "" + tong;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DataTable dt = (DataTable)Session["giohang"];
           
            if (e.CommandName == "btsua")
            {
                GridViewRow row = (GridViewRow)((Button)e.CommandSource).Parent.Parent;
                string mahang = ((Button)e.CommandSource).CommandArgument;            
                int soluong = int.Parse(((TextBox)row.FindControl("txt_soluong")).Text);
                //double dongia = double.Parse(((Label)row.FindControl("txt_total")).Text);
                dt.Rows[row.DataItemIndex]["soluong"] = soluong;   
                Session["giohang"] = dt;
            }
            else
            { 
                GridViewRow row = (GridViewRow)((LinkButton)e.CommandSource).Parent.Parent;
                string mahang = ((LinkButton)e.CommandSource).CommandArgument;                
                dt.Rows[row.DataItemIndex].Delete();
                Session["giohang"] = dt;
            }
            this.docDL();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //int count1 = 0;
            int kq = 0;
            string id_user = Request.Cookies["USERNAME"].Value;
            DataTable dt = (DataTable)Session["giohang"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string mahang = dt.Rows[i]["mahang"].ToString().Trim();
                int soluong = Convert.ToInt32(dt.Rows[i]["soluong"]);
                string check = "select count(*) from DONHANG where ID_User = '" + id_user + "' AND mahang = '" + mahang + "'";
                if (ldc.getPass(check) >= 1) 
                {
                    string up = "update DONHANG set soluong = soluong + " + soluong + " where ID_User = '" + id_user + "' AND mahang = '" + mahang + "'";
                    kq = kq + ldc.themxoasua(up);
                }
                else
                {
                    string sql = "insert into DONHANG(ID_User,mahang,soluong) values('" + id_user + "','" + mahang + "'," + soluong + ")";
                    kq = kq + ldc.themxoasua(sql);
                }               
            }
            if (kq >= 1)
            {
                Session.Clear();
                GridView1.DataSource = null;
                GridView1.DataBind();
                Response.Write("<script>alert('Payment Success')</script>");
            }
            //Server.Transfer("checkout.aspx"); 
        }
    }
}