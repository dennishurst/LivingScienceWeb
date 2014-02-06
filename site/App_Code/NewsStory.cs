using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsStory
/// </summary>
public class NewsStory
{
    public string Title;
    public string Headline;
    public string Clipping;
    public string Story;
    public string By;
    public DateTime GivenOnDate;
    public string StoryImage;
    public string StoryGUID;


    private string _html;


    public bool ParseNewsFile(string sFileName)
    {

        try
        {
            System.IO.StreamReader file = new System.IO.StreamReader(sFileName);
            _html = file.ReadToEnd();
            file.Close();



            Title = GetTagContents("title");
            Headline = GetTagContents("Headline");
            Clipping = GetTagContents("Clipping");
            By = GetTagContents("StoryBy");
            DateTime.TryParse(GetTagContents("GivenOnDate"), out GivenOnDate);
            StoryImage = GetTagContents("StoryImage");
            
            Story = GetTagContents("body");

            StoryGUID = string.Format("{0}-{1}-{2}-{3}", GivenOnDate.Year.ToString(), GivenOnDate.Month.ToString(), GivenOnDate.Day.ToString(), System.Guid.NewGuid().ToString());
            


        }
        catch (Exception ex)
        {
            return false;
        }



        return true;
    }


    private string GetTagContents(string sTagName)
    {
        string sValue = "";
        int iStartTag = 0; int iEndTag = 0;
        int iContentStart =0;

        iStartTag = _html.IndexOf(string.Format("<{0}>", sTagName), StringComparison.OrdinalIgnoreCase);

        iEndTag = _html.IndexOf(string.Format("</{0}>", sTagName), StringComparison.OrdinalIgnoreCase);

        if (iStartTag > 0 && iEndTag > 0)
        {
            //valid tag
            iContentStart = iStartTag + sTagName.Length + 2;
            sValue = _html.Substring(iContentStart,  iEndTag-iContentStart);


        }


        return sValue;
    }


	public NewsStory()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string GivenOnDateInternational()
    {
        //2013-09-01
        string sT = string.Format("{0}-{1}-{2}", GivenOnDate.Year.ToString(), GivenOnDate.Month.ToString(), GivenOnDate.Day.ToString());
        return sT;
    }

    public string MonthStr()
    {
        return Utility.MonthStr(GivenOnDate);

    }

}