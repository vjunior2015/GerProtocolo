using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProNegocio
{
    public class Telefone
    {
        private string _numero;

        public string Numero
        {
            get { return _numero; }
            set { _numero = value; }
        }
        private string _ddd;

        public string Ddd
        {
            get { return _ddd; }
            set { _ddd = value; }
        }

        public Telefone() { 
        
        }

    }
}
