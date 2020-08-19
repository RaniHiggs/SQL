
/* criando o banco de dados */
create database RH;

/* listando os bancos de dados gerenciados pelo MySQL */
show databases;

/* acessando o banco de dados criado para a atividade */
use RH;

/* criando a tabela SETOR no banco de dados RH */
create table SETOR (
cod_setor integer not null,
nome_setor varchar(40) not null,
localizacao varchar(30),
primary key(cod_setor)
);

/* criando a tabela FUNCIONARIO no banco de dados RH */
create table FUNCIONARIO (
cpf bigint not null,
nome varchar(40) not null,
setor_trabalha int,
data_nasc date,
data_inicio date,
primary key(cpf),
foreign key(setor_trabalha) references SETOR(cod_setor)
);

/* criando a tabela GERENTE_SETOR no banco de dados RH */
create table GERENTE_SETOR (
cod_setor int not null,
cod_funcionario bigint not null,
data_inicio date,
primary key(cod_setor,cod_funcionario),
foreign key(cod_setor) references SETOR(cod_setor),
foreign key(cod_funcionario) references FUNCIONARIO(cpf)
);

/* listando as tabelas no banco de dados RH*/
show tables;

/* verificando a estrutura (atritubos) de uma tabela */
describe SETOR;

describe FUNCIONARIO;

describe GERENTE_SETOR;

/* removendo a tabela GERENTE_SETOR do banco de dados RH */
drop table GERENTE_SETOR;

/* verificando que a tabela GERENTE_SETOR foi removida do banco de dados RH */
show tables;

describe GERENTE_SETOR;

/* criando novamente a tabela GERENTE_SETOR no banco de dados RH */

create table GERENTE_SETOR (
cod_setor int not null,
cod_funcionario bigint not null,
data_inicio date,
primary key(cod_setor,cod_funcionario),
foreign key(cod_setor) references SETOR(cod_setor),
foreign key(cod_funcionario) references FUNCIONARIO(cpf)
);

/* verificando que a tabela GERENTE_SETOR esta criada no banco de dados RH*/
show tables;

