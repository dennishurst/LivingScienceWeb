<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>AlumniAccomplishments</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="gradient1">
            <div class="container padBot1">
                <div class="row">
                    <article class="span8 pull-left">
            <h3>Alumni Accomplishments</h3>
            

            <ul>
<li>Living Science is a Christ Centered Educational Homeschool Study Center where discipleship is foundational.  We provide a comprehensive creation based education to students that helps them discover the finger print of God.  This is done in a way that both educates students and transforms families.</li>
<li>By performing interactive classroom teaching, multiday offsite science expeditions, and life changing leadership training our Living Science families derive the biggest benefit from our uncompromising Christ centered focus.</li>
<li>We are unique based on our hands-on teaching, Servant Leadership training, and intentional discipleship that fully develops our young people and prepares them to glorify God in this world and the next. </li>
<li>By amplifying parental efforts necessary to raise Godly and highly educated students, Living Science is a valuable partner to those families who experience our approach.</li>
</ul>

<h3>Past Alumni Appointments:</h3>
<ul>
<li>NASA Research Fellowship</li>
<li>Medical School Scholarships</li>
<li>West Point Military Graduates</li>
<li>Coast Guard Graduates</li>
<li>Political Appointees</li>
</ul>

<h3>Students enrolled in: </h3>
<ul>
<li>UGA</li>
<li>GA Tech </li>
<li>Louisiana State U</li>
<li>Reinhart, Covenant College</li>
<li>Emory University School of Medicine</li>
<li>North Georgia University</li>
<li>Clemson University</li>
<li>Gwinnett Tech College</li>
<li>Le Tourneau Engineering School</li>
<li>Southern Poly</li>
<li>Royal Holloway University of London</li>
<li>Auburn University</li>
</ul>



        </article>
                    <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
