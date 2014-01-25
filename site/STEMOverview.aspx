<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>STEM Overview</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
  

<h3>STEM Overview</h3>
<p><strong>What STEM curriculum does Living Science follow from 4th grade thru high school?</strong></p>
<p>4th and 5th graders learn how to play with a variety of materials as they explore interactions between them.  They learn computer basics and develop workable skills to help them in middle school.
6th, 7th and 8th graders build structures and learn engineering basics all the time working in groups to solidify the basic need to develop TEAM solutions.  They also continue their computer technology basics that allow them to enter high school ready to use the tools without further instruction.
9th thru 12th graders follow individual science, technology and engineering classes according to their interests.  New for 2014-2015 is Audio Technology and Engineering basics in computer code writing.</p>
 <p>&nbsp;</p>
<p><strong>What is your STEM emphasis?</strong></p>
<p>Living Science has traditionally focused on hands-on Science with an emphasis on doing experiments that undergird the specialty they are studying.  For instance, they have done fauna and flora diversity studies for Biology, Chemical testing of water samples for Chemistry, fish and animal dissections for Anatomy and construction and operation of a life size Trebuchet in Physics.  </p>
<p>&nbsp;</p>
<p>Because of this hands on emphasis, students use Math, technology and engineering principles in the pursuit of such scientific endeavors.  They are indeed well rounded when it comes to the creative skills needed to complete a scientific task. </p>
<p>&nbsp;</p>
<p><strong>How does Living Science integrate technology into the classroom?</strong></p>
<p>Living Science is giving students the opportunity to study Engineering and Technology in a new way.  We have a high standard in science and math in the curriculum that is now being supplemented by innovative Engineering and Technology classes.  For instance, high school engineering students will gain fresh insight into careers by hearing from industry engineers from companies like Lockheed, as well as schools like Georgia Tech.  High School Technology students will learn about the technology behind a variety of interesting processes.  For example, electronics and the electric vehicle, materials technology, sensor technology, radar technology, medical technology, steam turbine, rocket and missile technology and so on.</p>
<p>&nbsp;</p>
<p><strong>What skills have your students mastered in class?</strong></p>
<p>Each student masters the use of presentation boards, digital presentation with the projector, speaking to large groups, dressing successfully, and using any technology available that will enhance their point of view.</p>
<p>&nbsp;</p>
<p>Recently, students were involved in such topics as rock studies with fossils in Kentucky, Monarch Butterfly and Gulf Fritillary studies on St. George Island, FL, Dune habitat studies in Merritt Island, Cape Canaveral, FL. and studies for the University of Florida on the Pneumatophores of Black Mangrove trees.  </p>
<p>&nbsp;</p>
<p>Additionally our high school students taught specific topics to middle school students on their Expedition.  They taught reverse azimuth calculations using the data collected by a camera located under a balloon 150 ft. in the air.  They explained the relationship between stress and weight and the size of a bridge span.  They assisted teachers on Rocketry, and explained Weather data from a weather collection station.</p>






                        
                 </article>
             
             <article class="span4 pull-right testim-box">
                <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
            </article>
         </div>
    </div>
    </div>
</div>



</asp:Content>

