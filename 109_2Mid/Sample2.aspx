﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample2.aspx.cs" Inherits="_109_2Mid.Sample2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>訂貨單</h1>

            <asp:DropDownList ID="dbl_Area" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="dbl_Area_SelectedIndexChanged">
                <asp:ListItem Selected="True">北區</asp:ListItem>
                <asp:ListItem>中區</asp:ListItem>
            </asp:DropDownList><br />

            <asp:DropDownList ID="dbl_Place" runat="server">
                <asp:ListItem>基隆</asp:ListItem>
                <asp:ListItem>台北</asp:ListItem>
                <asp:ListItem>新北</asp:ListItem>
                <asp:ListItem Enabled="False">苗栗</asp:ListItem>
                <asp:ListItem Enabled="False">台中</asp:ListItem>
                <asp:ListItem Enabled="False">南投</asp:ListItem>
            </asp:DropDownList><br />

            <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
            <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="其他"></asp:Label>
            <asp:RadioButtonList ID="rbl_Res" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rbl_Res_SelectedIndexChanged">
                <asp:ListItem Selected="True">否</asp:ListItem>
                <asp:ListItem>是</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="tb_Des" runat="server" Visible="false" Width="400px"></asp:TextBox><br />

            <asp:Button ID="btn_Sub" runat="server" Text="送出" OnClick="btn_Sub_Click"/><br />
            <asp:Label ID="lb_Msg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
