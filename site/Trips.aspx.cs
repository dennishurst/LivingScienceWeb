using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class Trips : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(Request.FilePath, ref aTestimonials);



        System.DateTime oExpedition;


        System.DateTime.TryParse("4/14/2014", out  oExpedition);

        int iPsalm = 0;


        try
        {

            iPsalm = DaysBetween(System.DateTime.Now, oExpedition);

            if (iPsalm > 0 && iPsalm < 41)
            {
                //we can show these
                string sFile = Server.MapPath(string.Format("~/App_Data/Psalms.{0}.json", iPsalm.ToString()));

                string sJson = System.IO.File.ReadAllText(sFile);

                clsBibleChapter oChapter = new clsBibleChapter();

                oChapter = JsonConvert.DeserializeObject<clsBibleChapter>(sJson);


                litCountDown.Text = string.Format("<p>As our Servant Leader team prepares for Expedition each year they read one Psalm each day, counting down to when our Expedition begins.</p>"
                        + "<h3>Our Psalm for today is Psalms {0}</h3>{1}<p>&nbsp;</p>", DaysBetween(System.DateTime.Now, oExpedition), oChapter.GetVerses());

            }
            else
            {
                litCountDown.Text = "<i >&#8220;And do not be conformed to this world, but be transformed by the renewing of your mind, that you may prove what is that good and acceptable and perfect will of God.&#8221; Romans 12:2 (NKJV)</i><br />";


            }


            

        }
        catch ( Exception ex)
        {}



     }

    int DaysBetween(DateTime d1, DateTime d2)
    {
        TimeSpan span = d2.Subtract(d1);
        return (int)span.TotalDays;
    }
}