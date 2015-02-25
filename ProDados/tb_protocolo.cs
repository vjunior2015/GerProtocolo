//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProDados
{
    using System;
    using System.Collections.Generic;
    
    public partial class tb_protocolo
    {
        public tb_protocolo()
        {
            this.tb_protocolo_anexo = new HashSet<tb_protocolo_anexo>();
            this.tb_protocolo_historico = new HashSet<tb_protocolo_historico>();
        }
    
        public int IDPROTOCOLO { get; set; }
        public string NumeroProtocolo { get; set; }
        public string Assunto { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Descricao { get; set; }
        public string Observacao { get; set; }
        public string NumeroEtiqueta { get; set; }
        public Nullable<int> Destinatario { get; set; }
        public Nullable<int> Solicitante { get; set; }
        public Nullable<int> CriadoPor { get; set; }
        public Nullable<int> IDTIPODOCUMENTO { get; set; }
        public Nullable<int> IDSTATUS { get; set; }
        public string Processo { get; set; }
    
        public virtual ICollection<tb_protocolo_anexo> tb_protocolo_anexo { get; set; }
        public virtual ICollection<tb_protocolo_historico> tb_protocolo_historico { get; set; }
        public virtual tb_protocolo_status tb_protocolo_status { get; set; }
    }
}
