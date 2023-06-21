using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.Login
{
    public partial class signup : System.Web.UI.Page
    {
        LOPDUNGCHUNG ldc = new LOPDUNGCHUNG();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string acc = Request["acc"];
            string pass = Request["pass"];
            string subpass = Request["subpass"];

            string check = "select count(*) from KHACHHANG where ID_User = '" + acc + "'";
            if (ldc.getPass(check) >= 1)
                lbl_TB.Text = "Tài khoản đã tồn tại";
            else
            {
                if (pass != subpass)
                    lbl_TB.Text = "Mật khẩu không trùng khớp";
                else
                {
                    string sql = "insert into KHACHHANG(ID_User,Passworld,Role_ID) values('" + acc + "','" + pass + "',2)";
                    if (ldc.themxoasua(sql) >= 1)
                        lbl_TB.Text = "Đăng ký thành công";
                    else
                        lbl_TB.Text = "Đăng ký thất bại";
                }
            }
        }
    }
}