<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InlandMarina.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <div class="registration-form">
        <form>
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>       
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter A Username" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control item" ID="TextBox5" placeholder="Username" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter A Password" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control item" ID="TextBox6" placeholder="Password" runat="server"></asp:TextBox>
            </div>
             <div class="form-group">
                 <br />
                 <asp:Button CssClass="btn btn-block create-account" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </div>
        </form>
        <div class="social-media">
            <h5>Sign in with social media</h5>
            <div class="social-icons">
                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                <a href="#"><i class="icon-social-google" title="Google"></i></a>
                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
            </div>
        </div>
    </div>
</asp:Content>
