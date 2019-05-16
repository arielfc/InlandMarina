<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Availability.aspx.cs" Inherits="InlandMarina.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <form runat="server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <p>Available Docks</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br/>
            <div>
                <p>
                </p>
                <asp:GridView ID="GridViewDock0" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedIndex="2">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="WaterService" HeaderText="Water Service" />
                        <asp:BoundField DataField="ElectricalService" HeaderText="Electrical Service" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <SelectedRowStyle BackColor="Silver" />
                </asp:GridView>
                <asp:Label ID="LblDockWarning" runat="server" Text="DataSource Error!" Visible="False"></asp:Label>
                <br />
                <br />
                Available Slips of&nbsp;&nbsp;
                <asp:Label ID="LblSelectedDock" runat="server" Text="Selected Dock"></asp:Label>
                <br />
            </div>
            <asp:GridView ID="GridViewSlip" runat="server" AutoGenerateColumns="False" Width="276px">
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
            <br />
            <br />
            Current Lease of Customer
            <asp:Label ID="LblCustomerName" runat="server" Text="Name"></asp:Label>
            <br />
            <asp:GridView ID="GridViewCurrentLease" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
                    <asp:BoundField DataField="SlipID" HeaderText="Slip ID" />
                    <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" Visible="False" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>
