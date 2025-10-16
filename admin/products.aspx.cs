using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laptop_t.admin
{
    public partial class products : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString; // Connection String
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrd();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillgrd()
        {
            getcon();
            da = new SqlDataAdapter("select * from prd_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "edite")
            {
                Response.Redirect("editprd.aspx?id=" + Convert.ToInt32(e.CommandArgument));
            }
            else
            {
                getcon();
                cmd=new SqlCommand("delete from prd_tbl where Id='"+Convert.ToInt32(e.CommandArgument)+"'", con);
                i=cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Product Deleted!!!')</script>");
                }
                fillgrd();
            }
        }
    }
}