using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProNegocio
{
    public class Util
    {
        public static  string RemoveCaractere(String txtcarac) {
            string strretorno = txtcarac.Replace("-", "");
            strretorno = strretorno.Replace(" ", "");
            strretorno = strretorno.Replace("(", "");
            strretorno = strretorno.Replace(")", "");
            strretorno = strretorno.Replace("-", "");
            strretorno = strretorno.Replace(".", "");

            
            return strretorno;


        }


        
        
        
        }
        



    }

