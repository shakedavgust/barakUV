<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerP1.aspx.cs" Inherits="Manager_ManagerP1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="div1" style="margin-right:400px"> 
<br /><br />
<table style=" width:258px;margin-right:15px;border-color: #1ea6cc; border-top-style: solid; border-right-style: inherit;  border-left-style: inherit; ">
 <tr><th colspan="2"><h1 style="font-family:Arial; font-size:30px; ">&nbsp;הכנס קטגוריה</h1></th></tr>
<tr style="height:10px"><td></td></tr>
</table>
<table style=" width:258px; margin-right:15px;border-color: #1ea6cc; border-right-style: inherit; border-bottom-style: solid; border-left-style: inherit; ">
 <tr style="height:30px"><td></td></tr>
<tr style="margin-top:20px">
<th class="Rth">שם קטגוריה:</th>
<td>
    <asp:TextBox ID="CategoryName" runat="server" Font-Names="ariel"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="CategoryName" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="CategoryName" ErrorMessage="RegularExpressionValidator" 
        ForeColor="Red" ValidationExpression="[א-ת]">*</asp:RegularExpressionValidator>
    </td>
</tr>
 <tr style="height:30px"><td></td></tr>   
<tr>
<td>
<asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
 <tr style="height:30px"><td></td></tr>
</table>
</div>


</asp:Content>

