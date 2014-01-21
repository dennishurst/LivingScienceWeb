<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Applications.aspx.cs" Inherits="Applications" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Thank you</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="main">
<div class="gradient1">
  <div class="container padBot1"> 
        <div class="row">

        <article class="span8 pull-left">
            <h3>How To Apply</h3>
            <p><img title="lsx_headers_admissions.jpg" src="img/LS/lsx_headers_admissions.jpg"/></p>
            <p>&nbsp;</p>

            <p>Students are considered for admission to Living Science on the basis of academic potential, character, and the desire to embrace the philosophy of Living Science.</p>
            <p>&nbsp;</p>

            <h3>The process is easy:</h3>
            <p>Step 1 Fill out the form below and we will send you an  application packet.</p>
            <p>Step 2 Submit the application forms along with a Letter of Recommendation from the student’s Pastor or Youth Minister, immunization record, and non-refundable application fee to Living Science.</p>
            <p>Step 3  Make an appointment for an interview. The interview is a time for everyone to get to know one another, learn about the student’s learning style, and assure that Living Science is a good fit for the student and family.</p>
            <p>Living Science embraces a nondiscriminatory policy and admits qualified students of any race, color, national, and ethnic origin to all rights, privileges, programs, and activities generally accorded or made available to students at the school.</p>
             
            <table>
                <tr><td>Your Name (*)</td><td><input type="text" name="your-name" value="" size="40" /></td></tr>
                <tr><td>Your Email (*)</td><td><input type="text" name="your-email" value="" size="40" /></td></tr>
                <tr><td>Grade Level of Child</td><td> <input type="text" name="your-grade" value="" size="40" /></td></tr>
                <tr><td>Your Message</td><td><textarea name="your-message" cols="40" rows="10"></textarea></td></tr>
                <tr><td>&nbsp;</td><td><asp:Button runat="server" ID="cmdSend" Text="Send" onclick="cmdSend_Click" /></td></tr>
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

