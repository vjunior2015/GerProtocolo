﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class protocoloEntities : DbContext
    {
        public protocoloEntities()
            : base("name=protocoloEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<tb_cidade> tb_cidade { get; set; }
        public DbSet<tb_departamento> tb_departamento { get; set; }
        public DbSet<tb_escolaridade> tb_escolaridade { get; set; }
        public DbSet<tb_estado> tb_estado { get; set; }
        public DbSet<tb_protocolo> tb_protocolo { get; set; }
        public DbSet<tb_protocolo_anexo> tb_protocolo_anexo { get; set; }
        public DbSet<tb_protocolo_historico> tb_protocolo_historico { get; set; }
        public DbSet<tb_protocolo_status> tb_protocolo_status { get; set; }
        public DbSet<tb_tipodocumento> tb_tipodocumento { get; set; }
        public DbSet<tb_usuario> tb_usuario { get; set; }
        public DbSet<tb_usuario_nivel> tb_usuario_nivel { get; set; }
        public DbSet<tb_usuario_status> tb_usuario_status { get; set; }
    }
}
