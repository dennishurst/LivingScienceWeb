using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VideoPlayer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            string sVideoID = Request.QueryString["VideoID"];

            System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];


            Testimonial oTestimonial = aTestimonials[sVideoID];


            litVideoID.Text = oTestimonial.VideoID;
            
            litHeadline.Text = oTestimonial.Headline;

            litDescription.Text = oTestimonial.Description;
            litGivenBy.Text = oTestimonial.GivenBy;

            litDate.Text = string.Format("<time datetime=\"{0}-{1}-{2}\">{3}</time></p><p class=\"numb\">{4}", 
                oTestimonial.GivenOnDate.Year.ToString(), 
                oTestimonial.GivenOnDate.Month.ToString(),
                oTestimonial.GivenOnDate.Day.ToString(),
                oTestimonial.GivenOnDate.Day.ToString(),
                oTestimonial.MonthStr() );

            litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
        }

        catch (Exception ex)
        {
            Response.Redirect("default.aspx");
        }

    }
}