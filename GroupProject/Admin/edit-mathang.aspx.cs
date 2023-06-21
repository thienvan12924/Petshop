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
    public partial class edit_mathang : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        DataTable table;
        string mahang;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.mahang = Request.QueryString.Get("mahang");
            if (!IsPostBack)
            {
                loadfrom(mahang);
            }
        }
        private void loadfrom(string mahang)
        {
            table = new DataTable();
            table = ldc.getDataID(mahang);

            this.productID.Text = Request.QueryString.Get("mahang");
            this.Name.Text = table.Rows[0]["tenhang"].ToString();
            this.Note.Text = table.Rows[0]["mota"].ToString();
            this.Price.Text = table.Rows[0]["dongia"].ToString();
            this.IDLoai.Text = table.Rows[0]["maloai"].ToString();
            this.Image.Text = table.Rows[0]["hinh"].ToString();                       
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                string mahang = Request.QueryString.Get("mahang");
                string tenhang = Name.Text;
                string mota = Note.Text;
                var dongia = Price.Text;
                string maloai = IDLoai.Text;
                string hinh = Image.Text;

                string sql = "update mathang set tenhang = N'" + tenhang + "', mota = N'" + mota + "',dongia = " + dongia + ",maloai = '" + maloai + "',hinh = N'" + hinh + "' where mahang = '" + mahang + "'";
                int kq = ldc.themxoasua(sql);
                if (kq >= 1)
                {
                    Server.Transfer("manage-mathang.aspx");
                }

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}