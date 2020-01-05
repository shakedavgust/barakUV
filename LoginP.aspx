<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageO.master" AutoEventWireup="true" CodeFile="LoginP.aspx.cs" Inherits="LoginP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="Ldiv"  >
<div class="BGdiv">
<table class="Ltable"   >

 <h1 style="font-family: Arial; font-size: 42px; color: #000000; margin-right:140px;">התחברות </h1>  

<tr>
<th class="Lth">שם משתמש:</th>
<td >

    <asp:TextBox ID="UserN" runat="server" Font-Names="ariel" 
         Width="152px"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="UserN" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<th class="Lth">סיסמא:</th>
<td>
    <asp:TextBox ID="Pass" runat="server" CssClass="style1" Width="152px"  TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="Pass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Pass" ErrorMessage="RegularExpressionValidator" 
        ForeColor="Red" ValidationExpression="[א-תA-Za-z0-9]{4,10}">*</asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td colspan="2">


<p style="text-align:left"> 
    <asp:Button ID="Button1" runat="server" Text="שלח" Width="61px" 
        onclick="Button1_Click1"  />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="נקה" Width="62px" />
    </p>

</td>
</tr>
</table>

&nbsp;</div> 
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>

    </asp:Content>

