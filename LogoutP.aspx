<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageO.master" AutoEventWireup="true" CodeFile="LogoutP.aspx.cs" Inherits="LogoutP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<% 
    if (Session["UserN"] != null)
    {
        Session["UserN"] = null;
        Response.Redirect("HomeP.aspx");
        
    }
    
        
         %>
</asp:Content>

