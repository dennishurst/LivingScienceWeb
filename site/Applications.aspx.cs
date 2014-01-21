﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Applications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);

    }
    protected void cmdSend_Click(object sender, EventArgs e)
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