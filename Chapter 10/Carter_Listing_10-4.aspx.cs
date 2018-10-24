using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CarterSecureSafeWebsite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=127.0.0.1;Initial Catalog=CarterSecureSafe;Integrated Security=False;Uid=sa;Pwd=MyPa$$w0rd123");
            string qry = "SELECT * FROM Users WHERE UserName='" + Login1.UserName + "'AND UserPassword='" + Login1.Password + "' ";
            SqlDataAdapter adapter = new SqlDataAdapter(qry, con);
            DataTable datatable = new DataTable();
            adapter.Fill(datatable);
            if (datatable.Rows.Count >= 1)
            {
                Label1.Visible = false;
                //Label1.Text = datatable.Rows[0].Field<string>(1);
                
                //Response.Redirect("Welcome.aspx?Parameter=" + Label1.Text);
                Session["Parameter"] = datatable.Rows[0].Field<string>(1);
                // Set a break point at Redirect, and check to make value is assigned 
                // to Session["Parameter"] before redirecting.
                Response.Redirect("Welcome.aspx");
            }
        }  
    }
}
