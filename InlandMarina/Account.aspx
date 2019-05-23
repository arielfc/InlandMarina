<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="InlandMarina.WebForm4" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Masthead" runat="server">
<style>
    .masthead:before{
        background-image: url('https://cdn.pixabay.com/photo/2016/11/06/05/38/landscape-1802340_1280.jpg');
    }
</style>    
    <header class="masthead">
      <div class="container h-100">
        <div class="row h-100 align-items-center">
          <div class="col-12 text-center">
            <h2 class="text-white font-weight-bold">Account</h2>
          </div>
        </div>
      </div>
    </header>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <div class="container emp-profile">
            <form>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                           <i class="fas fa-user-circle fa-7x"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </h5>
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
                <%--    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p></p>

                            <p></p>

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
                                        <label>Phone</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>City</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
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
