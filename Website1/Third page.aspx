<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Third page.aspx.cs" Inherits="Third_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script language = "javascript">
        function MyFunction() {
            var address = document.form1.email.value;
            var strudel = address.indexOf("@");
            if (strudel == -1) {
                alert("You are missing a '@'");
            }
            var FirstName = document.form1.fname.value;
            var LastName = document.form1.lname.value;

            if (FirstName == "") {
                if (LastName == "") {
                    alert("Oh hell no ! You haven't entered anything");
                }

                if (LastName != "") {
                    alert("You haven't entered your first name");
                }
            }
            else {
                if (LastName == "")
                    alert("You haven't entered your last name");
                else
                    alert(FirstName + " " + LastName);
            }

            if (document.getElementById("female").checked == true) {
                alert("Nice hat")
            }

            if (document.getElementById("Israel").checked == true)
            {
                alert("You must be kidding");
                }




         
        }  
            
    </script>
</head>
<body bgcolor="aqua">
    <form id="form1" name = "form1" method = "post">
    <table border = "2" align = "center">
    <tr>
    <td>First name: </td><td><input type="text" name="fname" /></td>
    </tr>
    <tr>
    <td>Last name: </td><td><input type="text" name="lname" /></td>
    </tr>
    <tr>
    <td>Enter your email address: </td><td><input type = "text" name = "email" /></td>
    </tr>
    <tr>
    <td>Choose your class: </td>
    <td>
    <select name = "select">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    </select>
    </td>
    </tr>
    <tr>
    <td>What's your gender ? </td><td>Male <input type="radio" name="gender" value = "male" id = "male" /></td><td>Female <input type="radio" name="gender" value = "female" id = "female" /></td>
    </tr>
    <tr>
    <td>Enter password: <input type="password" name="password" /></td>
    </tr>
    </table>
    <br />
    <center><input type="submit" name="submit" value="Submit" onclick = "MyFunction()" /></center>
    <center><input type="reset" name="reset" value="Reset" /></center>
    

    
    </form>
</body>
</html>
