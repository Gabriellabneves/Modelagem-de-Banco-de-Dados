CREATE DATABASE db_clube_jacarandá; 

USE db_clube_jacarandá;

CREATE TABLE tb_socio (
codS INTEGER AUTO_INCREMENT NOT NULL,
nomeS VARCHAR(50) NOT NULL,
sexoS ENUM('F','M','O'),
data_nascS DATE,
PRIMARY KEY(codS)
);

CREATE TABLE tb_dependente (
idDEP INTEGER NOT NULL,
nomeDEP VARCHAR(50) NOT NULL,
data_nascDEP DATE,
sexoDEP ENUM('F','M','O'),
codS INTEGER, 
PRIMARY KEY (idDEP),
FOREIGN KEY (codS) references tb_socio(codS)
);

/*comentario qualquer*/ 

ALTER TABLE tb_socio CHANGE nomeS nomeSocio VARCHAR(100) NOT NULL;
ALTER TABLE tb_socio ADD cpfSocio VARCHAR(14) NOT NULL;
ALTER TABLE tb_socio ADD fone VARCHAR(14);
ALTER TABLE tb_socio ADD foneSocio VARCHAR(14);

DROP TABLE tb_dependente;

CREATE TABLE tb_dependente (
ID INTEGER NOT NULL,
nomeDEP VARCHAR(50) NOT NULL,
codS INTEGER
);

ALTER TABLE tb_dependente ADD primary key (ID);
ALTER TABLE tb_dependente ADD FOREIGN KEY (codS) references tb_socio(codS);

ALTER TABLE tb_socio DROP fone
/*Consegui caraioiooioi*/



