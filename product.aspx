<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .link {
            position: relative;
            left: 200px;
            color: red;
            bottom:25px;
        }
        .container123{
    background: white;
    padding: 40px;
    margin: 20%;
    margin-top: 5%;
    margin-bottom: 5%;
    border: 5px solid #F48484;
    border-radius: 4em;
    position:relative;
    left:150px;

}
form12{
    background-color:#023349;
    
}
legend{
    box-sizing: content-box;
    padding: 10px;
    border-radius: 4em;
    background-color: #ECECEC;
    font-size: 20px;
    font-weight: 900;
    color: red;
}
input1{
    width: 50%;
    padding: 12px;
    border: 1px solid #61dafb;
}

fieldset{
    /* background-color: #ffff; */
    border: 2px solid #F48484;
    border-radius: 1em;
}

input[type="submit"],input[type="reset"]{
    font-size: 17px;
    background-color: #F48484;
    cursor: pointer;
    border-radius: 4px;
}

input[type="submit"]:hover,input[type="reset"]:hover{
    color: white;
    background-color: #B6EADA;

}
 .input12
 {
     margin-left:90px;
 }
 .input11
 {
     margin-right:40px;
 }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <b>
        <center>
        <div class="container123">

    <form12 action="#">
        <fieldset>
            <legend> ADD PRODUCT</legend>
            <div class="input11">Main Category:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="main_cat" DataValueField="main_cat" ForeColor="Red" BorderStyle="Solid" BorderColor="Red"></asp:DropDownList></div><br><br>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:giftshopConnectionString2 %>" SelectCommand="SELECT [main_cat] FROM [category]"></asp:SqlDataSource>
			<div class="input1">Sub Category:
			<asp:TextBox ID="TextBox1" runat="server" ForeColor="Red" BorderStyle="Solid" BorderColor="Red"></asp:TextBox></div><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter CategoryName" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
			<div class="input1">Prodcut Name:
			<asp:TextBox ID="TextBox2" runat="server"  BorderColor="Red" BorderStyle="Solid"></asp:TextBox></div><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Product Name" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
			<div class="input1">Product Detail:
			<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" BorderColor="Red" BorderStyle="Solid"></asp:TextBox><div class="input1"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Product Details" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
			<div class="input1">Product Price:
			<asp:TextBox ID="TextBox4" runat="server" BorderColor="Red" BorderStyle="Solid"></asp:TextBox><div class="input1"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Product Prize" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
			<div class="input12">Product Image:
			<asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Red" BorderStyle="Solid" BorderColor="Red" /></div><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Choose Product img" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Upload Now" OnClick="Button1_Click"></asp:Button><br>
                <div class="link"><a href="show_product.aspx"><font color="red">Show product</font></a></div>
        </fieldset>
    </form12>
</div>
            </center>
        </b>
</asp:Content>

