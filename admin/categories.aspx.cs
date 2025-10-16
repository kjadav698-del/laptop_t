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
    public partial class categories : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString; // Connection String
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgrd();
        }
        void getcon()
        {
            con=new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txtcn.Text = "";
        }
        void fillgrd()
        {
            getcon();
            da =new SqlDataAdapter("select * from cat_tbl", con);
            ds=new DataSet();
            da.Fill(ds);
            GridView1.DataSource=ds;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Add Category")
            {
                getcon();
                cmd = new SqlCommand("insert into cat_tbl (Com_Name) values ('"+txtcn.Text+"')", con);
                i=cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Category added!!!')</script>");
                }
                clear();
                fillgrd();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "remove")
            {
                getcon();
                cmd = new SqlCommand("delete from cat_tbl where Id='" + Convert.ToInt32(e.CommandArgument) + "'", con);
                i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Category Deleted!!!')</script>");
                }
                fillgrd();
            }
        }
    }
}