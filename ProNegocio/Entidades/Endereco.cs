using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProNegocio
{
   public class Endereco
    {
        private string _logradouro;
        private string _cidade;
        private int idcidade;

        public int Idcidade
        {
            get { return idcidade; }
            set { idcidade = value; }
        }
        private string _uf;
        private string _cep;
        private string _bairro;
        private string _outraslocalidades;


        public string Logradouro
        {
            get { return _logradouro; }
            set { _logradouro = value; }
        }

        public string Bairro
        {
            get { return _bairro; }
            set { _bairro = value; }
        }

        public string Cep
        {
            get { return _cep; }
            set { _cep = value; }
        }

        public string Uf
        {
            get { return _uf; }
            set { _uf = value; }
        }
        
        public string Cidade
        {
            get { return _cidade; }
            set { _cidade = value; }
        }

        public string Outraslocalidades
        {
            get { return _outraslocalidades; }
            set { _outraslocalidades = value; }
        }

        public Endereco() { 
        
        }





    }
}
