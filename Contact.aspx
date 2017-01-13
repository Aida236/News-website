<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <section class="sectionhome"  style="width:500px">
        <asp:Label runat="server" ID="Label2"> Trimite-ne o stire: </asp:Label><br />
                <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="100px"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Trimite" OnClick="Button1_Click" />

        <asp:Label runat="server" ID="Label1" Visible="false"> Multumim!</asp:Label>
       <br /><br />
        Sau contacteaza-ne la:<br />
        <h4>thenews@gmail.com</h4>


    </section>
</asp:Content>

