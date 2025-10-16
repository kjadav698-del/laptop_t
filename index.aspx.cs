using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laptop_t
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter ad;
        DataSet ds;
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtem.Text != null && txtpass.Text != null)
            {
                getcon();
                //string query = "SELECT COUNT(*) FROM user_tbl WHERE Email='" + txtun.Text + "' AND Password='" + txtpass.Text + "'";
                //"SELECT COUNT(*) FROM [user_tbl] WHERE Email='" + txtun.Text + "' AND Password='" + txtpass.Text + "'";

                cmd = new SqlCommand("select count(*) from user_tbl where Email='" + txtem.Text + "' AND Password='" + txtpass.Text + "'", con);

                int i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["user"]=txtem.Text;
                    ad = new SqlDataAdapter("select * from user_tbl where Email='" + Session["user"] +"'",con);
                    ds = new DataSet();
                    ad.Fill(ds);
                    Session["uid"] = ds.Tables[0].Rows[0]["Id"];
                    Response.Redirect("home.aspx");
                }
            }
        }
    }
}