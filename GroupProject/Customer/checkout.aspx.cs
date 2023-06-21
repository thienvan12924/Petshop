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
    public partial class checkout : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count1 = 0;
            string id_user = Request.Cookies["USERNAME"].Value;
            DataTable dt = (DataTable)Session["giohang"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string mahang = dt.Rows[i]["mahang"].ToString();
                int soluong = Convert.ToInt32(dt.Rows[i]["soluong"]);
                string sql = "insert into donhang values('" + id_user + "','" + mahang + "'," + soluong + ")";
                int kq = ldc.themxoasua(sql);
                if (kq >= 1)
                    count1++;
            }
            if (count1 == dt.Rows.Count)
            {
                Session.Clear();
                Response.Write("<script>alert('Payment Success')</script>");
            }
        }
    }
}