<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegSQL.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <h1>Look I got here after you hit submit! </h1> <br />
    <div>
    
    <%
        string MySQL = "INSERT INTO UserTable (FirstName, LastName, EmailAddress, VarAge, VarID, VarGender, VarPassword) ";
        MySQL = MySQL + "VALUES ('" + Request.Form["fname"] + "', '" + Request.Form["lname"] + "', '" + Request.Form["email"] + "', '";
        MySQL = MySQL + Request.Form["age"] + "', '" + Request.Form["idNum"] + "', '" + Request.Form["gender"] + "', '";
        MySQL = MySQL + Request.Form["password1"] + "');";
        Response.Write(MySQL);                   
        string strConnection = "Provider = 'Microsoft.ACE.OLEDB.12.0'; Data Source = " + System.Web.HttpContext.Current.Server.MapPath(@"App_Data/CivilRightsDB.accdb");
        System.Data.OleDb.OleDbConnection o_con = new System.Data.OleDb.OleDbConnection(strConnection);
        System.Data.OleDb.OleDbCommand o_command = new System.Data.OleDb.OleDbCommand(MySQL, o_con);
        o_con.Open();
        o_command.ExecuteNonQuery();
        o_con.Close();
        Response.Write("</br> Done");

        //Response.Redirect("HomePage.htm"); 
         %>


    </div>
    <a href="HomePage.htm">HomePage.htm</a>
</body>
</html>
