<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Third page.aspx.cs" Inherits="Third_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script language = "javascript">
        function Spy() {
            var address = document.form1.email.value
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(address)) {
                alert("You are missing a '@'");
            }
            else
                alert("Cool e-mail")
        }
            
    </script>
</head>
<body>
    <form id="form1" name = "form1">
    <div>
    What's your name ? <input type="text" name="name" />

    <br />

    Enter your email address: <input type = "text" name = "email" />

    <br />

    <h3>Choose your class:
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
    </h3>
    
    <br />

    <h4>Where would you like to commit a suicide?</h4>
    Israel<input type="checkbox" name="v_place1" value="Israel" onclick = "Israel()" />
    U.K.<input type="checkbox" name="v_place2" value="U.K." />
    U.S.A<input type="checkbox" name="v_place3" value="U.S.A" />
    Madagascar<input type="checkbox" name="v_place4" value="Madagascar" />
    
    <br />

    <h5>Have you ever seen slenderman ?</h5>
    YES ! he's a handsome man<input type ="radio" name = "v_answer" value="YES!! he's a handsome man" />
    of course not ! i'm not stupid...<input type ="radio" name = "v_answer" value="of course not ! i'm not stupid..." />
    no<input type ="radio" name = "v_answer" value="no" />
    whar's a slenderman ?<input type ="radio" name = "v_answer" value="what's a slenderman ?" />

    <br />

    <textarea name = "textarea" cols = "30" rows = "10">Are you tired from being chased by onions?</textarea>
    
    <br />
    
    <h6>Don't enter password</h6><input type="password" name="password" />
    
    <br />
    
    <input type="submit" name="submit" value="submit" onclick="Spy()"/>
    <input type="reset" name="reset" value="reset" />
    
    </div>
    
    </form>
</body>
</html>
