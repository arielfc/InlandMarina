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
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InlandMarinaScriptConnectionString %>" SelectCommand="SELECT * FROM [Dock]"></asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridViewDock0" runat="server" AutoGenerateColumns="False" 
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                        SelectedIndex="0" 
                        CssClass="table table-responsive table-striped table-hover table-bordered rounded shadow" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:CheckBoxField DataField="WaterService" HeaderText="WaterService" SortExpression="WaterService" />
                            <asp:CheckBoxField DataField="ElectricalService" HeaderText="ElectricalService" SortExpression="ElectricalService" />
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
                        CssClass="table table-responsive table-striped table-hover table-bordered rounded shadow" Width="75px">
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
                    <asp:Panel ID="Panel1" runat="server" Height="420px" ScrollBars="Vertical" CssClass="rounded shadow">
                        <asp:GridView ID="GridViewSlip0" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-striped table-hover table-bordered" OnSelectedIndexChanged="GridViewSlip0_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="Slip ID" />
                                <asp:BoundField DataField="Width" HeaderText="Width" />
                                <asp:BoundField DataField="Length" HeaderText="Length" />
                                <asp:BoundField DataField="DockID" HeaderText="Dock ID" Visible="False" />
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            </Columns>
                            <SelectedRowStyle BackColor="Silver" />
                        </asp:GridView>
                    </asp:Panel>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Lease"/>
                </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>
