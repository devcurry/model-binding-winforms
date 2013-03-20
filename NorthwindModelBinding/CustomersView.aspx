<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomersView.aspx.cs" Inherits="NorthwindModelBinding.CustomersView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <asp:Repeater ID="rptCustomers" runat="server" ItemType="NorthwindModelBinding.Customer" SelectMethod="CustomersView_GetData">
                    <HeaderTemplate>
                        <thead>
                            <th colspan="5">
                                <h1 style="background-color: #000066; color: #FFFFFF">Customers Data
                                </h1>
                            </th>
                        </thead>
                        <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#:Item.ContactName %></td>
                            <td><%#:Item.CompanyName %></td>
                            <td><%#:Item.City %></td>
                            <td><%#:Item.Country %></td>
                            <td><a href="OrdersView.aspx?CustomerID=<%#:Item.CustomerID%>">See All Orders</a></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                    </FooterTemplate>
                </asp:Repeater>
                
            </table>
        </div>
    </form>
</body>
</html>
