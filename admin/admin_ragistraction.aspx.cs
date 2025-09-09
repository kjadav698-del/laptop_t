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
    public partial class WebForm1 : System.Web.UI.Page
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
        void clear()
        {
            txtem.Text = " ";
            txtnum.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Button1.Text == "register")
            {
                getcon();

                cmd = new SqlCommand("insert into admin_tbl(Name,Gender,Email,City,Password) values ('" + txtnum.Text + "','" + rdegen.Text + "','" + txtem.Text + "','" + dlct.SelectedValue+ "','"+ txtpw.Text+ "')", con);
                cmd.ExecuteNonQuery();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("login_admin.aspx");
                }
            }
        }
    }
}