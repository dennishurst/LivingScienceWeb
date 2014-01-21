<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoPlayer.aspx.cs" Inherits="VideoPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Video Player</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">
        <p>&nbsp;</p>

         
        <article class="span8 thumb-pad6">
                        <h3><asp:Literal ID="litHeadline" runat="server"></asp:Literal></h3>
                        <ul class="list6">
                            <li>
                                <div class="clearfix">
                                    <div class="badge"><p class="time"><asp:Literal ID="litDate" runat="server"></asp:Literal></p></div>
                                    <div class="extra-wrap">
                                        <p><strong><asp:Literal ID="litDescription" runat="server" /></strong></p>
                                        <p>Posted by&nbsp;<a href="#"><asp:Literal ID="litGivenBy" runat="server"/></a></p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        
                        <p>&nbsp;</p>
            
                        <center>

                        <iframe width="560" height="315" src="//www.youtube.com/embed/<asp:Literal ID="litVideoID" runat="server"></asp:Literal>" frameborder="0" allowfullscreen></iframe>

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

