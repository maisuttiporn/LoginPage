using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (IsPostBack)
		{
			
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
			conn.Open();
			string checkuser = "select count(*) from UserData where"
				+ " Username='" + TextBoxUN.Text + "'";


			//Response.Write(checkuser);
			SqlCommand com = new SqlCommand(checkuser, conn);
			int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
			if(temp == 1)
			{
				Response.Write("User already Exists");
			}
			conn.Close();
		}
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		try
		{
			Guid newGUID = Guid.NewGuid();
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
			conn.Open();

			string insertQuery = "insert into UserData (ID,Username,Email,Password,Country) values (@guid,@username,@email,@password,@country)";
			SqlCommand com = new SqlCommand(insertQuery, conn);

			Response.Write(insertQuery);
			com.Parameters.AddWithValue("@guid", newGUID.ToString());
			com.Parameters.AddWithValue("@username",TextBoxUN.Text);
			com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
			com.Parameters.AddWithValue("@password", TextBoxPass.Text);
			com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());

			com.ExecuteNonQuery();
			Response.Redirect("Manager.aspx");
			Response.Write("Registration is successfuly");

			conn.Close();
		}
		catch(Exception ex)
		{
			Response.Write("Error: " + ex.ToString());
		}
	}
}