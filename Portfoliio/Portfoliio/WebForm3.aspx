<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Portfoliio.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin panel</title>
    <link rel="stylesheet" href="style/stylesheet2.css" />
</head>
<body>
    <div id="add projects">
        <div class="container">
            <h1 class="heading">Add your new project here</h1>
            <form runat="server">
                <input type="text" id="name" placeholder="Project name" runat="server" />
                <input type="text" id="details" placeholder="Details" runat="server" />
                <input type="file" id="imageFile" runat="server" />      
                <input type="text" id="link" placeholder="Link" runat="server" />
                <div>
                     <input type="button" value="Upload" class="btn" id="uploadbtn" runat="server" onserverclick="SaveToDatabase" />
                     <input type="button" value="Go to Portfolio" class="btn" id="redirectbtn" runat="server" onserverclick="redirecttomain" />
                </div>
            </form>
        </div>
    </div>

</body>
</html>
