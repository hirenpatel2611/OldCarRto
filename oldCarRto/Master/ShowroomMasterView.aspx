<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowroomMasterView.aspx.cs" Inherits="oldCarRto.Master.ShowroomMasterView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   <link type="text/css" href="../css/style.css" rel="stylesheet">
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
          min-width:25%;
          float: left;
          text-align:center;
          vertical-align:top;
         height: 30px;
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="mainheader">
        Showroom
</div>
<div>
     <div style="margin:10px; display:inline-block; width:100% ">
        <div class="headDiv">
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Search" 
                CssClass="primary-button" />
        </div>
        <div class="headDiv">
             <asp:Button ID="btn_addnew" runat="server" Text="ADD NEW" 
                 CssClass="primary-button"/>
        </div>
        <div class="headDiv">

        </div>
    </div>
    <div>

            <table style="text-align: left; width: 99%; color: #000000; border-radius:5px; margin-left:7px;" align="center" bgcolor="#FD7B6B"
            cellspacing="2" frame="box" width="100%">
            <thead >
                <tr style="border: 1px;">
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        No
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        Date
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        Name
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        Contact
                    </th>
                     <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        Vehicle No
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        RTO
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        RTO Fee
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        Total Amount
                    </th>
                     <th class="text-left" style="border: thin solid #000000; border-radius:5px">
                        Status
                    </th>
                    <th class="text-left" style="border: thin solid #000000; border-radius:5px" colspan="2">
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="list_customer" runat="server" >
                    <ItemTemplate>
                        <tr style="border: 1px solid; background-color: #FFFFFF; border-radius:5px">
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("No")%>
                            </td>
                            <td style="text-align: left; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("Date")%>
                            </td>
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("Name")%>
                            </td>
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("Contact")%>
                            </td>
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("VehicleNo")%>
                            </td>
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("RTO")%>
                            </td>
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("RTOFee")%>
                            </td>
                            <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("TotalAmount")%>
                            </td>
                        <td style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <%# Eval("Status")%>
                            </td>
                            <td class='actions_big' style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <div style="display:block">
                                        <a href='<%# "InwordEdit.aspx?id=" +  Eval("No")  %>'>
                                            <asp:Image ID="Edit" runat="server" ImageUrl="../images/01.png" CssClass="tip btn-lightred"
                                                title="Edit" /></a>
                                </div>
                            </td>
                            <td class='actions_big' style="text-align: center; border: thin solid #000000;  border-radius:5px">
                                <div style="display:block">
                                    
                                        <a href='<%# "InwordPrint.aspx?id=" +  Eval("No")  %>' target="_blank">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="../images/1.png" CssClass="tip btn-lightred"
                                                title="Print" /></a>
                                </div>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

    </div>
</div>
</asp:Content>
