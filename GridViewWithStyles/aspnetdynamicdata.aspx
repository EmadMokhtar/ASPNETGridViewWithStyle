<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnetdynamicdata.aspx.cs"
    Inherits="GridViewWithStyles.aspnetdynamicdata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET GridView with Dynamic Data</title>
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource"
            CssClass="DDGridView" RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:XmlDataSource ID="XmlDataSource" runat="server" DataFile="~/XML/Customers.xml"
        TransformFile="~/XML/Customers.xsl"></asp:XmlDataSource>
    </form>
</body>
</html>
