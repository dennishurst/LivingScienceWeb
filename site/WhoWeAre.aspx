<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WhoWeAre.aspx.cs" Inherits="WhoWeAre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Who we are</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h3>Who we are</h3>
                        <ul class="list6">
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Mr_MrsD-214x300.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Founders <br />Lance Davis, Headmaster/Administrator and Penney Davis, President/Teacher</strong>
                                            <p>Mr. and Mrs. D (as they are affectionately known) were born and raised in Africa.  Their heritage is unmistakably English, 
                                            their passion is for the Lord, and their love is for children of all ages.  They both graduated as teachers and began their careers 
                                            teaching in the African school system in Rhodesia, now Zimbabwe.  Penney started teaching in a high school where most of her students 
                                            were close to being her peers.  However, she was unmistakably in control and taught her science students using hands-on techniques which 
                                            she had perfected while at college.</p>
                                            
                                            <a href="founders.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            
                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/oldLighthouse.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>History</strong>
                                            <p>The history of Living Science does not begin with the first Living Science class but with a little girl in Africa who accepted 
                                            Jesus in her heart and accepted His call to teach others.  As early as her senior year in college, Mrs. D. recognized the incredible 
                                            gift God was entrusting to her in the area of teaching.</p>
                                            
                                            <a href="history.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                
                            </li>


                            <li>
                                <div class="thumb-pad5">
                                    <div class="thumbnail">
                                        <figure><img src="img/LS/Faculty.jpg" alt=""></figure>
                                        <div class="caption">
                                            <strong>Faculty</strong>
                                            <p>We are very proud of the caliber of teachers at Living Science. Click below to learn more our our instructors.</p>
                                            
                                            <a href="faculty.aspx" class="btn btn-primary"><span>Read more</span><img src="img/more_arrow.png" alt=""></a>
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



 
