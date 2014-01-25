<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OpenHouse.aspx.cs" Inherits="OpenHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Open House</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">

        <article class="span8 pull-left">
            <h3>Open House</h3>
            <p><img title="lsx_headers_history" src="img/LS/lsx_headers_admissions.jpg"/></p>
            
            
            <p>An Open House at Living Science gives families an opportunity to see the campus, look at our classrooms and equipment, and talk to Mr. and Mrs. D about out program.  It is an informal time to learn about Living Science before making a decision to follow the enrollment procedure. Children of all ages are welcome.</p>

            <h3>Visit Living Science</h3>
            
            <h3>Open House Dates:</h3>
            <p><em> (All Open Houses begin at 7pm)</em></p>
            <p>Feb. 4 & 25</p>
            <p>Mar. 4 & 18</p>
            <p>April 1 & 29</p>
            <p>May 27</p>
            

            <p>Please use the contact form below to find out more about our upcoming Open Houses.</p>

            <table>
            <tr><td>Your Name (*) </td><td><input type="text" name="your-name" value="" size="40" /></td></tr>
            <tr><td>Your Email (*) </td><td><input type="text" name="your-email" value="" size="40" /></td></tr>
            <tr><td>Grade Level of Child</td><td><input type="text" name="your-grade" value="" size="40" /></td></tr>
            <tr><td>Your Message</td><td><textarea name="your-message" cols="40" rows="10"></textarea></td>
            </tr>
            </table>


        </article>

        <article class="span4 pull-right testim-box">
            <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
        </article>



        </div>
  </div>
</div>
</div>




</asp:Content>

