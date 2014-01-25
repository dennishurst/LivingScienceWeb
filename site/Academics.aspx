<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Academics.aspx.cs" Inherits="Academics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Academics</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>Academics</h3>
                        <ul class="list6">
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Logo141by141size.png" alt=""></figure>
                                        <div class="caption">
                                            <strong>Course Overview</strong>
                                            <p>...click below to see more....</p>
                                            
                                            <a href="CourseOverview.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Logo141by141size.png" alt=""></figure>
                                        <div class="caption">
                                            <strong>STEM Overview</strong>
                                            <p>...click below to see more....</p>
                                            
                                            <a href="STEMOverview.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Logo141by141size.png" alt=""></figure>
                                        <div class="caption">
                                            <strong>STEM Classes</strong>
                                            <p>...click below to see more....</p>
                                            
                                            <a href="STEMClasses.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Logo141by141size.png" alt=""></figure>
                                        <div class="caption">
                                            <strong>School Calendar</strong>
                                            <p>Living Science runs on a calendar year that is similar to (but does not exactly mirror) 
            the schools in the area.  Additionally, we do not adhere to Cherokee County School System 
            closing at all times.  In case of inclement weather or other emergencies, closing information 
            will be made available via 11Alive and www.11alive.com.</p>
                                            
                                            <a href="SchoolCalendar.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Logo141by141size.png" alt=""></figure>
                                        <div class="caption">
                                            <strong>FAQ</strong>
                                            <p>Does every student take a science course?  What is the STEM program?  Find out the answers to these questions and more in our FAQ section.</p>
                                            
                                            <a href="FAQ.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
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

