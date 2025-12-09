create database bomvoyagedb;
use bomvoyagedb;

create table passageiros (
	cpf_rg int auto_increment primary key not null,
    nome varchar (120),
    dataNascimento date,
    email varchar(120),
    telefone char(13),
	genero char(2)
    );

create table passaportes ( 
	idPassaporte int auto_increment primary key not null,
    numeroPassaporte char(6),
    dataEmissao date,
    dataExpiracao date,
    paisEmissor char(1)
);

create table vistos (
	idVisto int auto_increment primary key not null,
    tipoVisto char(1),
    dataEmissao date,
    dataExpiracao date
);

create table voos (
	idVoo int auto_increment primary key not null,
    numeroVoo char(7),
    datahorapartida datetime,
    datahorachegada datetime,
    origem char(1),
    destino char(1)
);

create table aeroportos (
	codIATA int auto_increment primary key not null,
    nomeAeroporto varchar(120),
    endereco varchar(120)
);

create table aeronaves (
	numeroSerie int auto_increment primary key not null,
    modelo varchar(80),
    fabricante varchar(80),
    capacidadePassageiros int,
    anoFabricacao char(4)
);

create table assentos (
	numeroAssentos int
);

create table portoes (
	idPortao int auto_increment primary key not null,
    descricaoPortao varchar(80) 
);

create table checkin (
	idCheckin int auto_increment primary key not null,
    descricaoCheckin varchar(80)
);

create table funcionarios (
	cpf_rg int auto_increment primary key not null,
    nomeFuncionario varchar(120),
    cargo char(1),
    dataContratacao date,
    email varchar(120),
    telefone char(13),
    salario varchar(15)
);

create table passagens (
	idPassagem int auto_increment primary key not null,
    dataEmissao date,
    preco varchar(80),
    classe char(1)
);

create table compras (
	idCompra int auto_increment primary key not null,
    passagemIda char(1),
    passagemVolta char(1)
);

create table pagamentos (
	idPagamento int auto_increment primary key not null,
    valor varchar(80),
    datahorapag datetime,
    statuspag char(1)
);

create table vacinacoes (
	idVacinacao int auto_increment primary key not null,
    nomeVacina varchar(120),
    datadose date
);