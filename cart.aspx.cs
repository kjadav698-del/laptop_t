using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laptop_t
{
    public partial class cart : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString; 
        SqlConnection con;  
        SqlDataAdapter da;
        DataSet ds; 
        SqlCommand cmd; 
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("index.aspx");
            }
            getcon();
            fillgrd();
            checkcart();
        }
        void checkcart()
        {
            getcon();
            da = new SqlDataAdapter("select * from addto_cart where usre_id='" + Session["uid"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count != null)
            {
                Button3.Enabled = true;
                Button3.Visible = true;

            }
            else
            {
                Button3.Enabled = false;
                Button3.Visible = false;
            }

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillgrd()
        {
            getcon();
            da = new SqlDataAdapter("select * from addto_cart where usre_id='" + Session["uid"] +"'",con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "remove")
            {
                getcon();
                cmd = new SqlCommand("delete from addto_cart where Id='" + Convert.ToInt32(e.CommandArgument) + "'", con);
                i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Remove frome the cart!!!')</script>");
                }
                fillgrd();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    int cart_prod_id = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                    TextBox txtQty = (TextBox)row.FindControl("TextBox1");

                    int quantity = 1;
                    int.TryParse(txtQty.Text, out quantity);
                    if (quantity < 1) quantity = 1;

                    cmd = new SqlCommand("UPDATE addto_cart SET cart_prod_quant='" + quantity + "', cart_prod_total=(cart_prod_price * '" + quantity + "') WHERE cart_prod_id='" + cart_prod_id + "'", con);
                    cmd.ExecuteNonQuery();
                }
            }
            fillgrd();
        }
    }
}