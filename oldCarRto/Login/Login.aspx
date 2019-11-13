<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BIS_Embroidery.Login.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link type="text/css" href="LoginStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main_div_Login" runat="server" class="main_div_Login">
        <div id="modal_div_Login" class="modal_div_Login" align="center">
            <div class="modal_div_header">Login</div>
            <div class="modal_div_Username">
               
                <div class="modal_div_textBoxUsername">
                <asp:TextBox ID="txt_username" runat="server" BorderStyle="Solid" 
                        placeholder="User Name" CssClass="modal-TextBox"></asp:TextBox>
                </div>
            </div>
            <div class="modal_div_password">
                
                <div class="modal_div_textBoxUsername">
                <asp:TextBox ID="txt_password" runat="server" BorderStyle="Solid" 
                        TextMode="Password" placeholder="Password" CssClass="modal-TextBox"></asp:TextBox>
                </div>
            </div>
             <div class="modal_div_password">
                 <asp:CheckBox ID="rememberchk" runat="server" Text="Remember" 
                     Font-Names="Calibri" ForeColor="White" />
             </div>

            <div class="modal_div_button">
                        <asp:Button ID="Button1" runat="server" Text="Login" 
                            CssClass="primary-button" onclick="Button1_Click"/>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
