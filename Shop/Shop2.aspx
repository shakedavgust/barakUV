<%@ Page Title="" Language="C#" MasterPageFile="~/Shop/MasterPage.master" AutoEventWireup="true" CodeFile="Shop2.aspx.cs" Inherits="Shop_Shop2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .ImgS{ width: 142px; height: 195px;  margin-top:15px; }
        .ImgS2{ border-top-right-radius:10px;border-bottom-left-radius:10px;
                border-top-left-radius:3px;border-bottom-right-radius:3px; margin-top:10px; }
        .TdT1 {width: 62px; font-size:13px;}
        .Td2T1 {width: 180px;}
        .TdT2 {width: 50px; font-size:13px;}
        .Td2T2 {width: 50px;}
        .table1, .table2, .table3 { font-family: Arial; font-size:12.7px; Width:230px; margin-right:15px;  }
        .table1 { margin-top:10px; } .table3 { margin-bottom:10px; }
       .td3{font-size:13px; width:60px; }

    </style>
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        DataTextField="CategoryName" DataValueField="CategoryID" >
</asp:DropDownList>


    <asp:DataList ID="DataList1" runat="server" 
        onselectedindexchanged="DataList1_SelectedIndexChanged"  RepeatColumns="3" 
        RepeatDirection="Horizontal" Width="230px">
      
        <ItemTemplate>
        
        <div  class="MainT">
        <table class="table1"><tr> 
           <td colspan="2" class="ImgS"> <center>
               <asp:Image ID="Image2" runat="server" 
                   ImageUrl='<%# Eval("ImageURL") %>' Height="204px" Width="151px" CssClass="ImgS2" /></center>   </td></tr>
           <tr><td class="TdT1">שם מוצר:</td>
           <td class="style2"> <asp:Label ID="Label4" runat="server" 
                   Text='<%# Eval("ProductName") %>'></asp:Label> </td></tr>
           <tr><td class="TdT1">מחיר:</td>
           <td class="style2">  <asp:Label ID="Label1" runat="server" 
                   Text='<%# Eval("Price") %>'></asp:Label>&nbsp;ש&quot;ח</td>
                   </tr></table>
                   
                   <table class="table2">
            <tr><td  class="TdT2">כמות:</td>
            <td class="Td2T2"><asp:Label ID="Label2" runat="server" 
                    Text='<%# Eval("Amount") %>'></asp:Label></td>
         <td class="TdT2">מידה:</td>
            <td class="Td2T2"><asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label></td>
     
            </tr>
          <tr><td  class="td3">תיאור:</td></table>
          <table style="Width:240px; margin-right:15px;">
              <tr>
                  <td>
                      <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                  </td>
              </tr>
<table class="table3">
    <tr>
        <td class="td3" >גיבור על:</td>
        <td style="color:#9e0606"><asp:Label ID="Label6" runat="server" Text='<%# Eval("SuperHero") %>'></asp:Label></td>
    </tr>
</table>
            </tr>
        
        </div>
        </ItemTemplate>
    
    </asp:DataList>


</asp:Content>


