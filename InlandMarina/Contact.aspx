<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="InlandMarina.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <div class="contact-clean container">
        <div class ="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h2 class="text-center">Contact Information</h2>
                <div>Inland Lake Marina</div>
                <div>Box 123</div>
                <div>Inland Lake, Arizona</div>
                <div>86038</div>
                
                <div class="Tels">Telphone</div>
                <div>Office: 928-450-2234</div>
                <div>Leasing: 928-450-2235</div>
                <div>Fax: 928-450-2236</div>

                <div class="Agent">Manager: Glenn Cooke</div>
                <div>Slip Manager: Kimberley Carson</div>
                <div>Contact email: info@inlandmarina.com</div>
            </div>
            <div class="col-sm-6 col-xs-12">
                <form method="post">
                    <h2 class="text-center">Contact us</h2>
                    <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"/></div>
                    <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"/></div>
                    <div class="form-group"><textarea class="form-control" rows="10" name="message" placeholder="Message"></textarea></div>
                    <div class="form-group"><button class="btn btn-primary" type="submit">Send</button></div>
                </form>
             </div>
        </div>
    </div>
</asp:Content>
