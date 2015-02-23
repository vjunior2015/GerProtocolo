using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProDados; 
namespace ProNegocio
{
    public class Usuario
    {
        private string _nusuario;
        private string _senha;
        Pessoa _pessoa;      
      

        public Pessoa Pessoa
        {
            get { return _pessoa; }
            set { _pessoa = value; }
        }



        public string Nusuario
        {
            get { return _nusuario; }
            set { _nusuario = value; }
        }

        public string Senha
        {
            get { return _senha; }
            set { _senha = value; }
        }


        public Usuario() {

            _pessoa = new Pessoa();
           
        
        }

        public void add() {
            
 
               
            tb_usuario addusuario = new tb_usuario();

            addusuario.USUARIO = Pessoa.Email;
            addusuario.NOME = Pessoa.Nome;
            addusuario.CPFCNPJ = Pessoa.Cpfcnpj;
            addusuario.SEXO =Pessoa.Sexo.Trim() ;
            
            addusuario.FAIXAETARIA = Pessoa.Faixaetaria;
            addusuario.TELEFONE = Pessoa.Telefone.Numero;
            addusuario.DDDTELEFONE = Pessoa.Telefone.Ddd;
            addusuario.CELULAR = Pessoa.Celular.Numero;
            addusuario.DDDCELULAR = Pessoa.Celular.Ddd;
            addusuario.ENDERECO = Pessoa.Endereco.Logradouro; 
            addusuario.BAIRRO= Pessoa.Endereco.Bairro   ;
            addusuario.CEP= Pessoa.Endereco.Cep   ;            
            addusuario.IDCIDADE = Pessoa.Endereco.Idcidade  ;            
            addusuario.PROFISSAO = Pessoa.Profissao;            
            addusuario.EMAIL = Pessoa.Email;
            addusuario.SENHA = Senha;
            addusuario.IDESCOLARIDADE = Int32.Parse(Pessoa.Escolaridade);

            protocoloEntities banco = new protocoloEntities ();
            banco.tb_usuario.Add(addusuario); 
            banco.SaveChanges();






        }



    }
}
