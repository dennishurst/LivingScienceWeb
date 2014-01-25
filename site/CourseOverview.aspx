<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CourseOverview.aspx.cs" Inherits="CourseOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Course Overview</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">

        <article class="span8 pull-left">
            <h3>Course Overview</h3>
            <p><img title="lsx_headers_academics2.jpg" src="img/LS/lsx_headers_academics2.jpg"/></p>
            <p>&nbsp;</p>

            <p>Living Science offers a full complement of courses for homeschooled students.  All students are required
             to take at least one science course, but may sign up for additional classes of their choosing.  We do 
             provide a recommended sequence of study by grade level to assist you in constructing your child’s individual program.</p>

            <p>The STEM (Science, Technology, Engineering and Math) program will be available to grades 4 through 9 
            for the academic year 2012-2013.  Other grades will be added each year.  We find that students who 
            participate in STEM programs excel at problem solving and logic and are typically more self-motivated 
            in their studies.    Courses are priced by individual classes or can be bundled as STEM with a discount.  
            Additionally, siblings are eligible for discounts.</p>
            <p>&nbsp;</p>
            <a target="_blank" href="/site/default.aspx" class="btn btn-primary"><span>Course Overview - COMING SOON</span><img src="img/more_arrow.png" alt=""></a>


        </article>

         <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>



        </div>
  </div>
</div>
</div>



</asp:Content>

