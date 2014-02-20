<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
<div class="gradient1">
<div class="container padBot1"> 
<div class="row">
<article class="span8 pull-left">

<h3>Building Program</h3>

<p>Our mission is to partner with our parents in preparing their children for life.</p>
<p>&nbsp;</p>

<img  src="img/LS/BuildingProgram1.jpg" style="float:right; margin-left: 20px;" />
<ul>
<li>Our student growth has increased to the place where we need additional classroom space</li>
<li>This is primarily due to the introduction of STEM classes. (Science, Technology, Engineering and Math.)</li>
<li>We have had great success with this program and recently were Finalist for the TAG Education Awards for Middle School programs.</li>
</ul>
<p style="clear:right" ></p>
<p>&nbsp;</p>
<p><strong>PROPOSED SOLUTION – AN EXPANDED STEM BUILDING</strong></p>
<p>We will provide a large building for our students that will focus on STEM.  It will also allow other classes like English, foreign languages, arts and social studies and various electives, to grow and flourish at Living Science
</p>

<p>&nbsp;</p>
<table>
<tr><td valign="top">
<strong>The Building</strong>
A steel structure with:
<ul>
<li>6 classrooms</li>
<li>Teacher offices</li>
<li>Storage areas</li>
<li>Men’s and women’s’ restrooms</li>
<li>A large multi-use open area suitable for projects or gatherings.</li>
</ul>

</td>
<td valign="top">
<strong>You Can Help</strong><br />
Your assistance will help us to provide a first-class facility for the greater homeschool community.
<ul>
<li>Become a STEM partner with Living Science</li>
<li>Share our technology space with other IT companies</li>
<li>Access large groups of homeschool students for valuable skill training</li>
<li>Help develop technical, engineering and IT skills in students that will enhance their readiness for the workforce</li>
</ul>
</td></tr>


</table>
		
  
<img src="img/LS/BuildingProgramDrawing.jpg" />
      		

<h3>Why Should I Support the Living Science STEM Building Program?</h3>
<p>
Our Students Have
</p>

<ul>
<li>Character</li>
<ul>
<li>A moral compass, and an internal passion for truth</li>
<li>A vision for the future</li>
<li>Awareness of influences and choices that affect outcomes</li>
<li>Respect for authority</li>
</ul>

<li>Leadership Training</li>
<ul>
<li>Weekly leadership training throughout  high school</li>
<li>Taught to lead through serving others</li>
<li>Learn to work with a team and motivate and encourage others</li>
<li>Hone leadership skills through leading younger students on school trips</li>
</ul>
<li>Valuable Work Skills</li>
<ul>
<li>High-level technology training in our STEM program</li>
<li>Experience with projects and project management</li>
<li>Practice in real life situations</li>
<li>Self-motivated and teachable</li>
<li>Organized and goal-oriented</li>
</ul>
</ul>


<p>
<img style="float:right" src="img/LS/BuildingProgramBoys.jpg" />
WE ARE LOOKING FOR community partners like you to share our technologically superior learning space and teach the wider north Atlanta homeschool population.  
Companies that participate in the construction of this learning environment will qualify for status and privileges allowing them the opportunity to instruct students on subjects that affect their business. 
</p>


</article>
<article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>
</div>
 </div>
</div>
</div>


</asp:Content>

