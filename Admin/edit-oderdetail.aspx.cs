using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace GroupProject.Admin
{
    public partial class edit_oderdetail : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        DataTable table;
        string mahang, user1;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.mahang = Request.QueryString.Get("mahang");
            this.user1 = Request.QueryString.Get("ID_User");
            if (!IsPostBack)
            {
                loadfrom(mahang,user1);
            }
        }
        private void loadfrom(string mahang, string user1)
        {
            table = new DataTable();
            table = ldc.getDataOder(mahang, user1);

            this.productID.Text = Request.QueryString.Get("mahang");
            this.User.Text = Request.QueryString.Get("ID_User");
            this.Quality.Text = table.Rows[0]["soluong"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mahang = Request.QueryString.Get("mahang");
            string user1 = Request.QueryString.Get("ID_User");
            var soluong = Quality.Text;

            string sql = "update DONHANG set soluong = " + soluong + " where mahang = '" + mahang + "' AND ID_User = '" + user1 + "'";
            int kq = ldc.themxoasua(sql);
            if (kq >= 1)
                Server.Transfer("manage-oder.aspx");
        }
    }
}