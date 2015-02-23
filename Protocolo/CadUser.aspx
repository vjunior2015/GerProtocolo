<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CadUser.aspx.cs" Inherits="Protocolo.CadUser" %>




<asp:Content ID="CadUser" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2
        {
            height: 8px;
        }
        .auto-style6
        {
            width: 5%;
        }
        .auto-style7
        {
            width: 21px;
        }
        .auto-style8
        {
            height: 26px;
        }
        </style>
      <script src="Scripts/jquery-2.1.3.min.js"></script>
     <script src="Scripts/jquery.maskedinput.min.js"></script>
    
    <script type="text/javascript">
        jQuery(function ($) {
            $("#Ttelefone").mask("(099) 9999-9999");
            $("#Tcelular").mask("(099) 9999-9999");
            $("#Tcep").mask("99999-999");
            $("#Tcpf").mask("999.999.999-99");

            
        });
    </script>   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        
   
     
       <table width:100%;" border="1" align="center">
        <table width:50%;" border="0">
            <tr>
                <td class="label" colspan="4">Dados Pessoais</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="zero" colspan="4">Nome<asp:RequiredFieldValidator ID="ValidatorNome" runat="server" ControlToValidate="Tnome" ErrorMessage="*" CssClass="validation-error"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">Cpf<asp:RequiredFieldValidator ID="ValidatorCpf" runat="server" ControlToValidate="Tcpf" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>Sexo</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:TextBox ID="Tnome" runat="server" Width="316px" MaxLength="60"></asp:TextBox>
                            </td>
                <td class="auto-style7">
                                <asp:TextBox ID="Tcpf" runat="server" MaxLength="16" Width="108px" ClientIDMode="Static"></asp:TextBox>
                            </td>
                <td>
                                <asp:RadioButtonList ID="RadSEX" runat="server" RepeatDirection="Horizontal" BorderStyle="None" BorderWidth="0px" CellPadding="5" CellSpacing="0" EnableTheming="True" Font-Bold="False" Font-Size="7pt" Height="0px" TextAlign="Left" Width="50px">
                                    <asp:ListItem Value="1">Masculino</asp:ListItem>
                                    <asp:ListItem Value="0">Feminino</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                <td>
                                &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">Faixa de Idade</td>
                <td colspan="2">
                                &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:DropDownList ID="Dfaixaetaria" runat="server">
                                    <asp:ListItem>0 a 17</asp:ListItem>
                                    <asp:ListItem>18 a 29</asp:ListItem>
                                    <asp:ListItem>30 a 39</asp:ListItem>
                                    <asp:ListItem>40 a 49</asp:ListItem>
                                    <asp:ListItem>50 a 59</asp:ListItem>
                                    <asp:ListItem>60 a 69</asp:ListItem>
                                    <asp:ListItem>70 ou Mais</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                <td colspan="2">
                                &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>DDD&nbsp; Telefone</td>
                <td>DDD&nbsp; Celular</td>
                <td>CEP<asp:RequiredFieldValidator ID="ValidatorCep" runat="server" ControlToValidate="Tcep" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                                <asp:TextBox ID="Ttelefone" runat="server" Width="95px" ClientIDMode="Static" MaxLength="15"></asp:TextBox>
                            </td>
                <td>
                                <asp:TextBox ID="Tcelular" runat="server" Width="95px" ClientIDMode="Static" MaxLength="15"></asp:TextBox>
                            </td>
                <td class="auto-style2" colspan="2">
                                <asp:TextBox ID="Tcep" runat="server" Width="88px" ClientIDMode="Static"></asp:TextBox>
                            </td>
                <td colspan="2">
                    &nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td colspan="4">Endereço<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Tendereco" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td colspan="2">Bairro</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:TextBox ID="Tendereco" runat="server" Width="316px"></asp:TextBox>
                            </td>
                <td colspan="2">
                                <asp:TextBox ID="Tbairro" runat="server" Width="188px"></asp:TextBox>
                            </td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">Cidade<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Dcidade" CssClass="field-validation-valid" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">UF</td>
                <td colspan="2">Outras Localidades</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:DropDownList ID="Dcidade" runat="server">
                                </asp:DropDownList>
                            </td>
                <td class="auto-style7">
                                <asp:DropDownList ID="DUF" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="ValidatorUf" runat="server" ErrorMessage="*" ControlToValidate="DUF"></asp:RequiredFieldValidator>
                            </td>
                <td>
                    <asp:TextBox ID="Toutralocalidade" runat="server"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td colspan="4">Escolaridade<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Tprofissao" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td colspan="2">Profissão<asp:RequiredFieldValidator ID="ValidatorProfissao" runat="server" ControlToValidate="Tprofissao" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:DropDownList ID="Descolaridade" runat="server">
                                </asp:DropDownList>
                            </td>
                <td colspan="2">
                                <asp:TextBox ID="Tprofissao" runat="server" Width="250px"></asp:TextBox>
                            </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">Email<asp:RequiredFieldValidator ID="Validatoremail" runat="server" ControlToValidate="Temail" ErrorMessage="     * "></asp:RequiredFieldValidator>
                            </td>
                <td colspan="2">&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" class="auto-style8">
                                <asp:TextBox ID="Temail" runat="server" Width="222px" OnTextChanged="Temail_TextChanged"></asp:TextBox>
                                <asp:Label ID="Lerrosenha" runat="server" Visible="False"></asp:Label>
                            </td>
                <td colspan="2" class="auto-style8"></td>
                <td class="auto-style8" ></td>
            </tr>
            <tr>
                <td colspan="4">Repita seu Email</td>
                <td colspan="2">&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:TextBox ID="TextBox10" runat="server" Width="222px"></asp:TextBox>
                            </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Senha</td>
                <td colspan="3">Repite a Senha</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                                <asp:TextBox ID="Tsenha" runat="server" TextMode="Password" Width="100px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Validatorrs" runat="server" ControlToValidate="Tsenha" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                <td colspan="3"  >
                                <asp:TextBox ID="Trsenha" runat="server" TextMode="Password" Width="100px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validatorsenha" runat="server" ControlToValidate="Trsenha" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:CompareValidator ID="CValidatorSenha" runat="server" ControlToCompare="Tsenha" ControlToValidate="Trsenha" ErrorMessage="*Senha não confere"></asp:CompareValidator>
                            </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                                <asp:Button ID="btngravar" runat="server" Text="Gravar" Width="175px" OnClick="btngravar_Click" />
                                </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </table>   
    
</asp:Content>
