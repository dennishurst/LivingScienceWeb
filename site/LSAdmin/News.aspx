<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="LSAdmin_News" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" DataSourceID="XmlDataSource1" 
            EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Headline" HeaderText="Headline" 
                    SortExpression="Headline" />
                <asp:BoundField DataField="Clipping" HeaderText="Clipping" 
                    SortExpression="Clipping" />
                <asp:BoundField DataField="Story" HeaderText="Story" SortExpression="Story" />
                <asp:BoundField DataField="By" HeaderText="By" SortExpression="By" />
                <asp:BoundField DataField="GivenOnDate" HeaderText="GivenOnDate" 
                    SortExpression="GivenOnDate" />
                <asp:BoundField DataField="StoryImage" HeaderText="StoryImage" 
                    SortExpression="StoryImage" />
                <asp:BoundField DataField="StoryGUID" HeaderText="StoryGUID" 
                    SortExpression="StoryGUID" />
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/App_Data/News.xml"></asp:XmlDataSource>
    
    </div>
    </form>
</body>
</html>
