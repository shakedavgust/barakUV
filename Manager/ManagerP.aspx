<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerP.aspx.cs" Inherits="Manager_ManagerP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css" >

    .a1 { font-family:Arial;font-size:20px; text-decoration:none;  color: #000000;}
    .a1:hover { font-family:Arial;font-size:20px;color: #9e0606;text-decoration:none; }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" margin-top:90px; margin-right:140%;
width:280px;height:270px; border-color: #9e0606; border-top-style: solid; border-right-style: inherit; border-bottom-style: solid; border-left-style: inherit">
<br />
<table style=" margin-right:30%;">
<br /><tr><td >
    <a href="ManagerP1.aspx" class="a1">הכנסת קטגוריה</a>
</td></tr>

<tr ><td ><br /><br />
&nbsp;
<a href="MangerP2.aspx" class="a1">הכנסת מוצר</a>
</td></tr>
<tr ><td ><br /><br />
&nbsp;
<a href="ManagerGV.aspx" class="a1">טבלת מוצרים</a>
</td></tr>

</table>
<br /><br />
</div>

</asp:Content>

