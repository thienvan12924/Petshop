using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GroupProject.Customer
{
    public partial class history_cart : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            loadData();
        }

        void loadData()
        {
            if (Request.Cookies["USERNAME"] == null)
            {
                this.lbl_null.Visible = true;
                this.lbl_null.Text = "Oh no, You need login to view History cart";
                return;
            }
            
            string ID_User = Request.Cookies["USERNAME"].Value.Trim();
            string sql = "select hinh, tenhang, dongia, soluong, soluong * dongia as thanhtien from DONHANG d, MATHANG m where ID_User = '" + ID_User + "' AND d.mahang = m.mahang";
            this.GridView1.DataSource = ldc.getData(sql);
            this.GridView1.DataBind();

            if (GridView1.Rows.Count == 0)
            {
                this.lbl_null.Visible = true;
                this.lbl_null.Text = "Oh no, you haven't bought anything yet";
            }

            double tong = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                string thanhtien = ((Label)row.FindControl("lbl_thanhtien")).Text;
                tong = tong + Convert.ToDouble(thanhtien);
            }

            if (GridView1.Rows.Count > 0)
            {
                this.lbl_total.Visible = true;
                this.lbl_total.Text = "Total Price Cart: " + tong.ToString();
            }
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}