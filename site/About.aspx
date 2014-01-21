<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>About</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>About</h3>
                        <p>A Christ-centered, educational home school study center where discipleship is the foundation for all learning.  We provide a comprehensive creation-based education for students that helps them discover God’s divine design in the world, while transforming families and the community.</p>
                        <ul class="list6">
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Who we are</strong>
                                            <p>Click below to learn more about who we are and what we believe.</p>
                                            
                                            <a href="WhoWeAre.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Our Approach</strong>
                                            <p>Click below to learn more about our approach to education.</p>
                                            
                                            <a href="OurApproach.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                
                            </li>


                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Academics</strong>
                                            <p>Click below to learn more about our academic programs.</p>
                                            
                                            <a href="Academics.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
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



 
