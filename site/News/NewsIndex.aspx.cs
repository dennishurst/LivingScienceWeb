using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class News_NewsIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);


        SortedDictionary<string, NewsStory> oNewsStories;


        oNewsStories = (SortedDictionary<string, NewsStory>)Session["NewsStories"];


        

        if (oNewsStories == null)
        {
            oNewsStories = new SortedDictionary<string, NewsStory>();
            string[] aFiles = System.IO.Directory.GetFiles(Server.MapPath("/site/news/"), "*.htm*");

            

            foreach (string sFile in aFiles)
            {
                NewsStory Story = new NewsStory();
                //"D:\\GitHub\\LivingScienceWeb\\site\\News\\TAG.htm"
                if (Story.ParseNewsFile(sFile))
                {

                    oNewsStories.Add(Story.StoryGUID, Story);
                }
                
            }
            Session.Add("NewsStories", oNewsStories);

        }


        StringBuilder sbNews;
        SortedDictionary<int, string> oDisplayText = new SortedDictionary<int, string>();
        int i = 10000;
        foreach (KeyValuePair<string, NewsStory> kvp in oNewsStories)
        {
            
            sbNews = new StringBuilder();
            sbNews.Append(string.Format("<li><div class=\"clearfix\"><div class=\"badge\"><p class=\"time\"><time datetime=\"{0}", kvp.Value.GivenOnDateInternational()));
            sbNews.Append(string.Format("\">{0}</time></p><p class=\"numb\">{1}</p></div> \r\n", kvp.Value.GivenOnDate.Day.ToString(), kvp.Value.MonthStr()));
            sbNews.Append("<div class=\"extra-wrap\"> \r\n");
            sbNews.Append(string.Format("<p><strong>{0}</strong></p> \r\n", kvp.Value.Headline));
            sbNews.Append(string.Format("<p>Posted by <a href=\"#\">{0}</a></p></div></div> \r\n", kvp.Value.By));
            sbNews.Append("<div class=\"thumb-pad5\"> \r\n");
            sbNews.Append("<div class=\"thumbnail\"> \r\n");
            sbNews.Append(string.Format("<figure><img src=\"{0}\" alt=\"\"></figure> \r\n", kvp.Value.StoryImage));
            sbNews.Append("<div class=\"caption\"> \r\n");
            sbNews.Append(string.Format("<p>{0}</p> \r\n", kvp.Value.Clipping));
            sbNews.Append(string.Format("<a href=\"/site/news/NewsStory.aspx?GUID={0}\" class=\"btn btn-primary\"><span>Read more</span><img src=\"/site/img/more_arrow.png\" alt=\"\"></a> \r\n", kvp.Value.StoryGUID));
            sbNews.Append("</div></div></div></li>\r\n");
            i = i - 1;
            oDisplayText.Add(i, sbNews.ToString());
        }

        sbNews = new StringBuilder();
        foreach (KeyValuePair<int, string> oBlock in oDisplayText)
        {
            sbNews.Append(oBlock.Value);
        }


        litBody.Text = sbNews.ToString();

    }
}