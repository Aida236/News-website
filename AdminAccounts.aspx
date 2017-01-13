<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAccounts.aspx.cs" Inherits="AdminAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">

    <AnonymousTemplate>
          <section class="sectionhome"> This page has restricted access.
            Return to <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Home.aspx" runat="server">Home</asp:HyperLink> or sign in.
              </section> 
        </AnonymousTemplate>

        <RoleGroups>
            <asp:RoleGroup Roles="Administrator">
                <ContentTemplate>
                    <section class="sectionhome">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" SortExpression="ApplicationId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" SortExpression="IsAnonymous" />
                        <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([UserId], [ApplicationId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@UserId, @ApplicationId, @UserName, @IsAnonymous, @LastActivityDate)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                    <DeleteParameters>
                        <asp:Parameter Name="UserId" Type="Object" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserId" Type="Object" />
                        <asp:Parameter Name="ApplicationId" Type="Object" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                        <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ApplicationId" Type="Object" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                        <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                        <asp:Parameter Name="UserId" Type="Object" />
                    </UpdateParameters>
            </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UsersInRoles] WHERE [UserId] = @UserId AND [RoleId] = @RoleId" InsertCommand="INSERT INTO [UsersInRoles] ([UserId], [RoleId]) VALUES (@UserId, @RoleId)" SelectCommand="SELECT * FROM [UsersInRoles]">
                    <DeleteParameters>
                        <asp:Parameter Name="UserId" Type="Object" />
                        <asp:Parameter Name="RoleId" Type="Object" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserId" Type="Object" />
                        <asp:Parameter Name="RoleId" Type="Object" />
                    </InsertParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId,RoleId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="RoleId" HeaderText="RoleId" ReadOnly="True" SortExpression="RoleId" />
                    </Columns>
            </asp:GridView>
                        </section>
                    </ContentTemplate>
        </asp:RoleGroup>
      </RoleGroups>
        </asp:LoginView>
</asp:Content>

