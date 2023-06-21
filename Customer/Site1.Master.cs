using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.Customer
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["USERNAME"] == null)
                this.lbl_login.Text = "Login";
            else
            {
                string acc = Request.Cookies["USERNAME"].Value;
                this.lbl_login.Text = acc;
            }
                
        }
    }
}