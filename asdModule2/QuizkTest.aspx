<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuizkTest.aspx.cs" Inherits="asdModule2.QuizkTest" %>

<%@ Register Src="~/DesktopModules/CustomModules/asdModule2/asdModule2.ascx" TagPrefix="uc1" TagName="asdModule2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:asdModule2 runat="server" ID="asdModule2" />
    </div>
    </form>
</body>
</html>
