﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="InlandMarina.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
       <div class="contact-clean">
        <form method="post">
            <h1>Hello</h1>
            <h2 class="text-center">Contact us</h2>
            <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"/></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"/></div>
            <div class="form-group"><textarea class="form-control" rows="14" name="message" placeholder="Message"></textarea></div>
            <div class="form-group"><button class="btn btn-primary" type="submit">send </button></div>
        </form>
    </div>
</asp:Content>