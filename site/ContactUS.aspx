<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUS.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Contact Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
<div class="gradient1">
    <div class="container"> 
        <div class="row">
            <article class="span12">
                <h3>Contact us</h3>
                <figure class="map">
                    <iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=4095+North+Arnold+Mill+Road,+Woodstock,+GA&amp;aq=0&amp;oq=4095+North+Arnold+Mill+Road&amp;sll=32.678125,-83.178297&amp;sspn=6.341918,9.415283&amp;ie=UTF8&amp;hq=&amp;hnear=4095+N+Arnold+Mill+Rd,+Woodstock,+Georgia+30188&amp;ll=34.123472,-84.447505&amp;spn=0.012186,0.018389&amp;t=m&amp;z=14&amp;iwloc=lyrftr:m,10365670445380692040,34.123476,-84.447505&amp;output=embed"></iframe>
                    
                </figure>
            </article>
        </div>
    </div>
</div>
<div class="gradient1">
<div class="container"> 
        <div class="row">
        <article class="span4">
            <h3>Addresses</h3>
            <div class="info">
                <p class="margBot1">Living Science Home Studies, Inc. </p>
                <p class="margBot"><strong>Address 1:</strong></p>
                <p class="margBot1">4095 North Arnold Mill Road</p>
                <p class="margBot1">Woodstock, Georgia 30188</p>
                <p class="margBot"><strong>Phones:</strong></p>
                <p class="margBot1">Office: (770) 591-4141</p>
            </div>
        </article>
        <article class="span8">
            <h3>Contact Form</h3>
            
                <div class="success"> Contact form submitted! <strong>We will be in touch soon.</strong> </div>
                <fieldset>
                    <div>
                        <div class="form-div-1">
                            <label class="name">
                            <input name="your-name"  type="text" value="* Your full name here:">
                            </label>
                        </div>
                        <div class="form-div-2">
                            <label class="email">
                            <input name="your-email"  type="email" value="* Enter your e-mail:">
                            </label>
                        </div>
                        <div class="form-div-3">
                            <label class="phone notRequired">
                            <input name="your-tel"  type="tel" value="Your telephone here:">
                            </label>
                        </div>
                    </div>
                    <div>
                        <label class="message">
                        <textarea name="your-message" >* Your comments:</textarea>
                        </label>
                    </div>
                    <div class="btns">
                        <asp:Button ID="cmdSubmit" runat="server" Text="Submit" 
                            onclick="cmdSubmit_Click"></asp:Button>
                    </div>
                </fieldset>
            
        </article>
        </div>
  </div>
  </div>
</div>

</asp:Content>

