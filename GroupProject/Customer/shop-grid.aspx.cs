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

    public partial class shop_grid : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;

            try{
                string sql = "select * from LOAIHANG";
                this.DataList1.DataSource = ldc.getData(sql);
                this.DataList1.DataBind();

            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from mathang";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from mathang where MaLoai = '" + maloai + "'";
            }
            try
            {             
                CollectionPager1.PageSize = 15;
                CollectionPager1.DataSource = ldc.getData(q).DefaultView;
                CollectionPager1.BindToControl = DataList2;
                DataList2.DataSource = CollectionPager1.DataSourcePaged;
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }

        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("shop-grid.aspx");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            string mahang = ((LinkButton)sender).CommandArgument;
            Context.Items["mh"] = mahang;
            Server.Transfer("shop-details.aspx");
        }
    }
}