<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="admin_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gv
        {
            width:1000px;
            position:relative;
            margin-left:350px;
            height:400px;
        }
        h1
        {
            position:relative;
            margin-left:300px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center>
            <br /><br />
            <center>
        <h1>VIEW FEEDBACKS</h1>
            </center>
        <div class="gv">
                <div>
            <asp:GridView runat="server" ID="GridView1" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header1" 
                RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="datagrid_PageIndexChanging" AutoGenerateColumns="False" Width="388px" OnRowDeleting="GridView1_RowDeleting">
               <Columns>
                <asp:BoundField HeaderText="Id" DataField="id" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Name" DataField="name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="Email" DataField="Email" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                <asp:BoundField HeaderText="mobileno" DataField="mobileno" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>
                <asp:BoundField HeaderText="feedback" DataField="feedback" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                 <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>
            </Columns>
            </asp:GridView>
        </div>            
            </center>
        <br /><br />
</asp:Content>
