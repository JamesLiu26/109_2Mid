<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample1.aspx.cs" Inherits="_109_2Mid.Sample1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>會員註冊</h1>
            <asp:Label ID="Label1" runat="server" Text="會員帳號" Font-Size="X-Large"></asp:Label>
            <asp:TextBox ID="tb_Acc" runat="server" Height="15px" Width="200px"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="密碼" Font-Size="X-Large"></asp:Label>
            <asp:TextBox ID="tb_Pass" runat="server" Height="15px" Width="200px" TextMode="Password"></asp:TextBox><br />
            
            <asp:Label ID="Label3" runat="server" Text="興趣(單選)" Font-Size="X-Large"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rbg_Interest" Text="看書" Font-Size="X-Large"/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rbg_Interest" Text="打電動" Font-Size="X-Large"/>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rbg_Interest" Text="其他" Font-Size="X-Large"/><br/>

            <asp:Label ID="Label4" runat="server" Text="其他連結" Font-Size="X-Large"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/aws-brands.svg" NavigateUrl="https://aws.amazon.com/tw/" ImageHeight="30px" ImageWidth="30px"></asp:HyperLink><br/>

            <asp:Button ID="bt_Next" runat="server" Text="送出" Height="30px" Width="80px" PostBackUrl="~/Sample1Com.aspx" />

        </div>
    </form>
</body>
</html>
