<%@ Page Title="" Language="C#" MasterPageFile="~/Shop/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop_Shop" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
   .divShop{ width:600px; height:686px;border-width: 3px;border-style: groove; margin-right:250px; }
   .ashop{font-family: Arial; font-size: 18px; font-weight: bold; text-decoration: none; color: #FFFFFF; }
    .ashop:hover{font-family: Arial; font-size: 21px; font-weight: bold; text-decoration: none; color: #FFFFFF; }
      .MarkerC { opacity: 1;      } 
   .MarkerC:hover { opacity: 0.7;  }
    
   
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />


    <div class="divShop">
    <table style="margin-top:8px; margin-right:5px;">
    <tr><td><img src="../MainPic/Pop-Art.jpg" style="height:250px; width:250px;"  /></td>
    <td  rowspan="3" style="background-color: #fcdf4c" > 
    <h1 style="font-family: Arial; font-size: 38px; font-weight: bold; margin-right:5px; text-decoration: underline;">מה בחנות ?! </h1>
    <h3 style="font-family: Arial; font-size: 16px; font-weight: bold;margin-right:5px;"  > בחנות תוכלו למצוא שלל של תחפשות לגברים ונשים במידות שונות, <br />
   עולם שלם של קומיקסים ישנים ונדירים, כרזות ופוסטרים מתקופת הרטרו.<br />
   וכמו כן גם סרטים שוברי קופות שאסור לפספס!<br /><br />
   לפניכם טופ חמש מוצרים המדורגים הכי גבוהה:<br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3">
       <Columns>
           <asp:BoundField DataField="CategoryName" HeaderText="קטגוריה" />
           <asp:BoundField DataField="ProductName" HeaderText="שם מוצר" />
           <asp:BoundField DataField="Rate" HeaderText="דרוג" />
       </Columns>
        <RowStyle cssClass="MarkerC"  BorderColor="black" ForeColor="black" />
        <FooterStyle BackColor="White" ForeColor="black" />
        <HeaderStyle BackColor="#ed1b18" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

    </asp:GridView>
    </h3> </td>
   
    
    </tr>
    <tr ><td style="height:50px; width:250px; margin-top:8px;background-color: #ed1b18"> <center> <a href="ShopP1.aspx" class="ashop">לחנות לחץ כאן >></a></center></td></tr>
    <tr><td style="margin-top:8px;"><img src="../MainPic/sale pop.jpg" style="height:250px; width:250px;" /></td></tr>
    </table>
   <div style="background-color: #ed1b18; float:right; width:232px; height:45px; margin-right:7px; font-size: 32px; color: #FFFFFF; font-family: Arial; font-weight: bold; padding:30px; ">
    <center> קנייה מהנה :)</center></div>
     <div style="  background-color:#1ea6cc; float:left; width:235px; height:45px; margin-left:4px; font-size: 32px; color: #FFFFFF; font-family: Arial; font-weight: bold; padding:30px; ">
    <center> מהרו לדרג מוצרינו!</center></div>

    </div>
</asp:Content>

