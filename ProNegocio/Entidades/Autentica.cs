using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProDados; 


namespace ProNegocio
{
    public class Autentica
    {

        #region "Propriedades"

        private String _usuario;
        private String _senha;
        private String _remember;

        #endregion


        #region "Get and Set"

        public String Usuario
        {
            get { return _usuario; }
            set { _usuario = value; }
        }

        public String Senha
        {
            get { return _senha; }
            set { _senha = value; }
        }

        public String Remember
        {
            get { return _remember; }
            set { _remember = value; }
        }

        #endregion

        #region "Construtor"
        public Autentica()
        {

        }

        #endregion


        #region "Metodos"

        public Boolean ValidaLogin(String usu, String password)
        {
            Boolean retorno = false;
            protocoloEntities DADOSUSU = new protocoloEntities();
            tb_usuario tbUsu = new tb_usuario();

            //var strUsuario = (from p in DADOSUSU.tb_usuario where p.USUARIO == usu && p.SENHA == password select new { p }).First();

             //Usuario objUsuario = new Usuario();
             //objUsuario.Nusuario = strUsuario.p.USUARIO;
             //objUsuario.Pessoa.Nome = strUsuario.p.NOME;
             //objUsuario.Pessoa.Status = strUsuario.p.tb_usuario_status.STATUS;
             //objUsuario.Pessoa.Nivel = strUsuario.p.tb_usuario_nivel.NIVEL;
            
              retorno = true;


            return retorno;
        }
        #endregion
        




    }
}
