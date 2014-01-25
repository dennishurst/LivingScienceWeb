<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>What we believe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="gradient1">
            <!--content-->
            <div class="container">
                <div class="row">
                    <article class="span8 thumb-pad6">
                        <h3>Statement of Educational Belief</h3>
                       <ul>
                            <li>We believe children are rare and precious commodities, to be handled with extreme care.</li>
                            <li>We believe that within every child there is a magnificent diamond, and it is our responsibility to make it sparkle.</li>
                            <li>We believe that all children are created in the image of God and should be given every opportunity to access truth and knowledge.</li>
                            <li>We believe in training children according to their learning style so that when they are old, they will still manifest our training.</li>
                            <li> We believe we have the power to impact the lives of the children we teach by our behavior in the classroom.</li>
                            <li> We believe every word we speak is a seed that will bring forth either positive or negative growth.</li>
                            <li> We believe children should be guided from the known to the unknown.</li>
                            <li> We believe that every child can be excited about learning.</li>
                            <li> We believe that learning should be enjoyable and should produce change.</li>
                            <li> We believe in teaching children, not a curriculum.</li>
                            <li> We believe that children learn best by DOING.</li>
                            <li> We believe that the learning process will be sustained only when students are internally motivated.</li>
                            <li> We believe that the teacher must create an emotionally safe environment if learning is to take place.</li>
                            <li> We believe that every child should be inspired to become the best he or she can be.</li>
                            <li> We believe that ALL children are worthy of praise.</li>
                            <li> We believe every child has a worthwhile opinion and deserves to be heard.</li>
                        </ul>
                        <center>
                        <p><strong>Mrs D's definition of education</strong></p>
                        <iframe width="560" height="315" src="//www.youtube.com/embed/4s-ea0F0wIo" frameborder="0" allowfullscreen></iframe>

                        </center>



                 </article>
                    <article class="span4 pull-right testim-box">
                <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
            </article>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
