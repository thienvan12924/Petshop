using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace GroupProject
{
    public class LOPDUNGCHUNG: System.Web.UI.Page
    {
        SqlConnection conn;
        string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\OneDrive - harveyne\Desktop\Project\GroupProject\GroupProject\GroupProject\GroupProject\App_Data\PETSHOP.mdf;Integrated Security=True";

        public LOPDUNGCHUNG()
        {
            conn = new SqlConnection(path);
        }
        private void connect()
        {
            //string path = Page.Server.MapPath("App_Data");
            //path += "\\PETSHOP.mdf";
            //conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security = True");
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\OneDrive - harveyne\Desktop\Project\GroupProject\GroupProject\GroupProject\GroupProject\App_Data\PETSHOP.mdf;Integrated Security=True");
            conn.Open();
        }

        private void dongketnoi()
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }

        public DataTable getData(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                connect();
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
        public int themxoasua(string sql)
        {
            int kq = 0;
            try
            {
                connect();
                SqlCommand cm = new SqlCommand(sql, conn);
                kq = cm.ExecuteNonQuery();
            }
            catch
            {
                kq = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }
        public int getPass(string sql)
        {
            int kq = 0;
            try
            {
                connect();
                SqlCommand cm = new SqlCommand(sql, conn);
                kq = (int)cm.ExecuteScalar();
            }
            catch
            {
                kq = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }
        public DataTable getDataID(string ID)
        {
            DataTable dt = new DataTable();
            try
            {
                connect();
                string sql = "select * from MATHANG where mahang = '" + ID + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
        public DataTable getDataOder(string ID,string User)
        {
            DataTable dt = new DataTable();
            try
            {
                connect();
                string sql = "select * from DONHANG where mahang = '" + ID + "' AND ID_User = '"+User+"'";
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
    }
}