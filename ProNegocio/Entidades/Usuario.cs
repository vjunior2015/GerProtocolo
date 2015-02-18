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
            //_pessoa.Endereco = new Endereco();
        
        }

        public void add() {
            
 
               
            tb_usuario addusuario = new tb_usuario();
            
            addusuario.USUARIO = Nusuario;
            addusuario.BAIRRO= Pessoa.Endereco.Bairro   ;
            addusuario.CEP= Pessoa.Endereco.Cep   ;
            addusuario.FAIXAETARIA =  Pessoa.Faixaetaria;
            addusuario.IDCIDADE = Pessoa.Endereco.Idcidade  ;
            addusuario.NOME = Pessoa.Nome;
            addusuario.PROFISSAO = Pessoa.Profissao;
            addusuario.SENHA = Senha;
            addusuario.SEXO = Pessoa.Sexo;
            addusuario.TELEFONE = Pessoa.Telefone.Numero;
            addusuario.DDDTELEFONE = Pessoa.Telefone.Ddd;
            addusuario.EMAIL = Pessoa.Email;
            
            //addusuario.IDDEPARTAMENTO = Endereco. 
              
            // addusuario.IDCIDADE = Endereco.;    
            //addusuario.= _pessoa.Datanasc;
            addusuario.CPFCNPJ = Pessoa.Cpfcnpj;
             
      


            //addusuario.Senha = Senha();
            protocoloEntities banco = new protocoloEntities ();
            banco.tb_usuario.Add(addusuario); 
            banco.SaveChanges();
   
        }



    }
}
