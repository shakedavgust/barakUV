<%@ Page Title="" Language="C#" MasterPageFile="~/Shop/MasterPage.master" AutoEventWireup="true" CodeFile="CreditP.aspx.cs" Inherits="Shop_CreditP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr><td>מספר ת"ז</td> <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </td></tr>

<tr><td> מספר כרטיס אשראי</td> <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </td></tr>

<tr><td>תוקף חודש</td> <td>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
    </asp:DropDownList> </td></tr> 
     
<tr><td> תוקף שנה</td> <td>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>2014</asp:ListItem>
        <asp:ListItem>2015</asp:ListItem>
        <asp:ListItem>2016</asp:ListItem>
        <asp:ListItem>2017</asp:ListItem>
        <asp:ListItem>2018</asp:ListItem>
        <asp:ListItem>2019</asp:ListItem>
        <asp:ListItem>2020</asp:ListItem>
        <asp:ListItem>2021</asp:ListItem>
        <asp:ListItem>2023</asp:ListItem>
        <asp:ListItem>2023</asp:ListItem>
        <asp:ListItem>2024</asp:ListItem>
    </asp:DropDownList> </td></tr>

<tr><td>סוג כרטיס </td> <td>
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>ויזה</asp:ListItem>
        <asp:ListItem>אמריקן אקספרס</asp:ListItem>
        <asp:ListItem>ישראכרט</asp:ListItem>
        <asp:ListItem>מסטרכארד</asp:ListItem>
    </asp:DropDownList> </td></tr>

</table>
</asp:Content>

