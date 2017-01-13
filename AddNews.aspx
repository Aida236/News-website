<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="AddNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <br />  <br />
    <section class="sectionhome" style="width:500px">
      
     <div style="float: left; padding:30px;">
          <div style="padding: 10px">
        <asp:Label ID="Label1" runat="server" Text="Titlu:"></asp:Label>
        <br />
         <asp:TextBox ID="TBTitlu" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Titlu!" ControlToValidate="TBTitlu"></asp:RequiredFieldValidator>
     </div>
    <div style="padding: 10px">
        <asp:Label ID="Label2" runat="server" Text="Categorie:"></asp:Label>
        <br />
        <asp:TextBox ID="TBCategorie" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TBCategorie" runat="server" ErrorMessage="Categorie!" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div style="padding: 10px">
        <asp:Label ID="Label3" runat="server" Text="Autor:"></asp:Label>
        <br />
        <asp:TextBox ID="TBAutor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TBAutor" runat="server" ErrorMessage="Autor!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
     </div>
    <div style="padding: 10px">
        <asp:Label ID="Label4" runat="server" Text="Continut:"></asp:Label>
        <br />
        <asp:TextBox ID="TBContinut" runat="server" Height="60px" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TBContinut" runat="server" ErrorMessage="Continut!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
     </div>
   
    <div style="padding: 10px">
        <asp:Button ID="AddButton" runat="server" Text="Adauga stire" OnClick="AddButton_Click" />
    </div>
    <div style="padding: 10px">
        <asp:Label ID="LAnswer" runat="server" Text=""></asp:Label>
    </div>
        </div>




        </section>


</asp:Content>

