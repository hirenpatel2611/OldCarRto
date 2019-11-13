<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InwordPrint.aspx.cs" Inherits="oldCarRto.Inword.InwordPrint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .formStyle
        {
            font-family:Calibri;
            }
        .mainDiv
        {
            border: thin solid #000000; 
            border-radius:5px; 
            display:inline-block; 
            width:100%
        }
       .headDiv
       {
          width:100%;
           display:inline-block; 
           padding:2px;
            border-radius:5px;
            border-bottom: thin solid #000000;
            margin:0 2px 0 0;
       }
           
       .imgDiv
       {
           width:11%;
           float:left;
       }
           
       .contactDiv
       {
           width:12%;
            float:right;
            text-align:center;
            padding:2px
       }
       
        .companyDiv
       {
           width:76%;
            float:left;
            text-align:center
       }
       
       .img_Logo
       {
           border-radius:5px; 
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mainDiv">
        <div id="headDiv" class="headDiv">
            <div class="imgDiv">
              <asp:Image ID="img_Logo" runat="server"  Height="56px" Width="99px" 
                    CssClass="img_Logo" Visible="False" />
            </div>

            <div class="companyDiv">
              <asp:Label ID="lbc" runat="server" Visible="true" Font-Size="X-Large"></asp:Label>
              <asp:Label ID="lbf" runat="server" Visible="False"></asp:Label>
              <br />
              <asp:Label ID="lbAddress" runat="server" Font-Size="Small"></asp:Label>
            </div>

            <div class="contactDiv">
             <asp:Label ID="mobile1" runat="server" Style="font-weight: 700; font-size: small;">9601944914</asp:Label>
             <br />
             <asp:Label ID="mobile2" runat="server" Style="font-weight: 700; font-size: small;">6353119506</asp:Label>
            </div>
           
        </div>
        <div style="border: thin solid #000000; border-radius:5px; display:inline-block; width:100%; text-align:center">
        Challan
        </div>
        <div style="border: thin solid #000000; display:inline-block; width:100%; text-align:center">
            <table width="100%" style="font-family: Calibri">
            <tr>
                <td style="border-left: thin solid #000000; border-right: thin hidden #000000; border-top: thin hidden #000000; border-bottom-left-radius:5px; border-bottom-right-radius:15px;
                    border-bottom: thin solid #000000; font-size: small; text-align:left">
                    GSTIN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   : <asp:Label ID="lb_cmpGSTIN" runat="server" Style="font-weight: 700"></asp:Label>
                    <br />
                    Javak No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="lb_challanNo" runat="server" Style="font-size: small"></asp:Label>
                </td>
                <td style="border-style: hidden hidden solid solid; border-width: thin; border-color: #000000; border-bottom-right-radius:15px; text-align:left; font-size: small;">
                    Date : 
                    <asp:Label ID="inv_date" runat="server" Style="font-weight: 700" >11-07-2019</asp:Label>
                   
                        <br />
                    State&nbsp;: 
                    <asp:Label ID="State" runat="server" Style="font-weight: 700" ></asp:Label>
                        (<asp:Label ID="StateCode" runat="server"  Style="font-weight: 700"></asp:Label>
                  
                    )</td>
            </tr>
            <tr>
                <td align="center" style="border: thin hidden #000000; text-align: left; font-weight:bold;">
                    To, 
                </td>
                <td align="center" style="border-left: thin solid #000000; border-right: thin hidden #000000; border-bottom-left-radius:5px; border-bottom-right-radius:15px;
                    border-top: thin hidden #000000; border-bottom: thin solid #000000; text-align: left;">
                </td>
            </tr>
            <tr>
                <td style="border: thin hidden #000000; text-align:left; font-size: small;">
                  Name&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<asp:Label ID="lb_name" runat="server" Style="font-weight: 700"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                  GSTIN/Pan No :&nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="lb_PGSTIN" runat="server" Style="font-weight: 700"></asp:Label>
                        <br />
                        Mobile No&nbsp;
                        <asp:Label ID="lb_Pmobile" runat="server" Style="font-weight: 700;"></asp:Label>
                   
                    <br />
                   </td>
                <td style="border: thin hidden #000000; text-align:left; font-size: small;">
              
                   Address :&nbsp;                   
                    <asp:Label ID="lb_Paddress" runat="server" Style="font-weight: 700" ></asp:Label>                   
                        <br />
                   State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :                 
                        <asp:Label ID="lb_PState" runat="server" Style="font-weight: 700"></asp:Label>
                        (<asp:Label ID="lb_PStateCode" runat="server" Style="font-weight: 700"></asp:Label>
                  
                    )</td>
            </tr>
        </table>
        </div>
        <div style="border: thin solid #000000; display:inline-block; width:100%; text-align:center">
            <table style=" width:100%;  border:thik solid #000000; border-radius:10px; ">
                <tr style=" font-size:small; font-family:Calibri; font-weight:bold; border-top:thin solid #000000 ">
                    <td style="text-align:center; width:3%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        Sr No.</td>
                    <td style="text-align:left; width:15%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        Discription</td>
                    <td style="text-align:center; width:5%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        Challan No</td>
                    <td style="text-align:center; width:5%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        HSN</td>
                    <td style="text-align:center; width:5%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        QTY.</td>
                    <td style="text-align:center; width:5%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        Unit</td>
                         <td style="text-align:center; width:5%; border-bottom:thin solid #000000; border-right:thin solid #000000">
                        Rate</td>
                        <td style="text-align:center; width:5%; border-bottom:thin solid #000000">
                        Total</td>
                </tr>
                <tr>
                    <td style="border-right:thin solid #000000; height:130px; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_srNo" runat="server"></asp:PlaceHolder>
                    </td>
                    <td style="border-right:thin solid #000000; vertical-align:top; text-align:left;">
                        <asp:PlaceHolder ID="PlaceHolder_discp" runat="server"></asp:PlaceHolder>
                        </td>
                    <td style="border-right:thin solid #000000; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_ChallanNo" runat="server"></asp:PlaceHolder>
                        </td>
                    <td style="border-right:thin solid #000000; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_HSN" runat="server"></asp:PlaceHolder>
                        </td>
                    <td style="border-right:thin solid #000000; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_Qty" runat="server"></asp:PlaceHolder>
                        </td>
                    <td style="border-right:thin solid #000000; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_Unit" runat="server"></asp:PlaceHolder>
                        </td>
                        
                        <td style="border-right:thin solid #000000; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_Rate" runat="server"></asp:PlaceHolder>
                        </td>
                        <td style="; vertical-align:top;">
                        <asp:PlaceHolder ID="PlaceHolder_Total" runat="server"></asp:PlaceHolder>
                        </td>
                </tr>
                <tr>
                    <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        &nbsp;</td>
                    <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        &nbsp;</td>
                    <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        &nbsp;</td>
                    <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        &nbsp;</td>
                    <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        <asp:Label ID="lb_totalQty" runat="server" Style="font-weight: 700;">0</asp:Label>
                        </td>
                    <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        &nbsp;</td>
                        <td style="text-align:center;border-top:thin solid #000000; border-right:thin solid #000000">
                        
                        </td>
                        <td style="text-align:center;border-top:thin solid #000000; ">
                        <asp:Label ID="lb_totalTtl" runat="server" Style="font-weight: 700;">0</asp:Label>
                        </td>
                </tr>
                <tr>
                    <td colspan="8" style="border-top:thin solid #000000; text-align:left;">
                     <asp:Label ID="lb_amtWord" runat="server" Style="font-weight: 700;"> Word</asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div style="border: thin solid #000000; display:inline-block; width:100%; text-align:center">
         <table class="Tablestyle" style="width:100%;">
                <tr>
                    <td style = "vertical-align:top; text-align:left;">
                        <span style="font-weight:bold">Terms & Conditions :</span>

                        </td>
                    <td style="vertical-align:bottom; font-weight:bold; border-left:thin solid #000000; border-top-left-radius:45px;">
                        Receiver Signatory
                        </td>
                    <td style="text-align:right; ">
                    <asp:Label ID="lb_lbcAutho" runat="server" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
                    <br />
                         AuthorAuthorised Signatory
                        </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
