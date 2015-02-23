using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProNegocio;
using ProDados;


namespace Protocolo
{
    public partial class CadUser : System.Web.UI.Page
    {
        protocoloEntities DADOSCIDADE, DADOSUF, dadosescolaridade, dados_user;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                CarregaCidade();
                CarregaUF();
                CarregaEscolaridade();
            }

        }

        protected void btngravar_Click(object sender, EventArgs e)
        {
            LimparCampos();
            //if (!VerificarEmailCadastrado())
            //{

            //    Usuario adicionar_user = new Usuario();
            //    adicionar_user.Pessoa.Nome = Tnome.Text;
            //    adicionar_user.Pessoa.Cpfcnpj = Util.RemoveCaractere(Tcpf.Text);
            //    adicionar_user.Pessoa.Sexo = this.RadSEX.SelectedValue;
            //    adicionar_user.Pessoa.Faixaetaria = this.Dfaixaetaria.SelectedValue;
            //    string telefone =Util.RemoveCaractere(this.Ttelefone.Text);
            //    adicionar_user.Pessoa.Telefone.Numero = telefone.Substring(3) ;
            //    adicionar_user.Pessoa.Telefone.Ddd = telefone.Substring(1, 2);
            //    string celular = Util.RemoveCaractere(this.Tcelular.Text);
            //    adicionar_user.Pessoa.Celular.Ddd = celular.Substring(1,2);
            //    adicionar_user.Pessoa.Celular.Numero = celular.Substring(3) ; 
            //    adicionar_user.Pessoa.Endereco.Logradouro = Tendereco.Text;                
            //    adicionar_user.Pessoa.Endereco.Outraslocalidades = Toutralocalidade.Text;
            //    adicionar_user.Pessoa.Endereco.Bairro = Tbairro.Text;
            //    adicionar_user.Pessoa.Endereco.Cep  = Util.RemoveCaractere(Tcep.Text);                
            //    adicionar_user.Pessoa.Endereco.Idcidade = Int32.Parse(Dcidade.SelectedValue);
            //    adicionar_user.Pessoa.Endereco.Outraslocalidades = this.Toutralocalidade.Text;                
            //    adicionar_user.Pessoa.Escolaridade = this.Descolaridade.SelectedValue;                
            //    adicionar_user.Pessoa.Profissao = this.Tprofissao.Text;
            //    adicionar_user.Pessoa.Email = this.Temail.Text;                
            //    adicionar_user.Senha = Tsenha.Text ;
                

                
                
                


            //    adicionar_user.add();
            //}
            //else {
            //    Lerrosenha.Visible = true;
            //    Lerrosenha.Text = "Email já cadastrado";
            //    this.Temail.Focus();
       
            
            
            //}
        }
        protected void CarregaCidade()
        {
            DADOSCIDADE = new protocoloEntities();
            var CIDADE = from c in DADOSCIDADE.tb_cidade
                         select new { c.CIDADE, c.IDCIDADE };
            Dcidade.DataValueField = "IDCIDADE";
            Dcidade.DataTextField = "CIDADE";
            Dcidade.DataSource = CIDADE.ToList();
            Dcidade.DataBind();


        }

        protected void CarregaUF()
        {

            DADOSUF = new protocoloEntities();
            var UF = from c in DADOSUF.tb_cidade
                     select new { c.UF, c.IDCIDADE };

            DUF.DataValueField = "UF";
            DUF.DataTextField = "UF";
            DUF.DataSource = UF.ToList();
            DUF.DataBind();


        }

        protected void CarregaEscolaridade()
        {

            dadosescolaridade = new protocoloEntities();
            var escol = from c in DADOSUF.tb_escolaridade
                        select new { c.ESCOLARIDADE, c.IDESCOLARIDADE };

            Descolaridade.DataValueField = "IDESCOLARIDADE";
            Descolaridade.DataTextField = "ESCOLARIDADE";
            Descolaridade.DataSource = escol.ToList();
            Descolaridade.DataBind();


        }

        protected bool VerificarEmailCadastrado() 
        
        {

            bool retorno = false;
            dados_user = new  protocoloEntities();
            var usuario = from user  in dados_user.tb_usuario
                          where user.USUARIO == Temail.Text
                          select new {user.USUARIO };

            if (usuario.ToList().Count() > 0) {
                retorno = true;
            
            
            }

            return retorno;

        }

        protected void Temail_TextChanged(object sender, EventArgs e)
        {
            VerificarEmailCadastrado();
        }


        protected void LimparCampos() {

            this.Tbairro.Text = string.Empty;
            this.Tcelular.Text = string.Empty;
            this.Tcep.Text = string.Empty;
            this.Tcpf.Text = string.Empty;
            this.Temail.Text = string.Empty;
            this.Tendereco.Text = string.Empty;
            this.Toutralocalidade.Text = string.Empty;
            this.Tsenha.Text = string.Empty;
            this.Ttelefone.Text = string.Empty;
            this.Trsenha.Text = string.Empty;
            this.Tnome.Text = string.Empty;
            this.Temail.Text = string.Empty;      

        }
    


     
    }
}