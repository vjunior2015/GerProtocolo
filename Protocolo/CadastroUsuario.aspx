<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="Protocolo.CadastroUsuario" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 354px;
        }
        .auto-style2
        {
            width: 180px;
        }
        .auto-style3
        {
            width: 425px;
        }
        .auto-style4
        {
            width: 295px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 148px;" >
            <tr>
                <td>
                    <table style="width:60%;">
                        <tr>
                            <td colspan="4">Dados Pessoais</td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Nome<asp:RequiredFieldValidator ID="Vnome" runat="server" ControlToValidate="Tnome" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style2">CPF<asp:RequiredFieldValidator ID="vcpf" runat="server" ControlToValidate="Tcpf" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style3">Sexo</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:TextBox ID="Tnome" runat="server" Width="319px"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="Tcpf" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Masculino</asp:ListItem>
                                    <asp:ListItem>Feminino</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Faixa de Idade</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
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
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Telefone</td>
                            <td class="auto-style2">Telefone Celular</td>
                            <td class="auto-style3">CEP<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tcep" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:TextBox ID="Ttelefone" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="Tcelular" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="Tcep" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Endereço<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tendereco" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style2">Bairro<asp:RequiredFieldValidator ID="vbairro" runat="server" ControlToValidate="Tbairro" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:TextBox ID="Tendereco" runat="server" Width="316px"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="Tbairro" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Cidade</td>
                            <td class="auto-style2">UF</td>
                            <td class="auto-style3">Outras Localidades</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:DropDownList ID="Dcidade" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DUF" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="Toutralocalidade" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Escolaridade</td>
                            <td class="auto-style2">Profissão<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Tprofissao" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:DropDownList ID="Descolaridade" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="Tprofissao" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">E-mail<asp:RequiredFieldValidator ID="Validatoremail" runat="server" ControlToValidate="Temail" ErrorMessage="     * Email- precisa ser preenchido"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:TextBox ID="Temail" runat="server" Width="175px"></asp:TextBox>
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">Repita seu E-mail</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:TextBox ID="TextBox10" runat="server" Width="175px"></asp:TextBox>
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Senha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style1">Repita Senha</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:TextBox ID="Tsenha" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="Trsenha" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                &nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Tsenha" ControlToValidate="Trsenha" ErrorMessage="*Senha não confere"></asp:CompareValidator>
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="Gravar" Width="117px" OnClick="Button1_Click" />
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
