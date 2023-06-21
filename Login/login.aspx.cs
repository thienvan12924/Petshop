using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace GroupProject.Login
{
    
    public partial class login : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        int rollID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear Cookie
            if (Response.Cookies["USERNAME"] != null)
            {
                int cookieCount = HttpContext.Current.Request.Cookies.Count;
                for (var i = 0; i < cookieCount; i++)
                {
                    var cookie = HttpContext.Current.Request.Cookies[i];
                    if (cookie != null)
                    {
                        var expiredCookie = new HttpCookie(cookie.Name)
                        {
                            Expires = DateTime.Now.AddDays(-1),
                            Domain = cookie.Domain
                        };
                        HttpContext.Current.Response.Cookies.Add(expiredCookie); // overwrite it
                    }
                }
                // clear cookies server side
                HttpContext.Current.Request.Cookies.Clear();
                Session.Clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkAccount() == true)
            {
                setID();
                switch (rollID)
                {
                    case 1:
                        Response.Redirect("~/Admin/manage-mathang.aspx");
                        break;
                    case 2:
                        Response.Redirect("~/Customer/index.aspx");
                        break;
                }
            }
            else
            {
                Response.Write("<script>alert('Tài khoản hoặc mật khẩu không đúng')</script>");
            }
        }
        public bool checkAccount()
        {
            string acc = Request["acc"];
            string pass = Request["pass"];
            string sql = "select COUNT (*) from KHACHHANG where ID_User ='" + acc + "' and passworld = '" + pass + "'";
            int result = ldc.getPass(sql);

            if (result >= 1)
            {
                HttpCookie CookieUser = new HttpCookie("USERNAME", acc);
                HttpCookie CookiePass = new HttpCookie("PASSWORD", pass);
                Response.Cookies.Add(CookieUser);
                Response.Cookies.Add(CookiePass);
                return true;
            }

            else
                return false;

        }
        public void setID()
        {
            string acc = Request["acc"];
            string pass = Request["pass"];
            string sql = "select Role_ID from KHACHHANG where ID_User = '" + acc + "'";
            rollID = ldc.getPass(sql);
        }
    }
}