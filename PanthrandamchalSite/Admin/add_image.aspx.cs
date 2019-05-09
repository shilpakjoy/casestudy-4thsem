using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_add_image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);
            string strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".tmp" || strExtension == ".gif")
            {
                
                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/Images/" + FileUpload1.FileName;
                
            }
            else
            {
                Response.Write("<script>alert('Select a valid image')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please choose an image')</script>");
        }
    }
}