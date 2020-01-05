<%@ Page Title="" Language="C#" MasterPageFile="~/Shop/MasterPage.master" AutoEventWireup="true" CodeFile="ShopCart.aspx.cs" Inherits="Shop_ShopCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 107px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
<div style="margin-right:280px; width:580px; border-right-width: 3px; border-left-width: 3px; border-right-style: solid; border-left-style: solid;">
<br />
<div style="margin-right:45px;" >
<h1 style="font-family: Arial; font-size: 40px; color: #9e0606">עגלת הקניות שלך</h1>

<h2 style="font-family: Arial; font-size: 16px">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" 
        onrowdeleting="GridView1_RowDeleting1">
        <Columns>
        <asp:BoundField DataField="CategoryName" HeaderText="קטגוריה" > 
            </asp:BoundField>

            <asp:BoundField DataField="ProductID" HeaderText="קוד מוצר" > 
            </asp:BoundField>

            <asp:BoundField DataField="ProductName" HeaderText="שם מוצר" >
            </asp:BoundField>

            <asp:BoundField DataField="Price" HeaderText="מחיר" >
            </asp:BoundField>

            <asp:BoundField DataField="Size" HeaderText="מידה" >
            </asp:BoundField>

            <asp:BoundField DataField="Amount" HeaderText="כמות" >
            </asp:BoundField>
            <asp:CommandField HeaderText="מחק מוצר" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#1ea6cc" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <br /> 


    <asp:Label ID="Label2" runat="server" Text="הכנס פרטי כרטיס אשראי" 
        Font-Bold="True" ForeColor="#9E0606" Font-Names="arial" Visible="False"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
    <table>
<tr><td>מספר ת"ז</td> <td class="style1">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td></tr>

<tr><td> מספר כרטיס אשראי</td> <td class="style1">
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </td></tr>

<tr><td>תוקף חודש</td> <td class="style1">
    <asp:DropDownList ID="DropDownList4" runat="server">
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
     
<tr><td> תוקף שנה</td> <td class="style1">
    <asp:DropDownList ID="DropDownList5" runat="server">
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

<tr><td>סוג כרטיס </td> <td class="style1">
    <asp:DropDownList ID="DropDownList6" runat="server">
        <asp:ListItem>ויזה</asp:ListItem>
        <asp:ListItem>אמריקן אקספרס</asp:ListItem>
        <asp:ListItem>ישראכרט</asp:ListItem>
        <asp:ListItem>מסטרכארד</asp:ListItem>
    </asp:DropDownList> </td></tr>
    <tr><td><asp:Button ID="Button2" runat="server" Text="Button" 
            onclick="Button2_Click" /></td></tr>
        

</table>
    </asp:Panel><br />
    <table><tr>
    <td> סכום:  </td> <td> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;ש"ח </td>
    </tr></table></h2>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    <br /><br />

    

    </div>
</div>


    


</asp:Content>

