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
    public partial class CadastroUsuario : System.Web.UI.Page
    {
       protocoloEntities DADOSCIDADE,DADOSUF,dadosescolaridade ;
       
 

        protected void Page_Load(object sender, EventArgs e)
        {
 
       

        if (!IsPostBack)
        {

            CarregaCidade();
            CarregaUF();
            CarregaEscolaridade();
        }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Usuario adicionar_user = new Usuario();
            adicionar_user.Pessoa.Nome = Tnome.Text;
            adicionar_user.Nusuario = Temail.Text;
            adicionar_user.Senha = Tsenha.Text;
            adicionar_user.Pessoa.Cpfcnpj = Tcpf.Text;
            adicionar_user.Pessoa.Telefone.Numero = Ttelefone.Text;
            adicionar_user.Pessoa.Endereco.Bairro = Tbairro.Text;
            adicionar_user.Pessoa.Endereco.Cep = Tcep.Text;
            adicionar_user.Pessoa.Endereco.Idcidade =Int32.Parse(Dcidade.SelectedValue) ;
            adicionar_user.Pessoa.Endereco.Logradouro = Tendereco.Text;
            adicionar_user.Pessoa.Endereco.Outraslocalidades = Toutralocalidade.Text;
            adicionar_user.Pessoa.Faixaetaria = Dfaixaetaria.SelectedValue;
 
            
            adicionar_user.add();
  


        }

        protected void CarregaCidade() {
            DADOSCIDADE = new protocoloEntities();
            var CIDADE = from c in DADOSCIDADE.tb_cidade
                         select new { c.CIDADE,c.IDCIDADE  };
            Dcidade.DataValueField = "IDCIDADE";
            Dcidade.DataTextField = "CIDADE";
            Dcidade.DataSource = CIDADE.ToList();
            Dcidade.DataBind();
        
        
        }

        protected void CarregaUF()
        {

            DADOSUF = new protocoloEntities();
            var UF = from c in DADOSUF.tb_cidade
                        select new { c.UF,c.IDCIDADE };
            
            DUF.DataValueField = "UF";
            DUF.DataTextField = "UF";
            DUF.DataSource = UF.ToList(); 
            DUF.DataBind();


        }

        protected void CarregaEscolaridade()
        {

            dadosescolaridade = new protocoloEntities();
            var escol= from c in DADOSUF.tb_escolaridade 
                     select new { c.ESCOLARIDADE ,c.IDESCOLARIDADE};

            Descolaridade.DataValueField = "IDESCOLARIDADE";
            Descolaridade.DataTextField = "ESCOLARIDADE";
            Descolaridade.DataSource = escol.ToList();
            Descolaridade.DataBind();


        }


    }
}