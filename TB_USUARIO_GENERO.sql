CREATE TABLE `tb_usuario_genero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  `Genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO `db_protocolo`.`tb_usuario_genero`
(`Genero`)
VALUES
("Pessoa Fisica");


INSERT INTO `db_protocolo`.`tb_usuario_genero`
(`Genero`)
VALUES
("Pessoa Juridica");

ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD COLUMN `IDGENERO` INT NULL AFTER `OUTRALOCALIDADE`;