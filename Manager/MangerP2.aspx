<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/MasterPage.master" AutoEventWireup="true" CodeFile="MangerP2.aspx.cs" Inherits="Manager_MangerP2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div  style="margin-right:350px; margin-top:20px;">

<table style=" margin-right:15px;width:350px;border-color: #1ea6cc; border-top-style: solid; border-right-style: inherit;  border-left-style: inherit; ">
 <tr><th colspan="2"><h1 style="font-family:Arial; font-size:30px; ">&nbsp;הכנס מוצר </h1></th></tr>
<tr style="height:10px"><td></td></tr>
</table>
<table style="width:350px; margin-right:15px;border-color: #1ea6cc; border-right-style: inherit; border-bottom-style: solid; border-left-style: inherit; ">
<tr style="margin-top:10px  ;margin-right:15px">
<th class="Rth" >שם מוצר:</th>
<td>
    <asp:TextBox ID="ProductName" runat="server" Font-Names="ariel"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="ProductName" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<th class="Rth">קטגוריה:</th>
<td>
    <asp:DropDownList ID="CategoryID" runat="server" Width="145px" 
        DataTextField="CategoryName" DataValueField="CategoryID">
        <asp:ListItem Value="0" >בחר</asp:ListItem>
    </asp:DropDownList>
</td></tr>
<tr>
<th class="Rth">מחיר:</th>
<td>
    <asp:TextBox ID="Price" runat="server" Font-Names="ariel"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="Price" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="Price" ErrorMessage="RegularExpressionValidator" 
        ForeColor="Red" ValidationExpression="\d*">*</asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<th class="Rth">מידה:</th>
<td>
    <asp:DropDownList ID="Size" runat="server" Width="145px">
        <asp:ListItem Value="0">בחר</asp:ListItem>
        <asp:ListItem Value="1">S</asp:ListItem>
        <asp:ListItem Value="2">M</asp:ListItem>
        <asp:ListItem Value="3">L</asp:ListItem>
        <asp:ListItem Value="4">XL</asp:ListItem>
        <asp:ListItem Value="5">XXL</asp:ListItem>
        <asp:ListItem Value="6">70X50</asp:ListItem>
        <asp:ListItem Value="7">100X70</asp:ListItem>
        <asp:ListItem Value="8">140X100</asp:ListItem>
        <asp:ListItem Value="9">200X140</asp:ListItem>
        <asp:ListItem Value="10">אין</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>
<tr>
<th class="Rth">כמות:</th>
<td>
    <asp:TextBox ID="Amount" runat="server" Font-Names="ariel"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="Amount" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="Amount" ErrorMessage="RegularExpressionValidator" 
        ForeColor="Red" ValidationExpression="\d*">*</asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<th class="Rth">תמונת מוצר:</th>
<td>
       <asp:FileUpload ID="ImageURL" runat="server" />
      </td>
</tr>
<tr>
<th class="Rth">גיבור-על:</th>
<td>
    <asp:TextBox ID="SuperHero" runat="server" Font-Names="ariel"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="SuperHero" ErrorMessage="RequiredFieldValidator" 
        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<th class="Rth">תיאור מוצר:</th>
<td>
    <asp:TextBox ID="Description" runat="server" TextMode="MultiLine" Width="139px" Height="60px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="Description" ErrorMessage="RequiredFieldValidator" 
        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
</td>
</tr>


<br />
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="הכנס מוצר" 
        onclick="Button1_Click" /></td>
<td>
    <asp:Button ID="Button2" runat="server" Text="נקה" onclick="Button2_Click" /></td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr style="height:30px"><td>

    </td></tr>
</table>

</div>



</asp:Content>

