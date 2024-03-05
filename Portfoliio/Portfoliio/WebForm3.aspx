<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Portfoliio.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin panel</title>
    <link rel="stylesheet" href="style/stylesheet2.css" />
</head>
<body>
    <form runat="server">
        <!-- uploading data into project -->

        <div id="add projects">
            <div class="container">
                <h1 class="heading">Add your new project here</h1>

                <input type="text" id="name" placeholder="Project name" runat="server" />
                <input type="text" id="details" placeholder="Details" runat="server" />
                <input type="file" id="imageFile" runat="server" />
                <input type="text" id="link" placeholder="Link" runat="server" />
                <div>
                    <input type="button" value="Upload" class="btn" id="uploadbtn" runat="server" onserverclick="SaveToDatabase" />
                    <input type="button" value="Go to Portfolio" class="btn" id="redirectbtn" runat="server" onserverclick="redirecttomain" />
                </div>
                <h3>Delete a Project by providing its name</h3>
                <input type="text" id="dltname" placeholder="Project name" runat="server" />
                <input type="button" value="Delete" class="btn" id="dltbutton" runat="server" onserverclick="DeleteProject" />

            </div>
        </div>

        <!--For uploading data into services-->

        <div id="add_service">
            <div class="container">
                <h1 class="heading">Add your new service here</h1>

                <input type="text" id="font" placeholder="fontstyle(text only)" runat="server" />
                <input type="text" id="heading" placeholder="heading" runat="server" />
                <input type="text" id="service_details" placeholder="Service Details" runat="server" />
                <input type="text" id="learnmore_link" placeholder="Link" runat="server" />
                <div>
                    <input type="button" value="Upload" class="btn" id="Button1" runat="server" onserverclick="serviceSave" />
                    <input type="button" value="Go to Portfolio" class="btn" id="Button2" runat="server" onserverclick="redirecttomain" />
                </div>
                <h3>Delete a Service by providing its heading</h3>
                <input type="text" id="dltheading" placeholder="service heading" runat="server" />
                <input type="button" value="Delete" class="btn" id="deletebtn" runat="server" onserverclick="DeleteService" />

            </div>
        </div>

    </form>
</body>
</html>
