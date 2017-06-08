<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<br />
    	<asp:Label ID="Label_Welcome" runat="server" Text="Welcome "></asp:Label>
		<br />
		<asp:Button ID="Button_Logout" runat="server" Height="33px" Text="Logout" Width="71px" OnClick="Button_Logout_Click" />
    </div>
    </form>
</body>
</html>
