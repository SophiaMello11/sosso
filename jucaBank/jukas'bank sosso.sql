CREATE TABLE Cliente (
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
  CONSTRAINT CLIENTE PRIMARY KEY CLUSTERED (idCliente)
  )

CREATE TABLE Conta (
	idConta integer NOT NULL,
	idCliente integer NOT NULL,
	saldo decimal(10,2) NOT NULL,
	limite decimal(10,2) NOT NULL,
	tipoConta varchar(30) NOT NULL,
	aberturaConta datetime NOT NULL,
	statusconta varchar(3) NOT NULL,
  CONSTRAINT CONTA PRIMARY KEY CLUSTERED (idConta)
  )
  
  
CREATE TABLE Transação (
	idTransação integer NOT NULL,
	idConta integer NOT NULL,
	dataHora datetime NOT NULL,
	idTipoTransação integer NOT NULL,
	valor decimal(10,2) NOT NULL,
  CONSTRAINT TRANSAÇÃO PRIMARY KEY CLUSTERED (idTransação)
 
)
CREATE TABLE TipoTransação (
	idTipoTransação integer NOT NULL,
	nomeTransação varchar(50) NOT NULL,
  CONSTRAINT TIPOTRANSAÇÃO PRIMARY KEY CLUSTERED (idTipoTransação)
  
)
CREATE TABLE Agendamento (
	idAgendamento integer NOT NULL,
	dataAgendamento datetime NOT NULL,
	idConta integer NOT NULL,
	cancelarAgendamento varchar(8) NOT NULL,
	valor decimal(10,2) NOT NULL,
  CONSTRAINT AGENDAMENTO PRIMARY KEY CLUSTERED (idAgendamento)
)

ALTER TABLE [Conta] WITH CHECK ADD CONSTRAINT [Conta_fk0] FOREIGN KEY ([idCliente]) REFERENCES [Cliente]([idCliente])
ON UPDATE CASCADE
GO
ALTER TABLE [Conta] CHECK CONSTRAINT [Conta_fk0]
GO

ALTER TABLE [Transação] WITH CHECK ADD CONSTRAINT [Transação_fk0] FOREIGN KEY ([idConta]) REFERENCES [Conta]([idConta])
ON UPDATE CASCADE
GO
ALTER TABLE [Transação] CHECK CONSTRAINT [Transação_fk0]
GO
ALTER TABLE [Transação] WITH CHECK ADD CONSTRAINT [Transação_fk1] FOREIGN KEY ([idTipoTransação]) REFERENCES [TipoTransação]([idTipoTransação])
ON UPDATE CASCADE
GO
ALTER TABLE [Transação] CHECK CONSTRAINT [Transação_fk1]
GO


ALTER TABLE [Agendamento] WITH CHECK ADD CONSTRAINT [Agendamento_fk0] FOREIGN KEY ([idConta]) REFERENCES [Conta]([idConta])
ON UPDATE CASCADE
GO
ALTER TABLE [Agendamento] CHECK CONSTRAINT [Agendamento_fk0]
GO

