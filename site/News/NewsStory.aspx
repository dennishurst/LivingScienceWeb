<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsStory.aspx.cs" Inherits="News_NewsStory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title><asp:Literal ID="litTitle" runat="server"></asp:Literal></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8">



                        <asp:Literal ID="litBody" runat="server"></asp:Literal>
                        

                 </article>
                 <article class="span4 pull-right testim-box">
                    <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
                </article>
         </div>
    </div>
    </div>
</div>



</asp:Content>

