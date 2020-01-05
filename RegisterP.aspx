<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageO.master" AutoEventWireup="true" CodeFile="RegisterP.aspx.cs" Inherits="RegisterP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="Rdiv" >
<table class="Rtable" >
 <h1 style="font-family: Arial; font-size: 42px; color: #000000; margin-right:170px;">הרשמה </h1>  
<tr>
<th class="Rth">שם משתמש:</th>
<td>
    <asp:TextBox ID="UserN" runat="server" Font-Names="ariel" 
        ontextchanged="UserN_TextChanged" Width="142px"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="UserN" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
    
    </td>
</tr>
<tr>
<th class="Rth">סיסמא:</th>
<td>
    <asp:TextBox ID="Pass" runat="server"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="Pass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="APass" ErrorMessage="RegularExpressionValidator" 
        ForeColor="Red" ValidationExpression="[א-תA-Za-z0-9]{4,10}">*</asp:RegularExpressionValidator>
    
    </td>
</tr>
<tr>
<th class="Rth">אימות סיסמא:</th>
<td>
    <asp:TextBox ID="APass" runat="server"></asp:TextBox>
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="APass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="Pass" ControlToValidate="APass" 
        ErrorMessage="CompareValidator" ForeColor="Red">*</asp:CompareValidator>
   
    </td>
</tr>
<tr>
<th class="Rth">כתובת אימייל:</th>
<td>
    <asp:TextBox ID="Mail" runat="server"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="Mail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="Mail" ErrorMessage="RegularExpressionValidator" 
        ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    
    </td>
</tr>
<tr>
<th class="Rth">תאריך לידה:</th>
<td>
    <asp:DropDownList ID="Day" runat="server">
        <asp:ListItem Value="0">בחר</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="Month" runat="server">
        <asp:ListItem Value="0">בחר</asp:ListItem>
        <asp:ListItem Value="1">Jan</asp:ListItem>
        <asp:ListItem Value="2">Feb</asp:ListItem>
        <asp:ListItem Value="3">Mar</asp:ListItem>
        <asp:ListItem Value="4">Apr</asp:ListItem>
        <asp:ListItem Value="5">May</asp:ListItem>
        <asp:ListItem Value="6">Jun</asp:ListItem>
        <asp:ListItem Value="7">Jul</asp:ListItem>
        <asp:ListItem Value="8">Aug</asp:ListItem>
        <asp:ListItem Value="9">Sep</asp:ListItem>
        <asp:ListItem Value="10">Oct</asp:ListItem>
        <asp:ListItem Value="11">Nov</asp:ListItem>
        <asp:ListItem Value="12">Dec</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="Year" runat="server">
        <asp:ListItem Value="0">בחר</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>                          
<tr>
<th class="Rth">מין:</th>
<td>
   <asp:RadioButton ID="Male"  runat="server" Text="זכר" 
        Font-Names="arial" GroupName="Gender" ValidationGroup="Gender" 
        Checked="True"  />
    <asp:RadioButton ID="Female" runat="server" Text="נקבה" 
        Font-Names="Arial" GroupName="Gender" ValidationGroup="Gender" />
    </td>
</tr>
<tr>
<th class="Rth">שם פרטי:</th>
<td>

    <asp:TextBox ID="FirstN" runat="server"></asp:TextBox>

    

    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="FirstN" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">*</asp:RequiredFieldValidator>

    

</td>
</tr>
<tr>
<th class="Rth">שם משפחה:</th>
<td>

    <asp:TextBox ID="LastN" runat="server"></asp:TextBox>

   

    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="LastN" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>

   

</td>
</tr>

<tr>
<td>
</td>
</tr>

<tr>
<td colspan="2">


<p style="text-align:left"> 
    <asp:Button ID="Button1" runat="server" Text="שלח" Width="61px" 
        onclick="Button1_Click"  />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="נקה" Width="62px" 
        onclick="Button2_Click" />
    </p>

</td>
</tr>
</table>

    <asp:Image ID="Image1" runat="server" ImageUrl="~/MainPic/promoart2.jpg" 
        Height="320px" Width="480px" />

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

</div>


</asp:Content>

