<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dasbord.aspx.cs" Inherits="BIS_Embroidery.Dasbord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <link type="text/css" href="../css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/script.js"></script>     
    <link rel="Stylesheet" href="../css/chosen.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <script src="../js/chosen.jquery.js" type="text/javascript"></script>

    <style type="text/css">
        .imageStyle
        {
            height:35%;
            width :35%;
            margin-top:1%;
            animation: App-logo-spin infinite 60s linear;
           
        }
        
        
        @keyframes App-logo-spin 
        {
          from {transform: rotate(0deg);}
          to {transform: rotate(360deg);}
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="height:100%; width:100%">

    <asp:Label ID="lbf" runat="server" Visible="False"></asp:Label>
    <div style="height:100%;width:100%; opacity: 0.070; text-align:center; vertical-align:middle">
       <div style="text-align:center; margin-top:9%;"> WelCome to <asp:Label ID="lbc" runat="server" Visible="true"></asp:Label></div>
     <div style="text-align :center; padding:5%;"><asp:Image ID="imglogo" ImageUrl="~/images/arrow right.png" runat="server" CssClass="imageStyle" /></div>
     <div style="text-align :center">Contact us @ bhavyaitsolutions@gmail.com</div>
     </div>
</div>
</asp:Content>
