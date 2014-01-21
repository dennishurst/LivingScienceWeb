<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TuitionAndFees.aspx.cs" Inherits="TuitionAndFees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Tuition And Fees</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>Tuition and Fees</h3>
                        <p>Course fees vary and are listed on our course schedule</p>
                        <ul class="list6">
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>High School</strong>
                                            <p>Living Science is unique and well known for its “smorgasbord” approach to building a personal curriculum for each individual student.  Science is mandatory at every grade level, but in addition to that, parents may choose to add any number of other listed classes to a student’s schedule.</p>
                                            <a href="HighSchoolTuition.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Elementary &amp; Middle School</strong>
                                            <p>Living Science is unique and well known for its “smorgasbord” approach to building a personal schedule for each individual student.  Science is mandatory at every grade level, but in addition to that, parents may choose to add any number of other listed classes to a student’s schedule.</p>
                                            <a href="MiddleSchoolTuition.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
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

