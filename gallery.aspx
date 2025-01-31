<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="admin_gallery" %>

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
    <br /><br /><br />
    <Center>
        <b>
    <div class="container123">

    <form12 action="#">
        <fieldset>
            <legend> ADD IMAGE</legend>
            Upload Your Image:
            <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Red" BorderStyle="Solid" BorderColor="Red" Font-Size="Large" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Choose Image" ForeColor="Red" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator><br><br>
            <asp:Button ID="Button1" runat="server" Text="Upload Now" OnClick="Button1_Click"/>
        </fieldset>
        <div class="link"><a href="show_gallery.aspx"><font color="red">Show Gallery</font></a></div>
<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </form12>
</div>
            </b>
        </Center>

     <br /><br /><br /><br /><br />
</asp:Content>

