<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bootstrap.aspx.cs" Inherits="GridViewWithStyles.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET GridView with Twitter Bootstrap</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" 
            DataSourceID="XmlDataSource"
            CssClass="table table-striped table-bordered table-condensed">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
        </asp:GridView>
    
    </div>
    
    <asp:XmlDataSource ID="XmlDataSource" runat="server" 
        DataFile="~/XML/Customers.xml" TransformFile="~/XML/Customers.xsl">
    </asp:XmlDataSource>
    </form>
</body>
</html>
