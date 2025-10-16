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
    public partial class add_product : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString; // Connection String
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete
        string fnm;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillcat();
            }
        }
        void getcon()
        {
            con=new SqlConnection(s);
            con.Open();
        }
        void fillcat()
        {
            getcon();
            da = new SqlDataAdapter("select * from cat_tbl", con);
            ds=new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                dlcat.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        void upload()
        {
            if (fldimg.HasFile)
            {
                fnm="product/"+fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtdc.Text = "";
            txtpn.Text = "";
            txtpr.Text = "";
            dlcat.SelectedIndex = 0;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            upload();
            if (Button1.Text== "Add Product")
            {
                cmd = new SqlCommand("insert into prd_tbl (cat_id, P_Name, P_sp, P_Image, P_Price) values ('" + ViewState["cid"] +"','"+txtpn.Text+"','"+txtdc.Text+"','"+fnm+"','"+txtpr.Text+"')", con);
                i=cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Product added!!!')</script>");
                }
                clear();
            }
        }

        protected void dlcat_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from cat_tbl where Com_Name='"+dlcat.SelectedItem.ToString()+"'",con);
            ds = new DataSet();
            da.Fill(ds);
            ViewState["cid"] = Convert.ToInt32(ds.Tables[0].Rows[0][0]);

        }
    }
}