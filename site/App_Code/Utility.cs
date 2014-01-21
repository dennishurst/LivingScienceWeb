using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Xml;
using System.Xml.Linq;
using System.Net.Mail;


/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{
    public Utility()
    {
    }

    //
    // TODO: Add constructor logic here
    //

    public static Dictionary<string,Testimonial> PopulateTestimonials()
    {

        Dictionary<string,Testimonial> aTestimonials = new Dictionary<string,Testimonial>();
        Testimonial oTestimonial;


        //Load xml
        XDocument xdoc = XDocument.Load("D:\\SkyDrive\\Documents\\Code\\livingscience.com\\site\\App_Data\\Testimonials.xml");

        var testimonials = from r in xdoc.Descendants("Testimonial")
                           select new
                           {
                               Headline = r.Element("Headline").Value,
                               Description = r.Element("Description").Value,
                               TestimonialText = r.Element("TestimonialText").Value,
                               GivenBy = r.Element("GivenBy").Value,
                               GivenOnDate = r.Element("GivenOnDate").Value,
                               VideoID = r.Element("VideoID").Value,
                           };
        foreach (var r in testimonials)
        {
            oTestimonial = new Testimonial();
            oTestimonial.Headline = r.Headline;
            oTestimonial.Description = r.Description;
            oTestimonial.TestimonialText = r.TestimonialText;
            oTestimonial.GivenBy = r.GivenBy;
            DateTime.TryParse(r.GivenOnDate, out oTestimonial.GivenOnDate);
            oTestimonial.VideoID = r.VideoID;
            aTestimonials.Add(oTestimonial.VideoID, oTestimonial);
        }


        return aTestimonials;
    }


    public static bool SendMail(HttpRequest Request)
    {


        StringBuilder sbBody = new StringBuilder();

        String[] fKeys = Request.Form.AllKeys;

        sbBody.Append(string.Format("Page name:{0} \r\n", Request.RawUrl));

        for (int loop1 = 0; loop1 < fKeys.Length; loop1++)
        {
            if (fKeys[loop1] == "__VIEWSTATE")
            {
                //do nothing
            }
            else if (fKeys[loop1] == "__EVENTVALIDATION")
            {
                //do nothing
            }
            else
            {
                sbBody.Append(string.Format("{0} : {1} \r\n", fKeys[loop1], Request.Form[fKeys[loop1]]));
            }
        }

        string sBody = sbBody.ToString();

        MailMessage oMsg = new MailMessage("donotreply@ascdi.com", "dennis.hurst@outlook.com");
        oMsg.Subject = "Application request";
        oMsg.Body = sBody;
        oMsg.IsBodyHtml = false;


        SmtpClient oSMTP = new SmtpClient();

        try
        {
            oSMTP.Send(oMsg);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }

        
    }



    public static string GetTestimonials(ref Dictionary<string,Testimonial> aTestimonials)
    {
        StringBuilder sbTestimonials = new StringBuilder();


        sbTestimonials.Append("<h3>Testimonials</h3>");

        foreach (KeyValuePair<string, Testimonial> kvp in aTestimonials)
        {
            sbTestimonials.Append("<blockquote><div>");
            sbTestimonials.Append("<p>");
            sbTestimonials.Append( kvp.Value.TestimonialText   );
            sbTestimonials.Append("</p>");
            sbTestimonials.Append("<em></em></div>");
            sbTestimonials.Append("<p><span>");
            sbTestimonials.Append(kvp.Value.GivenBy);
            sbTestimonials.Append("</span></p>");
            sbTestimonials.Append("<a href=\"/site/VideoPlayer.aspx?VideoID=");
            sbTestimonials.Append(kvp.Value.VideoID);
            sbTestimonials.Append("\">" + "Watch the video</a>");
            sbTestimonials.Append("</blockquote>");

        }

        return sbTestimonials.ToString();
    }


}