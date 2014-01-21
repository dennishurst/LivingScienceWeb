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



	public Testimonial()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string MonthStr()
    {
        string sMon = "Jan";

        switch (GivenOnDate.Month)
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


}