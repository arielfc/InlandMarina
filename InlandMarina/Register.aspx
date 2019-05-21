<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="InlandMarina.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <div class="registration-form">
        <form>
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control item" ID="TextBox1" placeholder="First Name" runat="server"></asp:TextBox>         
            </div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Last Name" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control item" ID="TextBox2" placeholder="Last Name" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter A Phone Number" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control item" ID="TextBox3" placeholder="Phone Number" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter A City" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control item" ID="TextBox4" placeholder="City" runat="server"></asp:TextBox>
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
                 <asp:Button CssClass="btn btn-block create-account" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            </div>
        </form>
        <div class="social-media">
            <h5>Sign up with social media</h5>
            <div class="social-icons">
                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                <a href="#"><i class="icon-social-google" title="Google"></i></a>
                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
            </div>
        </div>
    </div>
</asp:Content>
