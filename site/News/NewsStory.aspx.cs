using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class News_NewsStory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);


        SortedDictionary<string, NewsStory> oNewsStories;


        oNewsStories = (SortedDictionary<string, NewsStory>)Session["NewsStories"];


        string StoryGUID = (string) Request.QueryString["GUID"];


        NewsStory oStory = oNewsStories[StoryGUID];


        

        litTitle.Text = oStory.Title;

        StringBuilder sbNews = new StringBuilder();

        sbNews.Append(string.Format("<ul class=\"list6\"><li><div class=\"clearfix\"><div class=\"badge\"><p class=\"time\"><time datetime=\"{0}\">", oStory.GivenOnDateInternational()));
        sbNews.Append(string.Format("{0}</time></p><p class=\"numb\">{1}</p></div><div class=\"extra-wrap\">", oStory.GivenOnDate.Day.ToString(), oStory.MonthStr()));
        sbNews.Append(string.Format("<p><strong>{0}</strong></p>", oStory.Headline));
        sbNews.Append(string.Format("<p>Posted by <a href=\"#\">{0}</a></p></div></div></li></ul><p><hr></p>", oStory.By));


        //sbNews.Append(string.Format("<ul><li><div class=\"clearfix\"><div class=\"badge\"><p class=\"time\"><time datetime=\"{0}", oStory.GivenOnDateInternational()));
        //sbNews.Append(string.Format("\">{0}</time></p><p class=\"numb\">Sep</p></div> \r\n", oStory.GivenOnDate.Day.ToString(), oStory.MonthStr()));
        //sbNews.Append("<div class=\"extra-wrap\"> \r\n");
        //sbNews.Append(string.Format("<p><strong>{0}</strong></p> \r\n", oStory.Headline));
        //sbNews.Append(string.Format("<p>Posted by <a href=\"#\">{0}</a></p></div></div> \r\n", oStory.By));
        
        
        //sbNews.Append("</div></li></ul>\r\n");

        sbNews.Append(oStory.Story);

        litBody.Text = sbNews.ToString();


    }
}