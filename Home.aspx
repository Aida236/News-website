<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <section class="sectionhome">
     

    <asp:LoginView ID="LoginView3" runat="server">
            <RoleGroups>
                    
                    <asp:RoleGroup Roles="Editor">
                            
                        <ContentTemplate>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                               
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="Titlu" HeaderText="Titlu" SortExpression="Titlu" />
                                    <asp:BoundField DataField="Categorie" HeaderText="Categorie" SortExpression="Categorie" />
                                    <asp:BoundField DataField="Continut" HeaderText="Continut" SortExpression="Continut" />
                                    <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                                    <asp:BoundField DataField="Data_adaugarii" HeaderText="Data_adaugarii" SortExpression="Data_adaugarii" />
                                </Columns>
                               
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Titlu], [Categorie], [Continut], [Autor], [Data_adaugarii]) VALUES (@Titlu, @Categorie, @Continut, @Autor, @Data_adaugarii)" SelectCommand="SELECT [Id], [Titlu], [Categorie], [Continut], [Autor], [Data_adaugarii] FROM [News]" UpdateCommand="UPDATE [News] SET [Titlu] = @Titlu, [Categorie] = @Categorie, [Continut] = @Continut, [Autor] = @Autor, [Data_adaugarii] = @Data_adaugarii WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Titlu" Type="String" />
                                    <asp:Parameter Name="Categorie" Type="String" />
                                    <asp:Parameter Name="Continut" Type="String" />
                                    <asp:Parameter Name="Autor" Type="String" />
                                    <asp:Parameter Name="Data_adaugarii" Type="DateTime" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Titlu" Type="String" />
                                    <asp:Parameter Name="Categorie" Type="String" />
                                    <asp:Parameter Name="Continut" Type="String" />
                                    <asp:Parameter Name="Autor" Type="String" />
                                    <asp:Parameter Name="Data_adaugarii" Type="DateTime" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </ContentTemplate>
                    </asp:RoleGroup>

                    <asp:RoleGroup Roles="Utilizator">
                            
                        <ContentTemplate>

                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3">
                                <AlternatingItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                                    <br />
                
                                    <asp:Label ID="ContinutLabel" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>

                               

                                    <br /> Adauga comentariu aici:
                                    <br />
                                        Nume:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="50px"></asp:TextBox>
                                    <br /> <asp:Button ID="Button1" runat="server" Text="Adauga" OnClick="Button1_Click" />
                                    <br />
                                     <asp:Label ID="LAnswer" runat="server" Text=""></asp:Label>
                                   <br />
                                </AlternatingItemTemplate>
          
                                <EditItemTemplate>
                                    <span style="">
                                    <asp:TextBox ID="TitluTextBox" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                                    <br /> 
                
                                    <asp:TextBox ID="ContinutTextBox" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:TextBox ID="AutorTextBox" runat="server" Text='<%# Bind("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:TextBox ID="Data_adaugariiTextBox" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    <br />
                                    <br />
                                    </span>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <span style="">
                                    <asp:TextBox ID="TitluTextBox" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                                    <br />
               
                                    <asp:TextBox ID="ContinutTextBox" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:TextBox ID="AutorTextBox" runat="server" Text='<%# Bind("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:TextBox ID="Data_adaugariiTextBox" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    <br />
                                    <br />
                                    </span>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>' />
                                    <br />
                
                                    <asp:Label ID="ContinutLabel" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>


                                    <br /> Adauga comentariu aici:
                                    <br />
                                        Nume:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="50px"></asp:TextBox>
                                    <br /> <asp:Button ID="Button1" runat="server" Text="Adauga" OnClick="Button1_Click" />
                                    <br />
                                    <asp:Label ID="LAnswer" runat="server" Text=""></asp:Label>
                                   <br />
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div style="" id="itemPlaceholderContainer" runat="server">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                    <div style="">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </div>
                                 
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                                    <br />
               
                                    <asp:Label ID="ContinutLabel"  CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </SelectedItemTemplate>
                            </asp:ListView>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titlu], [Continut], [Autor], [Data_adaugarii] FROM [News] ORDER BY [Data_adaugarii] DESC "></asp:SqlDataSource>
     
                    </ContentTemplate>
                </asp:RoleGroup>
             

                  <asp:RoleGroup Roles="Administrator">
                            
                        <ContentTemplate>

                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3">
                                <AlternatingItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                                    <br />
                
                                    <asp:Label ID="ContinutLabel" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </AlternatingItemTemplate>
          
                                <EditItemTemplate>
                                    <span style="">
                                    <asp:TextBox ID="TitluTextBox" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                                    <br /> 
                
                                    <asp:TextBox ID="ContinutTextBox" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:TextBox ID="AutorTextBox" runat="server" Text='<%# Bind("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:TextBox ID="Data_adaugariiTextBox" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    <br />
                                    <br />
                                    </span>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <span style="">
                                    <asp:TextBox ID="TitluTextBox" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                                    <br />
               
                                    <asp:TextBox ID="ContinutTextBox" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:TextBox ID="AutorTextBox" runat="server" Text='<%# Bind("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:TextBox ID="Data_adaugariiTextBox" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    <br />
                                    <br />
                                    </span>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>' />
                                    <br />
                
                                    <asp:Label ID="ContinutLabel" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div style="" id="itemPlaceholderContainer" runat="server">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                    <div style="">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </div>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                                    <br />
               
                                    <asp:Label ID="ContinutLabel"  CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </SelectedItemTemplate>
                            </asp:ListView>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titlu], [Continut], [Autor], [Data_adaugarii] FROM [News] ORDER BY [Data_adaugarii] DESC "></asp:SqlDataSource>
     
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        <AnonymousTemplate>
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
                                <AlternatingItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                                    <br />
                
                                    <asp:Label ID="ContinutLabel" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </AlternatingItemTemplate>
          
                                <EditItemTemplate>
                                    <span style="">
                                    <asp:TextBox ID="TitluTextBox" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                                    <br /> 
                
                                    <asp:TextBox ID="ContinutTextBox" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:TextBox ID="AutorTextBox" runat="server" Text='<%# Bind("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:TextBox ID="Data_adaugariiTextBox" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    <br />
                                    <br />
                                    </span>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <span style="">
                                    <asp:TextBox ID="TitluTextBox" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                                    <br />
               
                                    <asp:TextBox ID="ContinutTextBox" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:TextBox ID="AutorTextBox" runat="server" Text='<%# Bind("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:TextBox ID="Data_adaugariiTextBox" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    <br />
                                    <br />
                                    </span>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>' />
                                    <br />
                
                                    <asp:Label ID="ContinutLabel" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div style="" id="itemPlaceholderContainer" runat="server">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                    <div style="">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </div>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <span style="">
                                    <asp:Label ID="TitluLabel" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                                    <br />
               
                                    <asp:Label ID="ContinutLabel"  CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                                    <br />
                                    Autor:
                                    <asp:Label ID="AutorLabel" runat="server" Text='<%# Eval("Autor") %>' />
                                    <br />
                                    Data adaugarii:
                                    <asp:Label ID="Data_adaugariiLabel" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </SelectedItemTemplate>
                            </asp:ListView>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titlu], [Continut], [Autor], [Data_adaugarii] FROM [News] ORDER BY [Data_adaugarii] DESC "></asp:SqlDataSource>
     
                          
        </AnonymousTemplate>
            </asp:LoginView>
              
     
    
    </section>
</asp:Content>

