create database universidade;
use universidade;
create table pessoas(
cpf_pessoa varchar (11) primary key,
nome varchar (255) not null,
sexo enum('M','F')
);
create table professores(
cpf_pessoa varchar (11) primary key,
matricula varchar (4) not null unique,
salario bigint
);
create table aluno(
cpf_pessoa varchar (11) primary key,
ra_aluno varchar (10) not null unique
);
create table periodo(
id bigint primary key,
data_inicial date not null,
data_final date not null,
descricao varchar(15)
);
create table disciplina(
codigo_disciplina varchar(10) primary key,
codigo_requisito varchar (10) not null unique,
nome varchar (15) not null unique,
ch_total bigint not null
);
create table pre_requisito(
codigo_requisito varchar (10) primary key,
codido_disciplina varchar (10) primary key,
foreign key (codigo_requisito) references disciplina,
foreign key (codigo_disciplina) references disciplina 
);
create table turma(
id_turma bigint primary key auto_increment,
turno enum('V','M','N')
);
create table aluno_turma(
ra_aluno varchar (10) primary key,
id_turma bigint primary key,
foreign key (ra_aluno) references aluno,
foreign key (id_turma) references turma
);
create table predio(
id bigint primary key auto_increment,
nome varchar(10) not null unique
);
create table sala(
numero bigint primary key,
tipo_sala enum('P','T')
);
create table aula(
id_aula bigint primary key,
conteudo varchar(255) not null unique,
data_aula date not null
);
create table falta(
id bigint primary key auto_increment,
faltou boolean not null,
ra_aluno varchar(10) not null unique,
id_aula varchar(10) not null unique 
);






