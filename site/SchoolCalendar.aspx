<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SchoolCalendar.aspx.cs" Inherits="SchoolCalendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>School Calendar</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
<div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">

        <article class="span8 pull-left">
            <h3>Calendar</h3>
            <p><img title="lsx_headers_academics2.jpg" src="img/LS/lsx_headers_academics2.jpg"/></p>
            <p>&nbsp;</p>

            <p>Living Science runs on a calendar year that is similar to (but does not exactly mirror) 
            the schools in the area.  Additionally, we do not adhere to Cherokee County School System 
            closing at all times.  In case of inclement weather or other emergencies, closing information 
            will be made available via 11Alive and www.11alive.com.</p>
            <p>&nbsp;</p>

            <a href="/site/Documents/AcademicCalendar-2014-2015.pdf" target="_new" class="btn btn-primary"><span>View our complete calendar</span><img src="img/more_arrow.png" alt=""></a>
            <p>&nbsp;</p>

            <a href="/site/OpenHouse.aspx" class="btn btn-primary"><span>Attend an Open House</span><img src="img/more_arrow.png" alt=""></a>
            




            


        </article>

         <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>



        </div>
  </div>
</div>
</div>



</asp:Content>

