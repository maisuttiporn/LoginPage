<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 481px">
		<asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [NameData]"></asp:SqlDataSource>
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceRegistration" GridLines="Vertical">
			<AlternatingRowStyle BackColor="#DCDCDC" />
			<Columns>
				<asp:BoundField DataField="NameID" HeaderText="NameID" SortExpression="NameID" />
				<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
				<asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
			</Columns>
			<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
			<HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
			<RowStyle BackColor="#EEEEEE" ForeColor="Black" />
			<SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F1F1F1" />
			<SortedAscendingHeaderStyle BackColor="#0000A9" />
			<SortedDescendingCellStyle BackColor="#CAC9C9" />
			<SortedDescendingHeaderStyle BackColor="#000065" />
		</asp:GridView>
    	<br />
		<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceRegistration" Height="180px" Width="402px">
			<series>
				<asp:Series ChartType="SplineArea" Name="Series1" XValueMember="Name" YValueMembers="Age">
				</asp:Series>
			</series>
			<chartareas>
				<asp:ChartArea Name="ChartArea1">
				</asp:ChartArea>
			</chartareas>
		</asp:Chart>
    </div>
    </form>
</body>
</html>
