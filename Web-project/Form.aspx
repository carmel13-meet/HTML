<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Third_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head dir = "rtl">
    <title>טופס הרשמה</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <script language = "javascript" type = "text/javascript" >
        function MyFunction() {
            var firstName = document.form1.fname.value;
            var lastName = document.form1.lname.value;
            if (firstName == "") {
                if (lastName == "") {
                    alert("לא רשמת את שמך");
                    return false;
                }

                if (lastName != "") {
                    alert("לא רשמת את שמך הפרטי");
                    return false;
                }
            }
            else {
                if (lastName == "") {
                    alert("לא רשמת את שם משפחתך");
                    return false;
                }
            }
            for (var i = 0; i < (firstName.length) - 1; i++) {
                if (isNaN(firstName[i]) == false) {
                    alert("בבקשה הכנס שם פרטי המכיל רק אותיות");
                    return false;
                }
            }
            for (var i = 0; i < (lastName.length) - 1; i++) {
                if (isNaN(lastName[i]) == false) {
                    alert("בבקשה הכנס שם משפחה המכיל רק אותיות");
                    return false;
                }
            }
            var address = document.form1.email.value;
            var strudel = address.indexOf("@");
            if (strudel == -1) {
                alert("שכחת את הסימן '@'");
                return false;
            }
            var age = document.form1.age.value;
            if (age == "") {
                alert("לא רשמת את גילך");
                return false;
            }
            if (age > 100 || age < 1) {
                alert("בבקשה הכנס גיל הגיוני");
                return false;

            }
            if (isNaN(age) == true) {
                alert("בבקשה הכנס גיל המכיל מספרים בלבד");
                return false;
            }
            var id = document.form1.value;
            for (var i = 0; i < (id.length) - 1; i++) {
                if (isNaN(id) == true) {
                    alert("בבקשה הכנס תעודת זהות המכילה רק מספרים");
                    return false;
                }
            }
            if (id == "")
                alert("בבקשה הכנס תעודת זהות");
            if ((document.getElementById("female").checked == false) && (document.getElementById("male").checked == false)) {
                alert("לא רשמת את מינך");
                return false;
            }

            var password = document.form1.password.value;
            if (password == "") {
                alert("לא רשמת את סיסמתך");
                return false;
            }
            
            
        }
    </script>
</head>
<body dir = "rtl">
    <table class = "navbar">
    <tr>
    <td><a href="HomePage.htm">דף הבית</a></td>
    <td><a href="Form.aspx">טופס הרשמה</a></td>
    <td><a href="Background.htm">רקע</a></td>
    <td><a href="History1.htm">משפט סקוטסבורו</a></td>
    <td><a href="History2.htm">בית המשפט העליון</a></td>
    <td><a href="History3.htm">אישים</a></td>
    </tr>
    <tr>
    <td colspan="6">
    </td>
    </tr>
    </table>
    <br />
    <form id="form1" name = "form1" method = "get" action = "HomePage.htm" onsubmit = "return MyFunction()">
    <table border = "2" align = "center" dir = "rtl">
    <tr>
    <td>שם פרטי: </td><td><input type="text" name="fname" /></td>
    </tr>
    <tr>
    <td>שם משפחה: </td><td><input type="text" name="lname" /></td>
    </tr>
    <tr>
    <td>כתובת הדוא"ל שלך: </td><td><input type = "text" name = "email" /></td>
    </tr>
    <tr>
    <td>גיל: </td><td><input type = "text" name = "age"/></td>
    </tr>
    <tr>
    <td>תעודת זהות: </td><td><input type = "text" name = "id" /></td>
    </tr>
    <tr>
    <td>מין: </td><td>זכר <input type="radio" name="gender" value = "male" id = "male" /></td><td>נקבה <input type="radio" name="gender" value = "female" id = "female" /></td>
    </tr>
    <tr>
    <td>סיסמה: </td><td><input type="password" name="password" /></td>
    </tr>
    </table>
    <br />
    <center><input type="submit" name="submit" value="שלח"/></center>
    <center><input type="reset" name="reset" value="אפס"/></center> 
    </form>
    <br />
    <center>
    <h1>
    <font size = "4">
    ליצירת קשר באמצעות דוא"ל, לחץ <a href="mailto:16carmel@gmail.com?Subject=Hello%20again" target="_top">
כאן</a>
    </font>
    </h1>
    </center>
</body>
</html>
