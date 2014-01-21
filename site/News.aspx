<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>News &amp; Events</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>Latest events</h3>
                        <ul class="list6">
                            <li>
                                <div class="clearfix">
                                    <div class="badge"><p class="time"><time datetime="2013-01-01">24</time></p><p class="numb">Jan</p></div>
                                    <div class="extra-wrap">
                                        <p><strong>Living Science Home Studies announces plans for a new STEM building to support the Home School community of North Georgia and beyond.</strong></p>
                                        <p>Posted by&nbsp;<a href="#">Lance Davis</a><br><a href="#" class="pull-right">xx comments</a></p>
                                    </div>
                                </div>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="/site/img/News/STEMBuilding.jpg" alt=""></figure>
                                        <div class="caption">
                                            <p>Our mission is to partner with our parents in preparing their children for life.  We have successfully launched hundreds of children into College and Career paths, and we want to greatly expand our mission to hundreds of more children.</p>
                                            <a href="News/STEMParentMeeting.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
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

