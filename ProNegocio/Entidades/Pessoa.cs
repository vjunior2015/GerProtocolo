﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProNegocio
{
    public class Pessoa
    {
        Telefone _telefone;
        TelefoneCelular _celular;
        private string _idade;
        private DateTime _datanasc;
        private string _cpfcnpj;
        private string _faixaetaria;
        private string _profissao;
        private string _escolaridade;
        Endereco _endereco;
        private string _nome;
        private String _sexo;



        public TelefoneCelular Celular
        {
            get { return _celular; }
            set { _celular = value; }
        }



        public Telefone Telefone
        {
            get { return _telefone; }
            set { _telefone = value; }
        }

        
        public Endereco Endereco
        {
            get { return _endereco; }
            set { _endereco = value; }
        }

        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }


  


        
        public String Sexo
        {
            get { return _sexo; }
            set { _sexo = value; }
        }
        
        public string Escolaridade
        {
            get { return _escolaridade; }
            set { _escolaridade = value; }
        }


        public string Profissao
        {
            get { return _profissao; }
            set { _profissao = value; }
        }

        public string Faixaetaria
        {
            get { return _faixaetaria; }
            set { _faixaetaria = value; }
        }


        public string Cpfcnpj
        {
            get { return _cpfcnpj; }
            set { _cpfcnpj = value; }
        }


        public DateTime Datanasc
        {
            get { return _datanasc; }
            set { _datanasc = value; }
        }

        public string Nome
        
        {
            get { return _nome; }
            set { _nome = value; }
        }
        
        public string Idade
        {
            get { return _idade; }
            set { _idade = value; }
        }
        public Pessoa() {
            _telefone = new Telefone();
            _celular = new TelefoneCelular();
 
            _endereco = new Endereco();

 
        }

    }
}
