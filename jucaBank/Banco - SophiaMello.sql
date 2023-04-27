

insert into Cliente values ('Donald', 'Santos', 'SP','11015080','M','donald@gmail.com','13991066000','50','09/06/1980 19:50',5000.00,'531190444','123456','48378427860'),
                           ('Margarida', 'São Vicente', 'SP','12915080','F','margarida@gmail.com','13940028922','84','04/07/1986 02:57',5500.00,'623335212','987654','32145698737'),
                           ('Patinhas', 'Santos', 'SP','11015305','M','patinhas@gmail.com','13991088601','94','10/12/1973 22:47',4000.00,'478523697','258963','15975384620'),
                           ('Huguinho', 'Cubatão', 'SP','87015080','M','huguinho@gmail.com','13974107095','48','25/10/1991 20:15',4500.00,'895743986','147258','75915342650'),
                           ('Luizinho', 'Praia Grande', 'SP','11200580','M','luizinho@gmail.com','13981236589','78','13/03/1980 14:22',3000.00,'125634789','110305','01452036991'),
                           ('Zezinho', 'São João Del Rei', 'MG','11011820','M','zezinho@gmail.com','32991066250','73','28/02/1980 06:38',3500.00,'159513578','159753','02598416750'),
                           ('Mickey', 'Rio de Janeiro', 'RJ','20135080','M','mickey@gmail.com','21991061985','81','15/05/1982 20:03',7500.00,'321478963','759153','87921354607'),
                           ('Minie', 'São Paulo', 'SP','11567880','F','minie@gmail.com','11991213848','82','18/11/1982 12:49',6000.00,'459873216','486219','17239848260')




insert into Conta (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (1,1000.00, 'Comum', '05/02/2023 14:00', 'Ativa');
                  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (2,450.50, 'Comum', '12/02/2023 19:15', 'Bloqueada');
				  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (3,650000.50, 'Comum', '05/09/2017 18:00', 'Ativa');
				  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (4,500.00, 'Comum', '25/10/2023 17:20', 'Ativa');
				  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (5,3500.00, 'Comum', '09/03/2023 17:00', 'Ativa');
				  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (6,700.25, 'Comum', '08/08/2023 16:00', 'Ativa');
				  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (7,9500.25, 'Comum', '03/06/2023 14:50', 'Bloqueada');
				  (idCliente, saldo, tipoConta, aberturaconta, statusconta) values (8,12500.50, 'Comum', '04/02/2023 15:30', 'Ativa');



insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (3, 100000.50, 'comum', '05/11/2020', 'Ativa ')
            Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (3, 500000.50, 'comum', '11/12/2019', 'Ativa ')




insert into TipoTransaçao values ('DEBITO')
insert into TipoTransaçao values ('SAQUE')
insert into TipoTransaçao values ('TRANSFERÊNCIA')


insert into Agendamento (idConta, idConta, dataAgendamento, valor) values (11, 3,'20/11/2020 09:20', 100000.00);



insert into Cliente values ('Minie', 'São Paulo', 'SP','11567880','F','minie@gmail.com','11991213848','82','18/11/1982 12:49',6000.00,'459873216','486219','17239848260');
update Cliente set cep = 'São Paulo', logradouro = 'rua flores', numero = '11' where idCliente=8;


insert into Cliente values ('Mickey', 'Rio de Janeiro', 'RJ','20135080','M','mickey@gmail.com','21991061985','81','15/05/1982 20:03',7500.00,'321478963','759153','87921354607');
update Cliente set celular = '21996584723' where idCliente=7;


insert into Transaçao values (7,7,2, '11/03/2023 15:15', 100,00);
insert into Transaçao values (4,4,2, '25/06/2023 18:35', 250,00);


insert into Transaçao values (8,8,2, '21/05/2023 19:20', 1100,00);
insert into Transaçao values (1,1,2, '30/09/2023 10:15', 450,00);


insert into Transaçao values (7,7,2, '14/07/2023 06:35', 350,00)
insert into Transaçao values (6,6,2, '03/10/2023 15:41', 50,00)

