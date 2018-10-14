<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterOutside-K12.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="USky.WebApp.Register" %>
<%@ Register src="Controls/Register-K12.ascx" tagname="Register" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
           .inner-page
        {
            height:700px;
        }
   
   
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    
    
    <script>
        $("#register-modal").removeClass("fade").removeClass("modal") ;    
    </script>
    <uc2:Register ID="Register1" runat="server" />
</asp:Content>

