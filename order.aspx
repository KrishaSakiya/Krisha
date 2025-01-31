<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="admin_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         .gv
        {
            width:1100px;
            position:relative;
            height:240px;
        }
         .gv1
         {
             position:relative;
             left:180px;
         }
         h1
         {
             position:relative;
             left:160px;
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
            text-align: left;
        }
        .rows:hover
        {
            background-color: #C0EEF2;
            color: #fff;
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
            color: #fff;
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
         .edit-btn
        {
            background-color:black;
            color:white;
        }
        .edit-btn:hover
        {
            background-color:blue;
        }
        .delete-btn
        {
             background-color:black;
            color:white;
        }
        .delete-btn:hover
        {
            background-color:blue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">\
    <br /><br />
    <Center>
        <table>
    <tr>
        <td>
      <center><h1>Order Information</h1></center>
          <div class="gv">
                <div class="gv1">
            <asp:GridView runat="server" ID="gv1" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header1" 
                RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="datagrid_PageIndexChanging" AutoGenerateColumns="False" Width="388px" OnRowDeleting="GridView1_RowDeleting">
               <Columns>
                <asp:BoundField HeaderText="Bid" DataField="bid" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Bill No" DataField="tid" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Mail Id" DataField="mid" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Product Name" DataField="p_name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>
                <asp:BoundField HeaderText="Price" DataField="p_prize" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                    <asp:BoundField HeaderText="Qty" DataField="qty" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                    <asp:BoundField HeaderText="Total" DataField="total" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                    <asp:BoundField HeaderText="Name" DataField="name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                    <asp:BoundField HeaderText="Address" DataField="address" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                    <asp:BoundField HeaderText="Payment" DataField="payment" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                    <asp:BoundField HeaderText="Mobile no" DataField="mnumber" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                 <asp:TemplateField HeaderText="Order Status">  
                    <ItemTemplate>  
                        <asp:Button ID="btn_delete" runat="server" Text="Complete Order" Class="delete-btn" CommandName="Delete"  ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>  
                    </ItemTemplate>  
                    </asp:TemplateField>
            </Columns>
            </asp:GridView>
                    <h3><a href="card_details.aspx">Check Card Payment details</a></h3>
                    </div>
        </div>            
    </Center>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

