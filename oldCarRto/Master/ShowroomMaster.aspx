<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowroomMaster.aspx.cs" Inherits="oldCarRto.Master.ShowroomMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" href="../css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/script.js"></script>     
    <link rel="Stylesheet" href="../css/chosen.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <script src="../js/chosen.jquery.js" type="text/javascript"></script>
 <style type="text/css">
       
     .mainheader
     {
         width:20%;
         text-align: center;
         border:medium solid #C7D5E3; 
         float:left;
        background-image:url('../images/3d.jpg');
         border-top-right-radius: 20px;
         border-bottom-right-radius: 20px; 
         font-weight: 700; 
         font-size: x-large;
         text-align: center; 
         color:White; 
         text-decoration: underline;
          
         }
     .headDiv
     {
            background-color:#F0F0F0;
            border-radius:5px;
            padding:2px;
            border:medium solid #C7D5E3;   
         }
     .dropDiv
     {
         min-width:1%;
         float:left;
         text-align:center;
         padding:0 1% 0 0;
         text-align:right;
         display:flex;
          justify-content: center;
         }
     .blockDiv
     {
      width:98%;
      margin:1% 1% 0 1%; 
      display:inline-block; 
      position:relative; 
      border:medium solid #C7D5E3;
      border-top:none;
      border-radius:8px;
      height:auto;
      padding:0 0 5px 0;   
         }
      .button
     {
         background-color:#3399FF;
         border:none;
         color:White;
         font-weight:bold;
     }
 .primary-button {
          display: inline-block;
          background-color: #fa5252;
          color: #fff;
          letter-spacing: 1px;
          font-size: 15px;
          padding: 8px 18px;
          font-weight: 300;
          text-decoration: none;
          text-transform: uppercase;
          border: 1px solid transparent;
          border-radius:5px;
        }

     .primary-button:hover {
          background-color: transparent;
          border: 1px solid #000;
          -moz-transition: all 0.2s linear;
          -o-transition: all 0.2s linear;
          -webkit-transition: all 0.2s linear;
          color:#000000;
        }
        
        .imageStyle
        {
            height:15px;
            width :15px;
            animation: App-logo-spin infinite 20s linear;
            margin-right: 3px;
            margin-right:3px;
            border-radius:2px; 
            box-shadow: 2px 2px 2px 2px rgba(0.2, 0.2, 0.2, 0.2);
           
        }
        
        
        @keyframes App-logo-spin 
        {
          from {transform: rotate(0deg);}
          to {transform: rotate(360deg);}
        }
        
        @media (max-width:575px)
        {
             .dropDiv{min-width:70%; float:left; text-align:right;padding:0 1% 0 0;display:block;}
            }
       @media (max-width:767px) 
       {
           .dropDiv{min-width:70%; float:left; text-align:right;padding:0 1% 0 0;display:block;}
           }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mainheader">
    Showroom</div>
<div style="display:inline-block; padding:1% 0 0 1%; width:60%">
            <div style="width:15%; float:left; ">
            No : <asp:Label ID="lb_id" runat="server"></asp:Label>
            </div>
            <div style="width:20%; float:right;">
            </div>
</div>
<div>
         <div class="blockDiv">
    <div class="headDiv"><asp:Image ID="Image2" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" />
                        Party Details</div>
    <div style="width:100%; padding:1% 2% 0 2%; height:auto">
        <div class="dropDiv">
            Show Room :<asp:TextBox ID="txt_showRoom" runat="server" placeholder="Show Room..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
            </div>
        <div class="dropDiv">
        Mo. No. :<asp:TextBox ID="txt_contact" runat="server" placeholder="Mobile No..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
                    
        </div>
         <div class="dropDiv">
        Address :<asp:TextBox ID="txt_address" TextMode="MultiLine" runat="server" placeholder="Address..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    </div>
    </div>
    <div class="blockDiv">
        <div class="headDiv"><asp:Image ID="Image4" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" /></div>
         <div class="dropDiv" style="float:right; padding:2px">
          <asp:Button ID="btn_save" runat="server" Text="Save" CssClass="primary-button"/>
         </div>
    </div>
</div>
</asp:Content>
