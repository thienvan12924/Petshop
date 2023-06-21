using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;




using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace GroupProject.Customer
{
    
    public partial class index : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            string sql = "select * from mathang";
            //DataList1.DataSource = ldc.getData(sql);
            //DataList1.DataBind();

            CollectionPager1.PageSize = 15;
            CollectionPager1.DataSource = ldc.getData(sql).DefaultView;
            CollectionPager1.BindToControl = DataList1;
            DataList1.DataSource = CollectionPager1.DataSourcePaged;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string mahang = ((LinkButton)sender).CommandArgument;
            Context.Items["mh"] = mahang;
            Server.Transfer("shop-details.aspx");

        }
    }
}