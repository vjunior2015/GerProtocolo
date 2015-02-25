using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProDados;

namespace ProNegocio
{
   public class Protocolo
   {

       #region "Propriedades"

       private int _idProtocolo;
       private String _numeroProtocolo;
       private String _assunto;
       private DateTime _data;
       private String _descricao;
       private String _observacao;
       private String _numeroEtiqueta;   
       private int _destinatario;
       private int _solicitante;
       private int _criadoPor;
       private int _tipoDocumento;
       private int _status;

       #endregion


       #region "Get and Set"

       public int IdProtocolo
       {
           get { return _idProtocolo; }
           set { _idProtocolo = value; }
       }

       public String NumeroProtocolo
       {
           get { return _numeroProtocolo; }
           set { _numeroProtocolo = value; }
       }

       public String Assunto
       {
           get { return _assunto; }
           set { _assunto = value; }
       }
       
       public DateTime Data
       {
           get { return _data; }
           set { _data = value; }
       }

       public String Descricao
       {
           get { return _descricao; }
           set { _descricao = value; }
       }

       public String Observacao
       {
           get { return _observacao; }
           set { _observacao = value; }
       }

       public String NumeroEtiqueta
       {
           get { return _numeroEtiqueta; }
           set { _numeroEtiqueta = value; }
       }

       public int Destinatario
       {
           get { return _destinatario; }
           set { _destinatario = value; }
       }

       public int Solicitante
       {
           get { return _solicitante; }
           set { _solicitante = value; }
       }

       public int CriadoPor
       {
           get { return _criadoPor; }
           set { _criadoPor = value; }
       }

       public int TipoDocumento
       {
           get { return _tipoDocumento; }
           set { _tipoDocumento = value; }
       }

       public int StatusProtocolo
       {
           get { return _status; }
           set { _status = value; }
       }

       
       #endregion


       
       #region "Construtor"

       public Protocolo()
       {

       }

       #endregion


       #region "Metodos"

       public void Adicionar()
       {

           try
           {
               tb_protocolo objProtocolo = new tb_protocolo();
               objProtocolo.NumeroProtocolo = NumeroProtocolo;
               objProtocolo.Assunto = Assunto;
               objProtocolo.CriadoPor = CriadoPor;
               objProtocolo.Data = Data;
               objProtocolo.Descricao = Descricao;
               objProtocolo.Destinatario = Destinatario;
               objProtocolo.IDSTATUS = StatusProtocolo;
               objProtocolo.IDTIPODOCUMENTO = TipoDocumento;
               objProtocolo.NumeroEtiqueta = NumeroEtiqueta;
               objProtocolo.Observacao = Observacao;
               objProtocolo.Solicitante = Solicitante;


               protocoloEntities banco = new protocoloEntities();
               banco.tb_protocolo.Add(objProtocolo);
               banco.SaveChanges();

           }
           catch (Exception)
           {               
               throw;
           }
              
   
       }

       public void Atualizar()
       {

           tb_protocolo objProtocolo = new tb_protocolo();
           objProtocolo.IDPROTOCOLO = IdProtocolo;
          // objProtocolo.NumeroProtocolo = NumeroProtocolo;
           objProtocolo.Assunto = Assunto;
           objProtocolo.CriadoPor = CriadoPor;
           objProtocolo.Data = Data;
           objProtocolo.Descricao = Descricao;
           objProtocolo.Destinatario = Destinatario;
           objProtocolo.IDSTATUS = StatusProtocolo;
           objProtocolo.IDTIPODOCUMENTO = TipoDocumento;
           objProtocolo.NumeroEtiqueta = NumeroEtiqueta;
           objProtocolo.Observacao = Observacao;
           objProtocolo.Solicitante = Solicitante;

        
       }

       #endregion




   }
}
