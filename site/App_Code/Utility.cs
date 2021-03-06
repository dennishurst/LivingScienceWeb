﻿using System;
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

    public static Dictionary<string,Testimonial> PopulateTestimonials(string sAppPath)
    {

        Dictionary<string,Testimonial> aTestimonials = new Dictionary<string,Testimonial>();
        Testimonial oTestimonial;


        //Load xml
        XDocument xdoc = XDocument.Load(sAppPath +   "\\Testimonials.xml");

        var testimonials = from r in xdoc.Descendants("Testimonial")
                           select new
                           {
                               Headline = r.Element("Headline").Value,
                               Description = r.Element("Description").Value,
                               TestimonialText = r.Element("TestimonialText").Value,
                               GivenBy = r.Element("GivenBy").Value,
                               GivenOnDate = r.Element("GivenOnDate").Value,
                               VideoID = r.Element("VideoID").Value,
                               OnPage = r.Element("OnPage").Value,
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
            oTestimonial.OnPage = r.OnPage;
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

        MailMessage oMsg = new MailMessage("donotreply@ascdi.com", "office@livingscience.com");
        oMsg.CC.Add("dennis.hurst@outlook.com");
        //oMsg.CC.Add("lancedavis@livingscience.com");
        oMsg.Subject = "Application request - Living Science Web";
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


    public static string GetTestimonials(string FilePath, ref Dictionary<string, Testimonial> aTestimonials)
    {
        string sCurrentFile = "";
        if (FilePath == "*")
        {
            sCurrentFile = ",";
        }
        else
        {
            int iFileStart = FilePath.LastIndexOf("/") + 1;
            int iFileEnd = FilePath.LastIndexOf(".");
            sCurrentFile = FilePath.Substring(iFileStart, iFileEnd - iFileStart);

            

        }

        StringBuilder sbTestimonials = new StringBuilder();


        sbTestimonials.Append("<h3>Testimonials</h3>");
        bool bInclude = true;
        foreach (KeyValuePair<string, Testimonial> kvp in aTestimonials)
        {
            if (kvp.Value.OnPage.Trim() == "")
                if (FilePath == "*")
                    bInclude = true;            //Show everything if the FilePath is *
                else
                    bInclude = false;           //Else, only show specified pages  
            else
            {
                if (kvp.Value.OnPage.IndexOf(sCurrentFile) > -1)
                    bInclude = true;
                else
                    bInclude = false;

            }

            if (bInclude)
            {
                sbTestimonials.Append("<blockquote><div>");
                sbTestimonials.Append("<p>");
                sbTestimonials.Append(kvp.Value.TestimonialText);
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
        }

        return sbTestimonials.ToString();


    }


    public static string MonthStr(DateTime InDate)
    {
        string sMon = "Jan";

        switch (InDate.Month)
        {
            case 1:
                sMon = "Jan";
                break;

            case 2:
                sMon = "Feb";
                break;

            case 3:
                sMon = "Mar";
                break;

            case 4:
                sMon = "Apr";
                break;

            case 5:
                sMon = "May";
                break;

            case 6:
                sMon = "Jun";
                break;

            case 7:
                sMon = "Jul";
                break;

            case 8:
                sMon = "Aug";
                break;

            case 9:
                sMon = "Sep";
                break;

            case 10:
                sMon = "Oct";
                break;

            case 11:
                sMon = "Nov";
                break;

            case 12:
                sMon = "Dec";
                break;
        }

        return sMon;



    }



    public static string GetTestimonials(ref Dictionary<string,Testimonial> aTestimonials)
    {
        return GetTestimonials("*", ref aTestimonials);
    }


}