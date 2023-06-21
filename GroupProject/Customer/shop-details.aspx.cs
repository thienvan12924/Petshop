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
    public partial class shop_details : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        DataTable dt;
        DataRow dataRow;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["mh"] == null)
                q = "select * from mathang";
            else
            {
                string mahang = Context.Items["mh"].ToString();
                q = "select * from mathang where MaHang = '" + mahang + "'";
            }
            try
            {
                this.DataList1.DataSource = ldc.getData(q);
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        private void TaoGio()
        {
            dt = new DataTable();
            dt.Columns.Add("mahang");
            dt.Columns.Add("tenhang");
            dt.Columns.Add("soluong");
            dt.Columns.Add("dongia");
            dt.Columns.Add("hinh");
            dt.Columns.Add("total");
            Session["giohang"] = dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["USERNAME"] == null) 
                Server.Transfer("../Login/login.aspx");
            Button mua = (Button)sender;
            string mahang = mua.CommandArgument.ToString();
            DataTable dv = new DataTable();
            string sql = "select hinh from MATHANG where mahang = '" + mahang + "'";
            dv = ldc.getData(sql);

            DataListItem item = (DataListItem)mua.Parent;
            string soluong = Request["soluong"];
            string dongia = ((Label)item.FindControl("Label2")).Text;
            string tenhang = ((Label)item.FindControl("Label3")).Text;
            string hinh = dv.Rows[0]["hinh"].ToString();
            dt = (DataTable)Session["giohang"];
            bool tim = false;
            if (dt == null) TaoGio();
            foreach (DataRow dataRow in dt.Rows)
            {
                if (dataRow["mahang"].Equals(mahang))
                {
                    dataRow["soluong"] = Convert.ToInt32(dataRow["soluong"])
                        + Convert.ToInt32(soluong);
                    tim = true; break;
                }
            }
            if (!tim)
            {
                dataRow = dt.NewRow();
                dataRow["mahang"] = mahang;
                dataRow["tenhang"] = tenhang;
                dataRow["soluong"] = soluong;
                dataRow["dongia"] = dongia;
                dataRow["total"] = Convert.ToInt32(dataRow["soluong"]) * Convert.ToDouble(dataRow["dongia"]);
                dataRow["hinh"] = hinh;
                dt.Rows.Add(dataRow);
            }
            Session["giohang"] = dt;
            Server.Transfer("shop-grid.aspx");
        }
    }
}