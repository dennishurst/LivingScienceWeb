<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>History</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">

        <article class="span8 pull-left">
            <h3>History</h3>
            <p><img title="The New Living Science Property in 2004" src="img/LS/NewLivingScience2004.jpg"/></p>
            
            <p>The history of Living Science does not begin with the first Living Science class but with a little girl in Africa who accepted 
            Jesus in her heart and accepted His call to teach others.  As early as her senior year in college, Mrs. D. recognized the incredible 
            gift God was entrusting to her in the area of teaching.</p>

            <p>In 1993 the Davis family moved to Atlanta and Mrs. D took a position as science teacher at a local Christian school.  It 
            was during this time that several homeschool moms asked Mrs. D if she would teach their children science.  
            At first she resisted the idea of adding more to her already busy life, but she soon recognized God’s call and 
            Living Science was born. Classes began in 1996 for a handful of students in the Davises’ basement and through word of mouth, 
            the program grew.  Students and course offerings were added as more students were drawn to the Christian-based learning center.  
            Through the generous contributions of many families, Living Science Home Studies moved in 2004 to its current location on a 
            beautiful wooded five-acre campus.  Today hundreds of students and faculty thrive in an atmosphere that fosters biblical 
            truth and development of a biblical world view.</p>

        </article>

        <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>



        </div>
  </div>
</div>
</div>




</asp:Content>




