<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="InlandMarina.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <div class="container emp-profile">
            <form>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </h5>
                                    <h6>
                                        Web Developer and Designer
                                    </h6>
                                    <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Leased Slips</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>Account Information</p>

                            <p>SKILLS</p>

                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>User Id</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <asp:Label ID="Label3" runat="server" Text="E-Mail"></asp:Label>
                                            kshitighelani@gmail.com</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Phone</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Profession</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <asp:Label ID="Label5" runat="server" Text="Profession"></asp:Label>
                                            Web Developer and Designer</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <!--<label>Experience</label>-->
                                        <asp:GridView ID="GridViewCurrentLease" runat="server" AutoGenerateColumns="False" 
                                            CssClass="table table-responsive table-striped table-hover table-bordered rounded" Width="75px">
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
                                                <asp:BoundField DataField="SlipID" HeaderText="Slip ID" />
                                                <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" Visible="False" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <!--
                                    <div class="col-md-6">
                                        <p>Expert</p>
                                        
                                    </div>
                                    -->
                                </div>
                                <!--
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Hourly Rate</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>10$/hr</p>
                                    </div>
                                </div>
                                -->
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</asp:Content>
