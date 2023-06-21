using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GroupProject.Admin
{
    public partial class manage_oder : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTable();
        }

        void loadTable()
        {
            string sql = "select * from DONHANG";
            this.GridView.DataSource = ldc.getData(sql);
            this.GridView.DataBind();
        }

        protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = this.GridView.DataKeys[e.RowIndex].Value.ToString();
            string sql = "delete from DONHANG where ID_User = " + id;
            int k = ldc.themxoasua(sql);
            loadTable();
        }

        protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView.PageIndex = e.NewPageIndex;
            GridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("add-oder.aspx");
        }
    }
}