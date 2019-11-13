<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inword.aspx.cs" Inherits="oldCarRto.Inword.Inword" %>
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
    In Word</div>
<div style="display:inline-block; padding:1% 0 0 1%; width:60%">
            <div style="width:15%; float:left; ">
            No : <asp:Label ID="lb_id" runat="server"></asp:Label>
            </div>
            <div style="width:20%; float:right;">
            <asp:TextBox ID="txt_date" runat="server" placeholder="DD/MM/YYYY" 
                    Style="border-radius:5px;" OnTextChanged="OnTextChangedDate"
                    Width="148px" AutoPostBack="True"></asp:TextBox>
            <asp:Label ID="lb_date" runat="server" Visible="False"></asp:Label>
            </div>
</div>
<div>
    <div class="blockDiv">
    <div class="headDiv"><asp:Image ID="Image2" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" />
                        Party Details</div>
    <div style="width:100%; padding:1% 2% 0 2%; height:auto">
        <div class="dropDiv">
            Name :<asp:TextBox ID="txt_name" runat="server" placeholder="Name..." 
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
         <div class="dropDiv">
        Show Room :<asp:DropDownList ID="drp_Showroom" runat="server" class="chosen-select" Width="148px">
            </asp:DropDownList>
        </div>
    </div>
    </div>
    <div class="blockDiv">
     <div class="headDiv"><asp:Image ID="Image1" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" />
                             Vehicle Details</div>
    <div style="width:100%; padding:1% 2% 1% 2%; text-align:center;">
     <div class="dropDiv">
        Vehicle No :<asp:TextBox ID="txt_vehicleNo" runat="server" placeholder="Vehicle No..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    <div class="dropDiv">
        Chassis No :<asp:TextBox ID="txt_chassis" runat="server" placeholder="Chassis No..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
     <div class="dropDiv">
        Vehicle Type :<asp:TextBox ID="txt_vehicleType" runat="server" placeholder="Vehicle Type..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    
    
    </div>
    </div>
    <div class="blockDiv">
     <div class="headDiv"><asp:Image ID="imglogo" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" />
                            RTO Details</div>
    <div style="width:100%; padding:1% 2% 1% 2%; text-align:center;">
     <div class="dropDiv">
        RTO :<asp:TextBox ID="txt_rto" runat="server" placeholder="RTO..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    <div class="dropDiv">
        RTO Fee :<asp:TextBox ID="txt_rtoFee" runat="server" placeholder="RTO Fee..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    <div class="dropDiv">
        RTO Receipt No :<asp:TextBox ID="txt_rtoReceiptNo" runat="server" placeholder="RTO Receipt No..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    </div>
    </div>
    <div class="blockDiv">
     <div class="headDiv"><asp:Image ID="Image3" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" />
                            Item Details</div>
    <div style="width:100%; padding:1% 2% 1% 2%; text-align:center;">
     <div class="dropDiv">
        Work :<asp:TextBox ID="txt_work" runat="server" placeholder="Work ..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    <div class="dropDiv">
        Total Amount :<asp:TextBox ID="txt_totalAmt" runat="server" placeholder="Total ..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    <div class="dropDiv">
        Payable Amount :<asp:TextBox ID="txt_paidAmt" runat="server" placeholder="Payable ..." 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
        <div class="dropDiv">
        Remarks :<asp:TextBox ID="txt_remarks" runat="server" placeholder="Remarks ..." TextMode="MultiLine" 
                    Style="border-radius:5px;"
                    Width="148px"></asp:TextBox>
        </div>
    </div>
    </div>
    <div class="blockDiv">
        <div class="headDiv"><asp:Image ID="Image4" ImageUrl="~/images/3d.jpg" runat="server" CssClass="imageStyle" /></div>
         <div class="dropDiv" style="float:right; padding:2px">
          <asp:Button ID="btn_save" runat="server" Text="Save" CssClass="primary-button" onclick="btn_save_Click" 
                 />
         </div>
    </div>
</div>
 <script type="text/javascript">
     var config = {
         '.chosen-select': {},
         '.chosen-select-deselect': { allow_single_deselect: false },
         '.chosen-select-no-single': { disable_search_threshold: 10 },
         '.chosen-select-no-results': { no_results_text: 'Oops, nothing found!' },
         '.chosen-select-width': { width: "95%" }
     }
     for (var selector in config) {
         $(selector).chosen(config[selector]);
     }
    </script>
</asp:Content>
