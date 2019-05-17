<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Availability.aspx.cs" Inherits="InlandMarina.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <form runat="server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="row">
                <div class="ml-lg-5 ml-md-5 ml-sm-5 ml-5">
                    Available Docks
                    <br /><br />
                    <asp:GridView ID="GridViewDock0" runat="server" AutoGenerateColumns="False" 
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                        SelectedIndex="0" 
                        CssClass="table table-responsive table-striped table-hover table-bordered">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="WaterService" HeaderText="Water Service" />
                            <asp:BoundField DataField="ElectricalService" HeaderText="Electrical Service" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        </Columns>
                        <SelectedRowStyle BackColor="Silver" />
                        
                    </asp:GridView>
                    <asp:Label ID="LblDockWarning" runat="server" Text="Exception Text" Visible="False"></asp:Label>
                    <br />
                    Current Lease of Customer
                    <asp:Label ID="LblCustomerName" runat="server" Text="Name"></asp:Label>
                    <br /><br />
                    <asp:GridView ID="GridViewCurrentLease" runat="server" AutoGenerateColumns="False" 
                        CssClass="table table-responsive table-striped table-hover">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
                            <asp:BoundField DataField="SlipID" HeaderText="Slip ID" />
                            <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <br />
                </div>

                <div class="ml-lg-5 ml-md-5 ml-sm-5 ml-5">
                    Available Slips of &nbsp;&nbsp;
                    <asp:Label ID="LblSelectedDock" runat="server" Text="Selected Dock"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridViewSlip" runat="server" AutoGenerateColumns="False" 
                        AllowPaging="true" PageSize="5" 
                        CssClass="table table-responsive table-striped table-hover table-bordered">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Slip ID" />
                            <asp:BoundField DataField="Width" HeaderText="Width" />
                            <asp:BoundField DataField="Length" HeaderText="Length" />
                            <asp:BoundField DataField="DockID" HeaderText="Dock ID" Visible="False" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        </Columns>
                        <SelectedRowStyle BackColor="Silver" />
                    </asp:GridView>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Lease" />
                </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>
