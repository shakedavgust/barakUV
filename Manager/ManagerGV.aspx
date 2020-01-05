<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerGV.aspx.cs" Inherits="Manager_ManagerGV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style  type="text/css">
   .MarkerC { opacity: 1;      } 
   .MarkerC:hover { opacity: 0.7;  }
 .g{ float:left; border-radius:15px; }

    .style1
    {
        width: 170px;
        height: 235px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="g"
        onselectedindexchanging="GridView1_SelectedIndexChanging"   Width="750px"
        BackColor="#CCCCCC"   
        CellPadding="4" ForeColor="Black" CellSpacing="2" 
        onrowdeleting="GridView1_RowDeleting" 
        onrowupdating="GridView1_RowUpdating" onrowediting="GridView1_RowEditing1">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="שם מוצר" >
            </asp:BoundField>

            <asp:BoundField DataField="CategoryID" HeaderText="קטגוריה" ReadOnly="True" > 
            </asp:BoundField>

            <asp:BoundField DataField="Price" HeaderText="מחיר" >
            </asp:BoundField>

            <asp:BoundField DataField="Size" HeaderText="מידה" >
            </asp:BoundField>

            <asp:BoundField DataField="Amount" HeaderText="כמות" >
            </asp:BoundField>

            <asp:ImageField DataImageUrlField="ImageUrl" HeaderText="תמונה">
                <ControlStyle Height="140px" Width="110px" />
            </asp:ImageField>

            <asp:BoundField DataField="SuperHero" HeaderText="גיבור על" >
            </asp:BoundField>

            <asp:BoundField DataField="Description" HeaderText="תיאור מוצר" >
            </asp:BoundField>


            <asp:CommandField HeaderText="ערוך" ShowEditButton="True" >
            </asp:CommandField>

            <asp:CommandField HeaderText="בחר" ShowSelectButton="True" >
           </asp:CommandField>

            <asp:CommandField HeaderText="מחק" ShowDeleteButton="True" >
            </asp:CommandField>


        </Columns>

        <FooterStyle BackColor="#CCCCCC"  BorderColor="black"/>
        <HeaderStyle BackColor="#1ea6cc" Font-Bold="True" ForeColor="#9E0606" Font-Names="Arial"  BorderColor="black" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="black" HorizontalAlign="Left"  />
     
        <RowStyle cssClass="MarkerC" BackColor="White" font-Names="Arial" Font-Size="14px"  BorderColor="black" />
        <SelectedRowStyle BackColor="#FFF78F" Font-Bold="True" ForeColor="black"  BorderColor="black" />
        <SortedAscendingCellStyle BackColor="#F1F1F1"  />
        <SortedAscendingHeaderStyle BackColor="#808080"  />
        <SortedDescendingCellStyle BackColor="#CAC9C9"  />
        <SortedDescendingHeaderStyle BackColor="#383838"  />
    </asp:GridView>

    <table style="border-style: solid; border-width: thin">
    <tr>
    
    <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td> 
    <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td> 
    <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td> 
     <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
     <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
      <td> <asp:Image ID="Image1" runat="server" Width="110px" Height="140px"/> </td> 
    <td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td> 
      <td><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td> 
      <td><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td> 
    </tr>
        
    </table>

</asp:Content>


