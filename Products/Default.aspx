<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Products.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body  style="background-color: darkcyan">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCode" runat="server" Text="Product Code:"></asp:Label>
            <asp:TextBox ID="txtCode" runat="server" Height="17px" style="margin-left: 29px"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Product Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" style="margin-left: 29px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Stock Amount:"></asp:Label>
            <asp:TextBox ID="txtStock" runat="server" style="margin-left: 29px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server" style="margin-left: 84px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Description:"></asp:Label>
            <asp:TextBox ID="txtDesc" runat="server" Height="47px" OnTextChanged="TextBox5_TextChanged" style="margin-left: 49px" Width="203px"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Text="Result:"></asp:Label>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnAdd" runat="server" Height="25px" OnClick="btnAdd_Click" Text="Add" Width="91px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Height="25px" Text="Delete" Width="91px" OnClick="btnDelete_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Height="25px" Text="Update" Width="91px" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnList" runat="server" Height="25px" OnClick="btnList_Click" Text="List " ViewStateMode="Disabled" Width="91px" />
        </p>
        <p>
            <asp:GridView ID="GridView1" BackColor="White" runat="server" Width="1191px">
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
