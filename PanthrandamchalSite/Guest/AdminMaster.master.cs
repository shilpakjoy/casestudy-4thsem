using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        cmd.Parameters.Add("@password", pswdtxt.Text);
        cmd.Parameters.Add("@username", unametxt.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"]=unametxt.Text;
            if(dt.Rows[0][3].ToString()== "Admin")
            {
                Response.Redirect("~/Admin/HomeAdmin.aspx");
            }

            else
            {
                Response.Redirect("~/User/userhome.aspx");
            }


            
        }
    }
}
