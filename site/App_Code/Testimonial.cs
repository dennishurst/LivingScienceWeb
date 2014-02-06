using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Testimonial
/// </summary>
public class Testimonial
{
    public string Headline;
    public string Description;
    public string TestimonialText;
    public string GivenBy;
    public DateTime GivenOnDate;
    public string VideoID;
    public string OnPage;



	public Testimonial()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string MonthStr()
    {
        return Utility.MonthStr(GivenOnDate);

    }


}