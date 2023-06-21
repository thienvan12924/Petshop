using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace GroupProject.Admin
{
    public partial class add_mathang : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string mahang = Request["productID"];
                string tenhang = Request["Name"];
                string mota = Request["Note"];
                var dongia = Request["Price"];
                string hinh = Request["Image"];
                var maloai = Request["IDLoai"];

                string sql = "insert into mathang values('" + mahang + "',N'" + tenhang + "',N'" + mota + "'," + dongia + ",'" + maloai + "',N'" + hinh + "')";
                int k = ldc.themxoasua(sql);
                if (k >= 1)
                {
                    Server.Transfer("manage-mathang.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Error')script>");
                }
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}