<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Στοιχεία Εταιρίας.</h3>
    <br />

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <EditItemTemplate>
            CompanyId:
            <asp:Label ID="CompanyIdLabel1" runat="server" Text='<%# Eval("CompanyId") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            StartDate:
            <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
            <br />
            Limit:
            <asp:TextBox ID="LimitTextBox" runat="server" Text='<%# Bind("Limit") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            CompanyId:
            <asp:TextBox ID="CompanyIdTextBox" runat="server" Text='<%# Bind("CompanyId") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            StartDate:
            <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
            <br />
            Limit:
            <asp:TextBox ID="LimitTextBox" runat="server" Text='<%# Bind("Limit") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            CompanyId:
            <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
            <br />
            Επωνυμία:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            StartDate:
            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>' />
            <br />
            Limit:
            <asp:Label ID="LimitLabel" runat="server" Text='<%# Bind("Limit") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringComp %>" DeleteCommand="DELETE FROM [Company] WHERE [CompanyId] = @original_CompanyId AND [Name] = @original_Name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([Limit] = @original_Limit) OR ([Limit] IS NULL AND @original_Limit IS NULL))" InsertCommand="INSERT INTO [Company] ([CompanyId], [Name], [Description], [StartDate], [Limit]) VALUES (@CompanyId, @Name, @Description, @StartDate, @Limit)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [Name] = @Name, [Description] = @Description, [StartDate] = @StartDate, [Limit] = @Limit WHERE [CompanyId] = @original_CompanyId AND [Name] = @original_Name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([Limit] = @original_Limit) OR ([Limit] IS NULL AND @original_Limit IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CompanyId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter DbType="Date" Name="original_StartDate" />
            <asp:Parameter Name="original_Limit" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CompanyId" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DbType="Date" Name="StartDate" />
            <asp:Parameter Name="Limit" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DbType="Date" Name="StartDate" />
            <asp:Parameter Name="Limit" Type="Decimal" />
            <asp:Parameter Name="original_CompanyId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter DbType="Date" Name="original_StartDate" />
            <asp:Parameter Name="original_Limit" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
