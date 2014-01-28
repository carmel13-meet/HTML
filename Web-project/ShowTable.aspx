
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTable.aspx.cs" Inherits="ShowTable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<div>
<h1> The Results! </h1>
<%
    string str = "";
    string MySQL = "SELECT * FROM UserTable;";
    string strConnection = "Provider = 'Microsoft.ACE.OLEDB.12.0'; Data Source = " + System.Web.HttpContext.Current.Server.MapPath(@"App_Data/CivilRightsDB.accdb");
    
    System.Data.OleDb.OleDbConnection o_con = new System.Data.OleDb.OleDbConnection(strConnection);
    System.Data.OleDb.OleDbCommand o_command = new System.Data.OleDb.OleDbCommand(MySQL, o_con);
     
    
    o_con.Open();
    System.Data.OleDb.OleDbDataAdapter da = new System.Data.OleDb.OleDbDataAdapter(o_command);
    System.Data.DataSet ds = new System.Data.DataSet();
    da.Fill(ds, "TableName");
    o_con.Close();

    if (ds.Tables[0].Rows.Count == 0)
        str = "לא נמצאו משתמשים";  
    else
    {
        // fill the string with HTML commands to build the table showing the output.
        str = "<table border='2' align='center'><tr><th>Field No.</th><th>First Name</th><th>Last Name</th><th>Email Address</th><th>Age</th><th>ID</th><th>Gender</th><th>Password</th></tr>";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++) // loop for each row
        {
            str += "<tr>";
            for (int j = 0; j < ds.Tables[0].Columns.Count; j++)  // loop for each field
            {
                str += "<td>" + ds.Tables[0].Rows[i][j].ToString() + "</td>";
            }
            str += "</tr>";
        }
        str += "</table>";
    }

    Response.Write(str);  // same string gets printed 
     %>
    
    </div>
   <p>
     <a href="Form.aspx"> Would you like to sign up?</a>
   </p>
</body>
</html>
