CREATE TABLE [Cliente] (
	idCliente integer NOT NULL,
	nomeCliente varchar(50) NOT NULL,
	cep varchar(8) NOT NULL,
	cpf varchar(11) NOT NULL,
	RG varchar(9) NOT NULL,
	celular varchar(11) NOT NULL,
	senha varchar(6) NOT NULL,
	email varchar(50) NOT NULL,
	genero varchar(17) NOT NULL,
	renda decimal(10,2) NOT NULL,
	nascimento datetime NOT NULL,
	cidade varchar(15) NOT NULL,
	estado varchar(15) NOT NULL,
	logradouro varchar(50) NOT NULL,
  CONSTRAINT PK_CLIENTE PRIMARY KEY (idCliente),
  CONSTRAINT CK_GENERO CHECK(genero in ('FEMI', 'MASC', 'OUTROS'))    
) 
  
GO
CREATE TABLE Conta (
	idConta int identity NOT NULL,
	idCliente integer NOT NULL,
	saldo decimal(10,2) NOT NULL,
	limite decimal(10,2) NOT NULL,
	tipoConta varchar(30) NOT NULL,
	aberturaConta datetime NOT NULL,
	statusconta varchar(3) NOT NULL,
  CONSTRAINT PK_CONTA PRIMARY KEY (idConta),
  CONSTRAINT FK_CONTA FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente),
  CONSTRAINT UK_ABERTURA_CONTA UNIQUE (aberturaConta),
  CONSTRAINT CK_STATUS_CONTA CHECK (statusconta in ('Ativa', 'Inativa', 'Bloqueada'))
  )
GO
CREATE TABLE Transação (
	idTransação integer NOT NULL,
	idConta integer NOT NULL,
	dataHora datetime NOT NULL,
	idTipoTransação integer NOT NULL,
	valor decimal(10,2) NOT NULL,
  CONSTRAINT PK_TRANSAÇÃO PRIMARY KEY (idTransação),
  CONSTRAINT FK_CONTA FOREIGN KEY (idConta) REFERENCES CONTA (idConta),
  CONSTRAINT Fk_TIPO_TRANSAÇAO FOREIGN KEY (idTipoTransação) REFERENCES TIPO_TRANSAÇAO (idTipoTransação),
)

GO
CREATE TABLE TipoTransacao (
  idTipoTransacao int identity,
  nomeTransacao varchar(50) NOT NULL UNIQUE,
  constraint pk_TipoTransação primary key (idTipoTransacao),
  constraint uk_Nome_Transacao unique (nomeTransacao)
)

GO
CREATE TABLE Agendamento (
    idAgendamento int identity,
    idConta integer NOT NULL,
    idContaDestino integer NOT NULL,
    dataAgendamento datetime NOT NULL,
    cancelarAgendamento varchar(8) NOT NULL,
    valor decimal(10,2) NOT NULL,
  constraint pk_Agendamento primary key (idAgendamento),
constraint fk_Conta_Agendamento foreign key (idConta) references Conta (idConta),
constraint fk_Conta_Destino_Agendamento foreign key (idContaDestino) references Conta (idConta),
)
GO
oi
creat table fornecedor
