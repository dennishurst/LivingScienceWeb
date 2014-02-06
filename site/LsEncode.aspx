<%@ Page Language="C#" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        txt2.Text = Server.HtmlEncode(txt1.Text);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>






    
        <asp:TextBox ID="txt1" runat="server" Height="261px" TextMode="MultiLine" 
            Width="769px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <asp:TextBox ID="txt2" runat="server" Height="261px" TextMode="MultiLine" 
            Width="769px"></asp:TextBox>
        <br />






    
    </div>
    </form>
</body>
</html>
