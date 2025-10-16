using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace laptop_t.admin
{
    public partial class login_admin : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString; // Connection String
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete
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

                cmd = new SqlCommand("select count(*) from admin_tbl where Email='" + txtem.Text + "' AND Password='" + txtpass.Text + "'", con);

                int i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Response.Redirect("dashboard.aspx");
                }
            }
        }
    }
}