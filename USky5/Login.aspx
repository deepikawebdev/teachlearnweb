<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterOutside-K12.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="USky.WebApp.Login" %>
<%@ Register src="Controls/Login-K12.ascx" tagname="Login" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
     <style>
        .inner-page
        {
            height:550px;
        }
     
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

<div >    
 
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
  
</div>

<script>
    $("#login-modal").removeClass("fade").removeClass("modal");    
</script>
<uc1:Login ID="Login1" runat="server"  RedirectURL=""/>
</asp:Content>
