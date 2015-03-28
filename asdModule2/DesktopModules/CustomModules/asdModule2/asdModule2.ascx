<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="asdModule2.ascx.cs" Inherits="asdModule2.DesktopModules.CustomModules.module2.asdModule2" %>
<asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataKeyNames="myTableID" ShowFooter="True" AllowPaging="True">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:TemplateField HeaderText="myTableID" InsertVisible="False" SortExpression="myTableID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("myTableID") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("myTableID") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:LinkButton ID="LabelLinkButton" runat="server" OnClick="LabelLinkButton_Click" ValidationGroup="Insert">Insert</asp:LinkButton>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="firstName" SortExpression="firstName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("firstName") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditFirstName" runat="server"
                    ErrorMessage="First name is a required field"
                    ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("firstName") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertFirstName" runat="server"
                    ErrorMessage="First Name is a required field"
                    ControlToValidate="txtFirstName" Text="*" ForeColor="Red"
                    ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="lastName" SortExpression="lastName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lastName") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditLastName" runat="server"
                    ErrorMessage="Last name is a required field"
                    ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("lastName") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertLastName" runat="server"
                    ErrorMessage="Last Name is a required field"
                    ControlToValidate="txtLastName" Text="*" ForeColor="Red"
                    ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email" SortExpression="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server"
                    ErrorMessage="Email is a required field"
                    ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertEmail" runat="server"
                    ErrorMessage="Email is a required field"
                    ControlToValidate="txtEmail" Text="*" ForeColor="Red"
                    ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Company" SortExpression="Company">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Company") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditCompany" runat="server"
                    ErrorMessage="Company is a required field"
                    ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Company") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertCompany" runat="server"
                    ErrorMessage="Company is a required field"
                    ControlToValidate="txtCompany" Text="*" ForeColor="Red"
                    ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
    </Columns>
    <RowStyle HorizontalAlign="Center" />
    <EditRowStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Insert"
    ForeColor="Red" runat="server" />
<asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red"
    runat="server" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [myTable] ORDER BY [lastName], [firstName]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [myTable] WHERE [myTableID] = @original_myTableID AND (([firstName] = @original_firstName) OR ([firstName] IS NULL AND @original_firstName IS NULL)) AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Company] = @original_Company) OR ([Company] IS NULL AND @original_Company IS NULL))" InsertCommand="INSERT INTO [myTable] ([firstName], [lastName], [Email], [Company]) VALUES (@firstName, @lastName, @Email, @Company)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [myTable] SET [firstName] = @firstName, [lastName] = @lastName, [Email] = @Email, [Company] = @Company WHERE [myTableID] = @original_myTableID AND (([firstName] = @original_firstName) OR ([firstName] IS NULL AND @original_firstName IS NULL)) AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Company] = @original_Company) OR ([Company] IS NULL AND @original_Company IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_myTableID" Type="Int32" />
        <asp:Parameter Name="original_firstName" Type="String" />
        <asp:Parameter Name="original_lastName" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Company" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Company" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Company" Type="String" />
        <asp:Parameter Name="original_myTableID" Type="Int32" />
        <asp:Parameter Name="original_firstName" Type="String" />
        <asp:Parameter Name="original_lastName" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Company" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
