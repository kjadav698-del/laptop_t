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
   
    public partial class WebForm3 : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter ad;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void getcon()
        {
            con=new SqlConnection(s);
            con.Open();
        }
        void uploandimg()
        {
            if (fldimg.HasFile)
            {
                fnm="img/"+fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text== "Register")
            {
                getcon();  
                uploandimg();
                cmd = new SqlCommand("insert into user_tbl (Name,Email,Password,Address,City,Gender,Image)"+" values ('"+txtus.Text+"','"+txtem.Text+"','"+txtpass.Text+"','"+txtads.Text+"','"+DropDownList1.SelectedValue+"','"+ RadioButtonList1.Text+ "','"+fnm+"') ",con);
                cmd.ExecuteNonQuery();
                Response.Redirect("index.aspx");
                

            }
        }
    }
}