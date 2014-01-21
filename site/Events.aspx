<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Events</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>News & Events</h3>
                        <p>Welcome to our events page, please take a look around and see what's going on at Living Science</p>
                        
                        <ul class="list6">
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>News &amp; Events</strong>
                                            <p>...News &amp; Events.</p>
                                            
                                            <a href="/site/News.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Building Fund</strong>
                                            <p>...Building Fund....</p>
                                            
                                            <a href="/site/BuildingFund.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Photo Gallery</strong>
                                            <p>...Photo Gallery...</p>
                                            
                                            <a target="_new"  href="http://www.flickr.com/photos/77530465@N02/" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Blog</strong>
                                            <p>...Blog...</p>
                                            
                                            <a target="_new"  href="http://blog.livingscience.com/" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Living Science on Facebook</strong>
                                            <p>...Living Science on Facebook...</p>
                                            
                                            <a target="_blank"  href="http://www.facebook.com/livingsciencerocks" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
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

