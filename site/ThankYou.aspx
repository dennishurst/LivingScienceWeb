<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Template</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">

        <article class="span8 pull-left">
            <h3>Thank you</h3>
            
            <p>Your message has been sent and we will contact you shortly.</p>

        </article>

        <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>



        </div>
  </div>
</div>
</div>


</asp:Content>


