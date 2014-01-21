using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        if (Utility.SendMail(Request))
        {
            Response.Redirect("ThankYou.aspx");
        }
        else
        {
            Response.Redirect("Error.aspx");
        }
    }
}