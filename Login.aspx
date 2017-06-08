<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

	<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
		
	
    
    <div class="auto-style1">
    
    	<strong style="text-align: center">Login Page</strong></div>
	<table style="width:100%;">
		<tr>
			<td class="auto-style2">Username: </td>
			<td class="auto-style4">
				<asp:TextBox ID="TextBoxUsername" runat="server" Width="180px"></asp:TextBox>
			</td>
			<td>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please enter Username." ForeColor="Red"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Password: </td>
			<td class="auto-style4">
				<asp:TextBox ID="TextBoxPassword" runat="server" style="margin-bottom: 0px" TextMode="Password" Width="180px"></asp:TextBox>
			</td>
			<td>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password." ForeColor="Red"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style3">&nbsp;</td>
			<td class="auto-style4">
				<asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="Login" Width="180px" />
			</td>
			<td>
				<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New Register</asp:HyperLink>
			</td>
		</tr>
		<tr>
			<td class="auto-style3">&nbsp;</td>
			<td class="auto-style4">&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>

		</asp:Content>
