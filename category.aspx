<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .link {
            position: relative;
            left: 200px;
            bottom: 35px;
            color: red;
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
    background-color: #023349;
    height:800px;
    
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
    border: 1px solid #F48484;
}

fieldset{
    /* background-color: #ffff; */
    border: 2px solid #F48484;
    border-radius: 1em;
}

input[type="submit"],input[type="reset"]{
    font-size: 17px;
    background-color:#F48484;
    cursor: pointer;
    border-radius: 4px;
}

input[type="submit"]:hover,input[type="reset"]:hover{
    color: black;
    background-color: #B6EADA;

}

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br /><br />
    
    <div class="container123">
        <b>
        <form12 action="#">
            <fieldset>
                <legend> ADD CATEGORY</legend>
                
                <div class="input1">Category Name:&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="178px" BorderColor="Red" BorderStyle="Solid" Font-Size="Large"></asp:TextBox></div>&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Category Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><br><br>
                <asp:Button ID="Button1" runat="server" Text="Upload Now" OnClick="Button1_Click"></asp:Button>
            </fieldset>
            <div class="link"><a href="show_cat.aspx"><font color="red">Show Category</font></a></div>
        </form12>
            </b>
    </div>
        
    <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        </center>
</asp:Content>

