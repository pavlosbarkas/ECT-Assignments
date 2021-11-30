<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Validators.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td class="text-left" colspan="2" style="color: #FF6600; font-size: large;">Φόρμα Επικοινωνίας</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Όνομα</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Πρέπει να συμπληρώσετε το όνομα σας." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Επώνυμο</td>
            <td>
                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Πρέπει να συμπληρώσετε το επίθετο σας." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Διεύθυνση 1</td>
            <td>
                <asp:TextBox ID="txtAd1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAd1" ErrorMessage="Πρέπει να συμπληρώσετε τη διεύθυνση σας." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Διεύθυνση 2</td>
            <td>
                <asp:TextBox ID="txtAd2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Πόλη</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="Πρέπει να συμπληρώσετε την πόλη σας." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Τ.Κ.</td>
            <td>
                <asp:TextBox ID="txtTK" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTK" ErrorMessage="Πρέπει να συμπληρώσετε τον Τ.Κ. σας." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Νομός</td>
            <td>
                <asp:DropDownList ID="lstStateList" runat="server">
                    <asp:ListItem Selected="True">Επιλέξτε Νομό</asp:ListItem>
                    <asp:ListItem>Θεσσαλονίκης</asp:ListItem>
                    <asp:ListItem>Καβάλας</asp:ListItem>
                    <asp:ListItem>Μαγνησίας</asp:ListItem>
                    <asp:ListItem>Αιτωλοακαρνανίας</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="lstStateList" ErrorMessage="Πρέπει να επιλέξετε το νομό σας." ForeColor="Red" Operator="NotEqual" ValueToCompare="Επιλέξτε Νομό">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Χώρα (Να το κάνω όπως νομούς)</td>
            <td>
                <asp:DropDownList ID="lstCountry" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align: top">Μήνυμα</td>
            <td>
                <asp:TextBox ID="txtMinima" runat="server" Height="166px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="minimaValidator" runat="server" ControlToValidate="txtMinima" ErrorMessage="Πρέπει να γράψετε ένα μήνυμα" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx">Όροι Χρήσης</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Αποδέχομαι τους Όρους Χρήσης" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>E-mail</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="Πρέπει να δώσετε το e-mail σας" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Το e-mail που δώσατε δεν είναι σωστό" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Υποβολή" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Προσοχή:" /> 
    <asp:CustomValidator ID="CustomValidator1" runat="server" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"> Παρακαλώ πατήστε το Checkbox!</asp:CustomValidator>
    <br />
    <br />
</asp:Content>

