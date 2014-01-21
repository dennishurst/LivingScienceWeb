<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Admissions.aspx.cs" Inherits="Admissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Admissions</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="gradient1">
            <!--content-->
            <div class="container">
                <div class="row">
                    <article class="span8 thumb-pad6">
                        <h3>Admissions</h3>
                        <ul class="list6">
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Applications</strong>
                                            <p>Students are considered for admission to Living Science on the basis of academic potential, character, and the desire to embrace the philosophy of Living Science.</p>
                                            <a href="Applications.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Tuition &amp; Fees</strong>
                                            <p>Course fees vary and are listed on our course schedule.</p>
                                            <a href="TuitionAndFees.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/NeedPicture.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Open House</strong>
                                            <p>An Open House at Living Science gives families an opportunity to see the campus, look at our classrooms and equipment, and talk to Mr. and Mrs. D about out program.  It is an informal time to learn about Living Science before making a decision to follow the enrollment procedure. Children of all ages are welcome.</p>
                                            <a href="OpenHouse.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            
                        </ul>

                        <p>The Heartbeat of Living Science:</p>

                        
                        <p>&nbsp;</p>

                        <iframe width="560" height="315" src="//www.youtube.com/embed/3axUWMcTSkk" frameborder="0" allowfullscreen></iframe>

                        <p>&nbsp;</p>

                        <p>Living Science is where young people can develop a spiritual depth that enables them to become persons of faith, courage and integrity while developing lasting friendships and academic skills.  Achievement in a rigorous, science-based environment and involvement in discipleship activities occurs in a Christ-centered atmosphere. Our focus is on preparing students to be disciples of faith and successful leaders in our changing world.  We invite you to learn more about Living Science and our academic programs, admissions process and campus.</p>
											
                 </article>
                    <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
