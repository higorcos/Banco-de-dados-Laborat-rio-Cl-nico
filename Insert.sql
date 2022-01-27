use Clinica;
insert into Bairros (Nome,Cidade)
values ('Turu', 'São luis'),
('João Paulo', 'São luis'),
('Cohama', 'São luis'),
('Cohatrac', 'São luis'),
('São Cristóvão', 'São luis'),
('Itaquera', 'São Paulo'),
('Butantã', 'São Paulo'),
('Morumbi', 'São Paulo'),
('Lapa', 'São Paulo'),
('Barra Funda', 'São Paulo'),
('Pinheiros', 'São Paulo'),
('Grajaú', 'São Paulo'),
('Filipinho', 'São luis');



insert into Enderecos(Nome,Cep_rua,Tipo_endereco,Complemento,Cod_Bairro)
values ('Rua 8','65066-00','Casa','N°2',2),
('Rua 7','65066-000','Casa','N°10',1),
('Rua 6','65066-000','Casa','N°10',2),
('Rua 5','65066-000','Casa','N°10',3),
('Rua 4','65066-000','Casa','N°10',4),
('Rua 3','65066-000','Casa','N°10',4),
('Rua 2','65066-000','Casa','N°10',4),
('Rua 1','65066-000','Casa','N°10',5),
('Rua 9','65066-000','Casa','N°10',5),
('Rua 10','65066-000','Casa','N°10',5),
('Rua 18','65066-918','Casa','N°10',5),
('Rua 17','65066-912','Casa','N°10',1),
('Rua 16','65066-283','Casa','N°10',1),
('Rua 15','65066-234','Casa','N°10',2),
('Rua 14','65066-234','Casa','N°10',3),
('Rua 13','65066-124','Casa','N°10',4),
('Rua 12','65066-482','Casa','N°10',6),
('Rua 29','65066-873','Casa','N°10',6),
('Rua 28','65066-087','Casa','N°10',6),
('Rua 27','01153-982','Empresa','N°105',6),
('Rua 26','01153-241','Empresa','N°15',7),
('Rua 25','01153-279','Empresa','N°95',9),
('Rua 24','01153-673','Empresa','N°75',9),
('Rua 24','01153-349','Empresa','N°338',10),
('Rua 23','01153-117','Empresa','N°25',11),
('Rua 22','01153-092','Empresa','N°321',12),
('Rua 1','12312-99','Empresa','N°123',1);

    
    
insert into Planos (Nome,CNPJ)
values ('Unimed','17748639104871-42'),
 ('SulAmérica','39148639104871-81'),
 ('Bradesco','56148456892232-13'),
 ('Intermédica','34473874865297-98'),
 ('Golden Cross','65293847562984-11'),
 ('Hapvida','79437497124759-36');



insert into Cartao (Nome,Numero_do_cartão,Cod_segurança)
values (' Maria Ferreira','56148456892232','139'),
('Francisco Silva','34473874865297','931'),
('Antônia Santos','79437497124759','894');



insert into Pagamentos(Nome,Outra_Forma,Id_Cartao, Cod_Plano)
values 
('Pix',null ,null , null),
('Cartão', null, 1, null ),
('Cartão','Parte em Pix', 2, null ),
('Plano', null, null, 6),
('Plano','Parte em Pix', null, 2),
('Em Dinheiro', null, null, null ),
('Pix', null, null, null);

insert into Clientes (Nome, Cpf, Idade, Telefone,Cod_pagamento,Cod_endereco)
values ('Sandra','236484-30','60','98237971',1,1),
('Luis','237971-23','23','92456208',2,2),
('Fernando','232208-24','33','98257212',3,3),
('Fabio','239142-25','40','98223174',4,4),
('Roberto','231790-26','90','91523064',5,5),
('Márcio','230695-27','22','98723193',6,6),
('Edson','231906-28','22','91123782',7,7);


insert into Usuarios (login, senha, Cod_cliente)
values('Sandra_60','1234',1),
('Luis_23','1234',2),
('Fernando_33','1234',3),
('Fabio_40','1234',4),
('Roberto_90','1234',5),
('Márcio_22','1234',6),
('Edson_22','1234',7);


insert into Exames (Nome_exame, Tipo_Material)
values ('Hemograma', 'Sangue'),
 ('Ureia', 'Urina'),
 ('Parasitológico', 'Fezes'),
 ('Glicemia', 'Sangue'),
 ('Triglicerídeos ', 'Sangue'),
 ('Colesterol', 'Sangue');

insert into Pagamento_has_Exames(Cod_pagamento,Cod_exame, valor)
values (1,1,40),
(2,1,60),
(3,1,45),
(4,1,42),
(5,1,40),
(6,1,40),
(7,1,40),
(1,2,100),
(2,2,120),
(3,2,105),
(4,2,102),
(5,2,100),
(6,2,100),
(7,2,100),
(1,3,80),
(2,3,100),
(3,3,85),
(4,3,82),
(5,3,80),
(6,3,80),
(7,3,80),
(1,4,30),
(2,4,50),
(3,4,35),
(4,4,32),
(5,4,30),
(6,4,30),
(7,4,30),
(1,5,60),
(2,5,80),
(3,5,65),
(4,5,62),
(5,5,60),
(6,5,60),
(7,5,60),
(1,6,150),
(2,6,170),
(3,6,155),
(4,6,152),
(5,6,150),
(6,6,150),
(7,6,150);

insert into Area_de_trabalho (Nome_setor, Chefe_setor)
values ('Bioquímica', 'Thiago Sisaque' ),
('Endocrinologia', 'Maria Eduarda'),
('Uroanálise', 'Junior Mesquita'),
('Hematologia','João Victor'),
('Limpeza',  'Lucas Henrique'),
('Segurança', 'Luciana Sousa'),
('Coleta e triagem', 'Ananda Olinto'),
('Enfermagem', 'Thaynara Silva');


insert into  Enfermeiros (Nivel, Tempo_carreira, Cod_area)
values ('Técnico', '5', 8),
('Estágio', '0.3', 8),
('Estágio', '15', 8),
('Técnico', '2', 8),
('Superior', '15', 8),
('Superior', '10', 8);

insert into Consultas (Cod_pagamento , Cod_exame,Cod_usuario,Cip_enfermeiro ,Horario_consulta)
values 
(1,1,1,1,20220102182030),
(2,1,2,1,20220102182030),
(3,1,3,1,20220102182030),
(4,1,4,1,20220102182030),
(5,1,5,1,20220102182030),
(6,1,6,1,20220102182030),
(7,1,7,1,20220102182030),
(1,2,1,1,20220102182030),
(2,2,2,1,20220102182030),
(3,2,3,1,20220102182030),
(4,2,4,1,20220102182012),
(5,2,5,1,20220102182012),
(6,2,6,1,20220102182012),
(7,2,7,1,20220102182012),
(1,3,1,1,20220102182012),
(2,3,2,1,20220102182012),
(3,3,3,1,20220102182012),
(4,3,4,1,20220102182012),
(5,3,5,1,20220102182012),
(6,3,6,1,20220102182012),
(7,3,7,1,20220102182012),
(1,4,1,1,20220102182012),
(2,4,2,1,20220102182012),
(3,4,3,1,20220102182012),
(4,4,4,1,20220102182012),
(5,4,5,1,20220102182012),
(6,4,6,2,20220102182026),
(7,4,7,2,20220102182026),
(1,5,1,2,20220102182026),
(2,5,2,2,20220102182026),
(3,5,3,2,20220102182026),
(4,5,4,2,20220102182026),
(5,5,5,2,20220102182026),
(6,5,6,2,20220102182026),
(7,5,7,2,20220102182026),
(1,6,1,2,20220102182026),
(2,6,2,2,20220102182026),
(3,6,3,2,20220102182026),
(4,6,4,2,20220102182026),
(5,6,5,2,20220102182026),
(6,6,6,2,20220102182026),
(7,6,7,2,20220102182026);


insert into Funcionarios (Nome,Telefone,Cod_area,Cod_endereco)
values ('Maria Clara', '98 98480-1584', 1, 8),
('Ana Luiza', '98 97480-1684', 2, 9),
('Jefesson Silva', '11 98480-1584', 3, 10),
('Jacksson Rodrigues', '98 99480-1514', 4, 11),
('Igor Ferreira', '98 96480-1189',  5, 12),
('Isabela Clara', '51 92480-1424',  6, 13),
('Lucas Oliveira', '88 95480-1244', 7, 14),
('Roberta Carlos', '98 97480-1489',  6, 15),
('Thiago Silva', '98 92480-1564',  4, 16),
('Edilene Monteiro', '99 93480-1284', 3, 17),
('Thiago Ferreira', '98 99830-1098', 8, 18),
('Luccas Silva', '98 9240-1861',  8, 19),
('Rodrigo Santos', '98 92300-1265',  8, 20),
('Mayara Pereira', '98 93080-1084',  8, 21),
('Poliana Silva', '98 90980-1344',  8, 22),
('Dainae Silva', '98 92340-1663',  8, 23);





insert into Folha_de_pagamentos (Data_contratacao,Data_renovacao,Cod_funcionario, Salario)
values
('20120201', '20220201', 2,2000),
('20120301', '20220301', 3,2000),
('20120401', '20220401', 4,2000),
('20130501', '20220501', 5,2000),
('20150201', '20220201', 6,2000),
('20150301', '20220301', 7,2000),
('20170201', '20220201', 6,2000),
('20170401', '20220401', 4,2000),
('20190501', '20220501', 3,2000),
('20190201', '20220201', 8,1500),
('20170401', '20220401', 8,1600),
('20160301', '20220301', 8,1300),
('20160201', '20220201', 8,1100),
('20180301', '20220301', 8,1380),
('20180201', '20220201', 8,2000);


insert into Fornecedores (Nome,CNPJ,Telefone,Valor,Cod_endereco)
values('MLabor Produtos para Laboratório', '58.748.684/0001-69', '98 2639-0038', '1000', 24),
('Hexis Científica', '12.159.967/0001-78', '98 3935-3994', '1250', 25),
('Vitrocell', '94.148.489/0001-19', '98 3212-0804', '1500', 26),
('FC Oliveira', '56.987.654/0001-35', '98 3201-0000', '500', 27);


insert into Instrumentos (Nome,Tipo,Quantidade,Tamanho,Cod_exame,Cod_fornecedor)
values('Seringa','Avançado','1','P',5,1),
('Luvas','simples','2','M',5,4),
('Álcool','simples','1','P',5,2),
('Bandeja','simples','1','P',5,4),
('Gaze seca','simples','1','P',5,4),
('Seringa','Avançado','1','P',1,1),
('Scalp','Avançado','1','P',1,2),
('Tubo','Avançado','1','P',1,3),
('Luvas','simples','2','M',1,4),
('Garrote','simples','1','P',1,1),
('Álcool','simples','1','P',1,2),
('Bandeja','simples','1','P',1,4),
('Gaze seca','simples','1','P',1,4),
('Seringa','Avançado','1','P',4,1),
('Tubo','Avançado','1','P',4,3),
('Luvas','simples','2','M',4,4),
('Garrote','simples','1','P',4,1),
('Álcool','simples','1','P',4,2),
('Bandeja','simples','1','P',4,4),
('Gaze seca','simples','1','P',4,4),
('Seringa','Avançado','1','P',6,1),
('Luvas','simples','2','M',6,4),
('Álcool','simples','1','P',6,2),
('Bandeja','simples','1','P',6,4),
('Gaze seca','simples','1','P',6,4),
('Coletor Urina','simples','1','P',2,2),
('Coletor Feses','simples','1','P',3,2);




insert into Doc(Nome_substancia_encontrada, Quantidade_subs_encontrada, Quantidade_recomendada)
values ('Hemácias','4,48','4 a 5,5'),
('Hematócitos','40,5','37,0 a 47,0'),
('Hemaglobinas','13,4','12,0 a 16,0'),
('Leucócitos','4.150','4500 a 10.000'),
('ph','5,0','5,0 a 80'),
('Densidade','1.020','1.010 a 1.030'),
('Calprotectina','0','0 = nível baixo'),
('Glicemia em jejum','10','1a10'),
('Hemácias','4,48','4 a 5,5'),
('Hematócitos','40,5','37,0 a 47,0'),
('Hemaglobinas','13,4','12,0 a 16,0'),
('Leucócitos','4.150','4500 a 10.000'),
('ph','5,0','5,0 a 80'),
('Densidade','1.020','1.010 a 1.030'),
('Calprotectina','0','0 = nível baixo'),
('Glicemia em jejum','2','1a10'),
('Hemácias','4,48','4 a 5,5'),
('Hematócitos','40,5','37,0 a 47,0'),
('Hemaglobinas','13,4','12,0 a 16,0'),
('Leucócitos','4.150','4500 a 10.000'),
('ph','5,0','5,0 a 80');


Insert into Resultados(Cod_consulta, Cod_doc)
values(1,3),
(1,14),
(2,4),
(3,8),
(4,6),
(5,7),
(6,17),
(7,10),
(8,12),
(9,1); 