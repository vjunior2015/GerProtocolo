using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProDados;

namespace Protocolo
{
    public partial class PesquisaProtocolo : System.Web.UI.Page
    {


        protocoloEntities bancoStatus, bancoTipo;

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaStatus();
            CarregaTipoDocumento();
        }



        public void CarregaStatus()
        {
            bancoStatus = new protocoloEntities();
            var strStatus = from s in bancoStatus.tb_protocolo_status select new { s.IDSTATUS, s.STATUS };
            dlStatus.DataTextField = "Status";
            dlStatus.DataValueField = "IdStatus";
            dlStatus.DataSource = strStatus.ToList();
            dlStatus.DataBind();
        }


        public void CarregaTipoDocumento()
        {
            bancoTipo = new protocoloEntities();
            var strTipo = from s in bancoTipo.tb_tipodocumento select new { s.IDTIPODOCUMENTO, s.TIPO };
            dlTipo.DataTextField = "Tipo";
            dlTipo.DataValueField = "IdTipoDocumento";
            dlTipo.DataSource = strTipo.ToList();
            dlTipo.DataBind();
        }




    }
}