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
    public partial class managa_mathang : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTable();
        }
        void loadTable()
        {
            string sql = "select * from mathang";
            this.GridView.DataSource = ldc.getData(sql);
            this.GridView.DataBind();
        }

        protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView.PageIndex = e.NewPageIndex;
            GridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("add-mathang.aspx");
        }

        protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = this.GridView.DataKeys[e.RowIndex].Value.ToString();
            string sql = "delete from mathang where mahang = '" + id + "'";
            int k = ldc.themxoasua(sql);
            loadTable();
        }
    }
}