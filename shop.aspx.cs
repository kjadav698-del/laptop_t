using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace laptop_t
{
    public partial class shop : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;  
        SqlDataAdapter da; 
        DataSet ds; 
        SqlCommand cmd; 
        int i;
        PagedDataSource pg = new PagedDataSource();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("index.aspx");
            }
            getcon();
            filldatalist();
            //Response.Redirect("Viewdetalis.aspx");
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void filldatalist()
        {
            getcon();
            da = new SqlDataAdapter("select * from prd_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.AllowPaging = true;
            pg.PageSize = 6;
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName =="view")
            {
                Response.Redirect("Viewdetalis.aspx?id=" + e.CommandArgument.ToString());
            }
            else
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["pid"] = id;
                da = new SqlDataAdapter("select * from prd_tbl where Id='" + ViewState["pid"] +"'", con);
                ds = new DataSet();
                da.Fill(ds);
                int q = 1;
                string pname = ds.Tables[0].Rows[0]["P_Name"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[0]["P_Price"]);
                int total = q * price;
                string image = ds.Tables[0].Rows[0]["P_Image"].ToString();

                cmd = new SqlCommand("insert into addto_cart (usre_id, cart_prod_id, cart_prod_name, cart_prod_quant, cart_prod_price, cart_prod_total, cart_prod_image) values ('" + Session["uid"] + "','" + ViewState["pid"] +"','"+pname+"','"+q+"','"+price+"','"+total+"','"+image+"')", con);
                i = cmd.ExecuteNonQuery();
                if(i>0)
                {
                    Response.Write("<script>alert('Product Added to Cart')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Product Not Added to Cart')</script>");
                }
            }
        }
    }

}