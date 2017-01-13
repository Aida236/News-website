<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sport.aspx.cs" Inherits="Sport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <section class="sectionhome">
       <div> Sorteaza dupa 
           <asp:Button ID="Button2" runat="server" Text="Data adaugarii" OnClick="Button2_Click" />
           <asp:Button ID="Button3" runat="server" Text="Titlu" OnClick="Button3_Click" />
      </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
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
                <span>Nu exista stiri din aceasta categorie.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">
                <asp:TextBox ID="TextBox1" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                <br />
               
                <asp:TextBox ID="TextBox2" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                <br />
                Autor:
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">
                <asp:Label ID="Label1" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>' />
                <br />
                
                <asp:Label ID="Label2" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                <br />
                Autor:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
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
                <asp:Label ID="Label5" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                <br />
               
                <asp:Label ID="Label6"  CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                <br />
                Autor:
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>











              <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" Visible="false">
            <AlternatingItemTemplate>
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
                <span>Nu exista stiri din aceasta categorie.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">
                <asp:TextBox ID="TextBox1" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                <br />
               
                <asp:TextBox ID="TextBox2" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                <br />
                Autor:
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">
                <asp:Label ID="Label1" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>' />
                <br />
                
                <asp:Label ID="Label2" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                <br />
                Autor:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
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
                <asp:Label ID="Label5" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                <br />
               
                <asp:Label ID="Label6"  CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                <br />
                Autor:
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
     






                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" Visible="false">
            <AlternatingItemTemplate>
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
                <span>Nu exista stiri din aceasta categorie.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">
                <asp:TextBox ID="TextBox1" CssClass="titlu" runat="server" Text='<%# Bind("Titlu") %>' />
                <br />
               
                <asp:TextBox ID="TextBox2" CssClass="stire" runat="server" Text='<%# Bind("Continut") %>' />
                <br />
                Autor:
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Data_adaugarii") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">
                <asp:Label ID="Label1" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>' />
                <br />
                
                <asp:Label ID="Label2" CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                <br />
                Autor:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
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
                <asp:Label ID="Label5" CssClass="titlu" runat="server" Text='<%# Eval("Titlu") %>'  />
                <br />
               
                <asp:Label ID="Label6"  CssClass="stire" runat="server" Text='<%# Eval("Continut") %>' />
                <br />
                Autor:
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Autor") %>' />
                <br />
                Data adaugarii:
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Data_adaugarii") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titlu], [Continut], [Autor], [Data_adaugarii] FROM [News] WHERE ([Categorie] LIKE '%' + @Categorie + '%') ORDER BY [Data_adaugarii] DESC">
               <SelectParameters>
                   <asp:Parameter DefaultValue="Sport" Name="Categorie" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
     
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titlu], [Continut], [Autor], [Data_adaugarii] FROM [News] WHERE ([Categorie] LIKE '%' + @Categorie + '%') ORDER BY [Titlu]">
               <SelectParameters>
                   <asp:Parameter DefaultValue="Sport" Name="Categorie" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
     

           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titlu], [Continut], [Autor], [Data_adaugarii] FROM [News]"></asp:SqlDataSource>
     


     


    </section>

</asp:Content>

