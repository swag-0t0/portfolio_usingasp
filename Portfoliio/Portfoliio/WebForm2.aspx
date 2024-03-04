<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Portfoliio.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login page</title>
    <link href="style/stylesheet1.css" rel="stylesheet" type="text/css" />

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="stylesheet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
</head>

<body>

    <div class="login-form">
        <form runat="server">
            <h1>Login here!</h1>
            <div class="content">
                <div class="input-field">
                    <input type="text" placeholder="Name" runat="server" id="name" />
                </div>
                <div class="input-field">
                    <input type="password" placeholder="Password" id="password" runat="server" />
                </div>
                <a href="#" class="link">Forgot Your Password?</a>
            </div>
            <div class="action">
                <button runat="server" onserverclick="submission" id="submit">Sign in</button>
            </div>
        </form>
    </div>

</body>

</html>


