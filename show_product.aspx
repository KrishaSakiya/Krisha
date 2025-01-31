<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="show_product.aspx.cs" Inherits="admin_show_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gv
        {
            width:1280px;
            position:relative;
            margin-left:230px;
        }
        h1
        {
            position:relative;
            margin-left:130px;
        }
        .mydatagrid
        {
            width: 90%;
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
        .btn 
        {
            width: 60px;
            height: 30px;
            margin-top: 20px;
            border-radius: 40px;
            border: none;
            color: red;    
        }

.btn:hover {
    box-shadow: 0 0 25px red;
    transition: 0.5s;
    transform: scale(1.04);
    cursor: pointer;

}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
    <center>
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VIEW PRODUCTS</h1>
            </center>
             <div class="gv">
                <div>
            <asp:GridView runat="server" ID="GridView1" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header1" 
                RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="datagrid_PageIndexChanging" AutoGenerateColumns="False" Width="388px" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
               <Columns>
                    <%--<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />--%>
                    <asp:TemplateField HeaderText="Id" SortExpression="id" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>  
                    </ItemTemplate>  
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />--%>
                    <asp:TemplateField HeaderText="Main Category" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                <ItemTemplate>
                                    <asp:Label ID="p_name_lbl" runat="server" Text='<%# Eval("main_cat") %>' ></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="main_cat" runat="server" Text='<%# Eval("main_cat") %>'  ></asp:TextBox>
                                </EditItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="p_qty" HeaderText="p_qty" SortExpression="p_qty" />--%>
                    <asp:TemplateField HeaderText="Sub Category" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                <ItemTemplate>
                                    <asp:Label ID="p_qty_lbl" runat="server" Text='<%# Eval("sub_cat") %>' ></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="sub_cat" runat="server" Text='<%# Eval("sub_cat") %>' ></asp:TextBox>
                                </EditItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="p_rate" HeaderText="p_rate" SortExpression="p_rate" />--%>
                    <asp:TemplateField HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                <ItemTemplate>
                                    <asp:Label ID="p_rate_lbl" runat="server" Text='<%# Eval("p_name") %>' ></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="p_name" runat="server" Text='<%# Eval("p_name") %>'  ></asp:TextBox>
                                </EditItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />--%>
                    <asp:TemplateField HeaderText="Product Price" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                <ItemTemplate>
                                    <asp:Label ID="category_lbl" runat="server" Text='<%# Eval("p_prize") %>' ></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="p_prize" runat="server" Text='<%# Eval("p_prize") %>' ></asp:TextBox>
                                </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Image" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                            <ItemTemplate>
                                <img src="product img/<%# Eval("p_image") %>" id="img1" alt="no image" width="100px" height="100px"/>
                                
                            </ItemTemplate>
                            <EditItemTemplate>
                                <img src="product img/<%# Eval("p_image") %>" id="img2" alt="no image" width="100px" height="100px"/>
                                <br />
                                <asp:FileUpload ID="fu1" runat="server" />
                            </EditItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_edit" runat="server" Text="Edit" Class="btn" CommandName="Edit"  ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>
                        <asp:Button ID="btn_delete" runat="server" Text="Delete" Class="btn" CommandName="Delete"  ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_update" runat="server" Text="Update" Class="btn" CommandName="Update" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>  
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Class="btn" CommandName="Cancel" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"/>  
                    </EditItemTemplate>  
                    </asp:TemplateField>
                    <%--<asp:CommandField ShowEditButton="true" ControlStyle-CssClass="edit-btn"   />
                    <asp:CommandField ShowDeleteButton="true" />--%>  
                </Columns> 
            </asp:GridView>
        </div>
                    </div>
                </center>
        <br />
</asp:Content>



