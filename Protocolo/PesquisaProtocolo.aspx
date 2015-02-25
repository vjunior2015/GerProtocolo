<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PesquisaProtocolo.aspx.cs" Inherits="Protocolo.PesquisaProtocolo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hgroup class="title">
        <h1>PESQUISA PROTOCOLO</h1>     
    </hgroup>

<div id="pesquisa" class="float-left" style="margin-left:10px;">
           <table style="width:100%;">
             <tr>
                <td><asp:Label ID="lblNumero" runat="server" Text="Número Protocolo:"></asp:Label> </td>
                 <td><asp:Label ID="lblInteressado" runat="server" Text="Interessado/Autor:"></asp:Label> </td>
                 <td><asp:Label ID="lblPalavraChave" runat="server" Text="Palavra Chave:"></asp:Label> </td>
              </tr>
              <tr>
                <td> <asp:TextBox ID="txtNumProtocolo" runat="server" AutoPostBack="true"  Width="150px"></asp:TextBox>  </td>
                 <td> <asp:TextBox ID="txtAutor" runat="server" AutoPostBack="true" Width="250px"></asp:TextBox>   </td>
                 <td> <asp:TextBox ID="txtPalavraChave" runat="server" AutoPostBack="true" Width="250px"></asp:TextBox>  </td>
                </tr>
              <tr>               
                <td><asp:Label ID="Label1" runat="server" Text="Tipo:"></asp:Label> </td>
                 <td><asp:Label ID="Label2" runat="server" Text="Status:"></asp:Label> </td>
                 <td><asp:Label ID="Label3" runat="server" Text="Período de:"></asp:Label> </td>
              </tr>
              <tr>
                <td> <asp:DropDownList ID="dlTipo" runat="server">
                    </asp:DropDownList> </td>
                 <td><asp:DropDownList ID="dlStatus" runat="server">
                 </asp:DropDownList> </td>
                 <td> 
                     <asp:TextBox ID="txtDtInicio" runat="server" AutoPostBack="true" TextMode="Date" Width="100px" MaxLength="10"></asp:TextBox>                 
                     até  
                   <asp:TextBox ID="txtDtFim" runat="server" AutoPostBack="true" TextMode="Date" Width="100px" MaxLength="10"></asp:TextBox>    </td>
              </tr>
                <tr>               
                <td colspan="3" style="text-align:right;"><asp:Button ID="btnPesquisa" runat="server" Text=" Pesquisar " /> </td>
                 
              </tr>
           </table>         
        <br />
</div>


<div id="gridPesquisa" class="float-left" style="margin-left:10px;">

        <asp:GridView ID="grdProtocolo" runat="server" AutoGenerateColumns="False" Width="500px" >
        <Columns>                      
            <asp:BoundField DataField="NUMPROTOCOLO" HeaderText="Número" ReadOnly="True"  />
            <asp:BoundField DataField="DATA_CRIACAO" HeaderText="Entrada"  ReadOnly="True"  />
            <asp:BoundField DataField="SOLICITANTE" HeaderText="Interessado"   ReadOnly="True" />            
            <asp:BoundField DataField="TIPODOCUMENTO" HeaderText="Tipo Documento"   ReadOnly="True" />
            <asp:BoundField DataField="DEPARTAMENTO" HeaderText="Localização"  />
            <asp:BoundField DataField="STATUS" HeaderText="Status"  /> 
            <asp:BoundField DataField="ASSUNTO" HeaderText="Assunto"  />
            <asp:CommandField ShowEditButton="true"  EditText="Abrir" ButtonType="Link" />
        </Columns>
    </asp:GridView>
    <br />
 </div>
</asp:Content>
