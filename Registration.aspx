<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div>
		<h1>
			Registration Page
		</h1>
	</div>

	
    <div>
    
    	<table style="width:80%;" border="0">
			<tr>
				<td class="auto-style2">User Name:</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
				</td>
				<td class="auto-style8">
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">E-mail:</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
				</td>
				<td class="auto-style8">
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
					<br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid e-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">Password:</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
				</td>
				<td class="auto-style8">
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">Confirm Password:</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
				</td>
				<td class="auto-style8">
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm Password is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
					<br />
					<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both Password must be same" ForeColor="#FF3300"></asp:CompareValidator>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">Country:</td>
				<td class="auto-style3">
					<asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
						<asp:ListItem>Select Country</asp:ListItem>
						<asp:ListItem>USA</asp:ListItem>
						<asp:ListItem>UK</asp:ListItem>
						<asp:ListItem>Germany</asp:ListItem>
						<asp:ListItem>France</asp:ListItem>
					</asp:DropDownList>
				</td>
				<td class="auto-style8">
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Select a country name" ForeColor="#FF3300" InitialValue="Select Country"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td class="auto-style5"></td>
				<td class="auto-style6">
					<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
					<input id="Reset1" type="reset" value="Reset" /></td>
				<td class="auto-style7"></td>
			</tr>
			<tr>
				<td class="auto-style4">&nbsp;</td>
				<td class="auto-style3">&nbsp;</td>
				<td class="auto-style9">&nbsp;</td>
			</tr>
		</table>
    
    </div>
</asp:Content>