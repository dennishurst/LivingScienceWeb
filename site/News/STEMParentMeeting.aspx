<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string,Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string,Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>STEM Parent Meeting</h3>
                        <ul class="list6">
                            <li>
                                <div class="clearfix">
                                    <div class="badge"><p class="time"><time datetime="2013-01-01">24</time></p><p class="numb">Jan</p></div>
                                    <div class="extra-wrap">
                                        <p><strong>Living Science Home Studies announces plans for a new STEM building to support the Home School community of North Georgia and beyond.</strong></p>
                                        <p>Posted by&nbsp;<a href="#">Lance Davis</a><br><a href="#" class="pull-right">xx comments</a></p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                 
                             
            <p><img title="" src="/site/img/News/STEMBuilding_LG.jpg"/></p>
            
            <p><strong>DEAR LIVING SCIENCE FAMILIES,</strong></p>
            <p>&nbsp;</p>

            <p>Our mission is to partner with our parents in preparing their children for life.  We have successfully launched hundreds of children into College and Career paths, and we want to greatly expand our mission to hundreds of more children.</p>
            <p>&nbsp;</p>

            <p><strong>PRESENT SITUATION</strong></p>
            <p>&nbsp;</p>
            <p>
            <ul>
                <li>Our student growth has increased to the place where we need additional classroom space</li>
                <li>This situation has occurred primarily due to the introduction of STEM classes. (Science, Technology, Engineering and Math.)   </li>
                <li>We have had great success with this program and recently were Finalist for the TAG Education Awards for Middle School programs </li>
            </ul>
            </p>
            <p>&nbsp;</p>

            <p><strong>PROPOSED SOLUTION</strong></p>
            <p>&nbsp;</p>

            <p>
            <ul>
                <li>New Building:
                    <ul>
                        <li>We plan to provide a large building for our students that will focus on STEM </li>
                        <li>This will also allow other classes like English, foreign languages, arts and social studies and various electives, to grow and flourish at Living Science.</li>
                    </ul>
                </li>
                <li>Expanded Parking with facilitated drop off lanes </li>
            </ul>

            </p>
            <p>&nbsp;</p>

            <p><strong>THE BUILDING: </strong></p>
            <p>&nbsp;</p>

            <p>
            <ul>
                <li>The proposed new facility will be a steel structure with:
                    <ul>
                        <li>6 classrooms</li>
                        <li>Teacher offices</li>
                        <li>Storage areas</li>
                        <li>Men’s and women’s’ restrooms </li>
                        <li>AND a large multi-use open area suitable for projects or gatherings.</li>
                    </ul>
                </li>
                <li>The building will cost in the range of $600,000 to $700,000.   This includes the steel structure, HVAC, parking, classroom furnishings and technology updates with internet and video.</li>
            </ul>
            </p>
            <p>&nbsp;</p>

            <p>Your prayers for this project are vital.  Please commit to join with us and make this exciting chapter in our history, a reality.</p>
            <p>&nbsp;</p>

            <p>How can you help?</p>
            <ol>
                <li>Assist in Fundraising and soliciting in kind donations (labor or materials)</li>
                <li>Contact one of the Advisory Committee members for details:  (See commitment form attached)
                    <ul>
                        <li>Randy Bott: mobile 404 597 7590</li>
                        <li>Dennis Hurst: mobile 678 689 5035</li>
                        <li>Dan Fisher: 678 813 2375</li>
                        <li>Greg Frick: 678 778 7379</li>
                    </ul>
                
                
                </li>
            </ol>
            
            <p>&nbsp;</p>


<h3>Mr. D, do you want a form here or just something they can print?  An email form is easy.</h3>

            <pre>

           
I WOULD LIKE TO CONTRIBUTE TO THE NEW BUILDING PROCESS IN THE FOLLOWING WAY:
(Please place a check mark against the appropriate items)
MY LIVING SCIENCE STEM BUILDING COMMITMENT:
•	Assist in fundraising
o	Assist in overall coordination of fundraising activities 
o	Searching and applying for grants 
o	Soliciting corporate sponsorship 
o	Soliciting individual donations
o	Assist in establishing an online presence to garner large numbers of small dollar donations (crowd-sourcing) from the Christian homeschool community.
o	Personal donations
o	Capital, Appreciated Stock, Real Estate. (Professional guidance available)
•	Solicit “In-Kind” donations (labor or materials)
o	Assist in overall coordination of In-kind donation activities
o	Skilled labor (electrician, plumbing, HVAC, etc.)
o	Building materials (lumber, floor coverings, paint, sheet rock, fasteners, etc.)
o	New or lightly used furnishings (tables, chairs, desks, work benches)
o	New or lightly used cabinets
o	Technology (lab benches, projector screens, computers, projectors, etc.)

Name:___________________________________________________________________________

E-mail address ____________________________________________________________________

Mobile phone: ____________________________________________________________________


For Tax-deductible Cash Donations:
 please write to: National Christian foundation
		In the memo, write Building Fund
		
Send to Mr. Lance Davis at 
Living Science Home Studies, Inc.
			4095 North Arnold Mill Rd
			Woodstock, GA 30188
                 
                 </pre>
                 </article>
                 <article class="span4 pull-right testim-box">
                    <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
                </article>
         </div>
    </div>
    </div>
</div>


</asp:Content>

