<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="card_details.aspx.cs" Inherits="admin_card_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .g1
        {
            width: 1000px;
            position: relative;
            margin-left: 230px;
        }
        
        .mydatagrid
        {
            width: 80%;
            border: solid 2px black;
            min-width: 80%;
        }
        .header1
        {
            background-color: #537FE7;
            font-family: Arial;
            color: White;
            height: 25px;
            text-align: center; 
            font-size: 16px;
         }
        .rows
        {
            background-color: #fff;
            font-family: Arial;
            font-size: 14px;
            color: black;
            min-height: 25px;
            text-align: center;
        }
        .rows:hover
        {
            background-color: #C0EEF2;
            color: black;
        }

        .mydatagrid a /** FOR THE PAGING ICONS **/
        {
            background-color: Transparent;
            padding: 5px 5px 5px 5px;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        .mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
        {
            background-color: #000;
            color: black;
        }
        .mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
        {
            background-color: #fff;
            color: #000;
            padding: 5px 5px 5px 5px;
        }
        .pager
        {
            background-color:#000;
            font-family: Arial;
            color: White;
            height: 30px;
            text-align: left;
        }   
        .mydatagrid td
        {
            padding: 5px;
        }
        .mydatagrid th 
        {
            padding: 5px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <Center>
        <table>
    <tr>
        <td>
      <center><h1>Card Details</h1></center>
          <div class="gv">
                <div class="gv1">
            <asp:GridView runat="server" ID="gv1"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header1" 
                RowStyle-CssClass="rows"  AutoGenerateColumns="False" Width="388px">
               <Columns>
                <asp:BoundField HeaderText="Bid" DataField="bid" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Name" DataField="card_name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Card Number" DataField="card_number" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Expiry Month" DataField="exp_month" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>
                <asp:BoundField HeaderText="Expiry Year" DataField="exp_year" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="CVC Number" DataField="cvc_number" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
            </Columns>
            </asp:GridView>
                    
                    </div>
        </div>            
    </Center>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

