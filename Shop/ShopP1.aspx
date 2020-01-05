<%@ Page Title="" Language="C#" MasterPageFile="~/Shop/MasterPage.master" AutoEventWireup="true" CodeFile="ShopP1.aspx.cs" Inherits="Shop_ShopP1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.MainDiv{ background-color:#1ea6cc; border-radius:15px; width:230px; margin:15px 70px 30px 30px; }
.MainTable {  width:220px; margin-bottom:10px; margin-right:14px; margin-left:8px; font-family:Arial; font-size:12.7px; }
.ImgS {border-top-right-radius:10px;border-bottom-left-radius:10px;
       border-top-left-radius:3px;border-bottom-right-radius:3px; margin-top:10px; margin-right:20px;}
.TdT1 {font-size:13px; font-family:Arial;}
.ImgS2 {float:left; margin:25px 0 0 30px; border-radius:12px;  Height:254px; Width:201px;}
.ImgS2:hover {float:left; margin: 8px 0 0 15px; border-radius:12px; Height:269px; Width:216px;}
.MainDiv2{width:640px;background-color:#1ea6cc;border-radius:15px; height:350px;margin:30px 250px 0 0}
.MainTable2{margin:0 80px 0 0; float:right; }  
.BStar { width:24px; height:24px; }     
                
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:DropDownList ID="DropDownList2" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True" DataTextField="CategoryName" DataValueField="CategoryID">
</asp:DropDownList>


    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
    <div class="MainDiv">
    <table class="MainTable">
    
               <tr><td colspan="2"><asp:Image ID="Image2" runat="server" 
                   ImageUrl='<%# Eval("ImageURL") %>' Height="204px" Width="151px" CssClass="ImgS" /></td></tr>

         <tr><td class="TdT1">שם מוצר:</td>
         <td><asp:Label ID="Label4" runat="server" 
                   Text='<%# Eval("ProductName") %>'></asp:Label></td></tr>
           
           <tr><td class="TdT1">מחיר:</td>
         <td><asp:Label ID="Label1" runat="server" 
                   Text='<%# Eval("Price") %>'></asp:Label>&nbsp;ש&quot;ח</td></tr>
 
         
         <tr><td class="TdT1">כמות:
         &nbsp;&nbsp; <asp:Label ID="Label2" runat="server" 
                    Text='<%# Eval("Amount") %>'></asp:Label></td>
       <td class="TdT1">מידה:
         &nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label></td></tr>

          <tr><td colspan="2" class="TdT1">תיאור:</td></tr>
           <tr><td colspan="2"><asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label></td></tr>

             <tr><td class="TdT1">גיבור על:</td>
             <td style="color:#9e0606"><asp:Label ID="Label6" runat="server" Text='<%# Eval("SuperHero") %>'></asp:Label></td></tr>

             <tr><td class="TdT1"></td>
             <td style="color:#9e0606"><asp:Label ID="Label9" runat="server" Text='<%# Eval("ProductID") %>' Visible="False"></asp:Label></td></tr>

             <tr><td colspan="2"> 
                 <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">הצג מוצר</asp:LinkButton> </td></tr>

        </table></div>
        </ItemTemplate></asp:DataList>

    <asp:Panel ID="Panel1" runat="server" Visible="False" >
        <div class="MainDiv2">
    
              <table style="float:left">
             <tr><td><asp:Image ID="Image2P" runat="server" 
                    CssClass="ImgS2" /></td></tr>
                   <tr><td style="font-family:Arial; ">דרג מוצר: <br />
              
                       <asp:ImageButton ID="B1" runat="server" CssClass="BStar"  
                           ImageUrl="~/MainPic/Ystar.png " onclick="B1_Click" />
                       <asp:ImageButton ID="B2" runat="server" CssClass="BStar"  
                           ImageUrl="~/MainPic/Ystar.png" onclick="B2_Click"/> 
                       <asp:ImageButton ID="B3" runat="server" CssClass="BStar" 
                           ImageUrl="~/MainPic/Ystar.png" onclick="B3_Click"/> 
                       <asp:ImageButton ID="B4" runat="server" CssClass="BStar" 
                           ImageUrl="~/MainPic/Ystar.png" onclick="B4_Click"/> 
                       <asp:ImageButton ID="B5" runat="server" CssClass="BStar"  
                           ImageUrl="~/MainPic/Ystar.png" onclick="B5_Click"/> </td></tr> 
                        <tr><td style="font-family:Arial;">&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</td></tr>   
                   </table>
 
             <br />  <br /> <br /> 
             <table class="MainTable2"> 
             <tr><td style="font-family:Arial;font-weight: bold;font-size:18px;"><asp:Label ID="Label7" runat="server" ></asp:Label></td> </tr> 
             <tr style="height:20px"><td></td></tr>   
           <tr><td class="TdT1">מחיר:</td>
         <td class="TdT1"><asp:Label ID="Label1P" runat="server" 
                  ></asp:Label>&nbsp;ש&quot;ח</td></tr>
 
         
         <tr><td class="TdT1">כמות:</td>
        <td class="TdT1"> <asp:Label ID="Label2P" runat="server" 
                    ></asp:Label></td></tr>

        <tr><td class="TdT1">מידה:</td>
       <td class="TdT1"> <asp:Label ID="Label3P" runat="server" ></asp:Label></td></tr>

          <tr><td colspan="2" class="TdT1">תיאור:</td></tr>
           <tr><td colspan="2" class="TdT1" style="width:80px"><asp:Label ID="Label5P" runat="server" ></asp:Label></td></tr>

             <tr><td class="TdT1">גיבור על:</td>
             <td style="color:#9e0606" class="TdT1"><asp:Label ID="Label6P" runat="server" ></asp:Label></td></tr>
            

             <tr><td class="TdT1">
                 <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>

           </td></tr>
            
             <tr><td colspan="2" class="TdT1" style="font-weight: bold">
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/MainPic/AC.png" 
                     onclick="ImageButton1_Click" />&nbsp;&nbsp;הוסף לסל </td></tr>

                 
             </table>
             <br /><br /><br /><br /><br /><br /><br />
             <br /><br /><br /><br /><br /><br />

             <h5 style="float:right; margin-top:20px; font-family:Arial">
              <asp:LinkButton ID="LinkButton2" runat="server" 
                      onclick="LinkButton2_Click" >חזור</asp:LinkButton></h5> 


        </div>
    </asp:Panel>

</asp:Content>

