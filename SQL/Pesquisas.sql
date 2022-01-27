/* Algumas pesquisas no banco de dados não funcionam */

USE Clinica;

-- Pesquisar exames 
select *  from Exames;
-- Quantidade exames
select count(*) AS Exames  from Exames ;
-- Exames e seu respctivos Instrumetos
select Exames.Nome_exames, Instrumentos.Nome, Instrumentos.Quantidade, Instrumentos.Cod_Fornecedor 
from Exames, Instrumentos
where Exames.Cod_Exames = Instrumentos.Cod_Exames;
-- Clientes e seus respectivos endereços
select Clientes.Nome, Endereco.* from Clientes, Endereco 
where Clientes.Cod_Endereco = Endereco.Cod_Endereco;
-- FUncionarios e seus resptivos endereços
select Funcionarios.Nome, Funcionarios.Cod_Endereco, Endereco.* 
from Funcionarios, Endereco 
where Funcionarios.Cod_Endereco = Endereco.Cod_Endereco;
-- Profissionais de enfermagem
select Funcionarios.Nome, Area_de_trabalho.Nome_Setor 
from Funcionarios, Area_de_trabalho 
where  Funcionarios.Cod_Area = Area_de_trabalho.Cod_Area 
and Area_de_trabalho.Cod_Area = 8;
-- Usuario e quem vai atende-lo
select Usuario.Login, Enfermeiros.Nivel, Area_de_trabalho.Nome_Setor 
from Usuario, Consulta, Enfermeiros, Area_de_trabalho 
where Usuario.Cod_Usuario = Consulta.Cod_Usuario
and Consulta.Cip_enfermeiros = Enfermeiros.Cip_enfermeiros 
and Enfermeiros.Cod_Area = Area_de_trabalho.Cod_Area;

-- Usuario e quais exames ele irá fazer
select Usuario.Login, Clientes.Nome, Pagamento.Nome ,Pagamento_has_Exames.Valor, Exames.Nome_exames 
from Consulta, Usuario, Clientes ,Pagamento_has_Exames,Pagamento, Exames 
where Consulta.Cod_Usuario = Usuario.Cod_Usuario 
and Usuario.Cod_Clientes = Clientes.Cod_Clientes 
and Consulta.Cod_PagamentoExames = Pagamento_has_Exames.Cod_PagamentoExames 
and Pagamento_has_Exames.Cod_Pagamento = Pagamento.Cod_Pagamento 
and Pagamento_has_Exames.Cod_exames = Exames.Cod_exames;
-- Pesquisar consultas por tipo de exame 
select Consulta.Horario_Consulta, Clientes.Nome, Pagamento.Nome ,Pagamento_has_Exames.Valor, Exames.Nome_exames 
from Consulta, Usuario, Clientes ,Pagamento_has_Exames,Pagamento, Exames 
where Consulta.Cod_Usuario = Usuario.Cod_Usuario 
and Usuario.Cod_Clientes = Clientes.Cod_Clientes 
and Consulta.Cod_PagamentoExames = Pagamento_has_Exames.Cod_PagamentoExames 
and Pagamento_has_Exames.Cod_Pagamento = Pagamento.Cod_Pagamento 
and Pagamento_has_Exames.Cod_exames = Exames.Cod_exames 
and Exames.Nome_exames = 'Ureia';

select count(*)
from Consulta, Usuario, Clientes ,Pagamento_has_Exames,Pagamento, Exames 
where Consulta.Cod_Usuario = Usuario.Cod_Usuario 
and Usuario.Cod_Clientes = Clientes.Cod_Clientes 
and Consulta.Cod_PagamentoExames = Pagamento_has_Exames.Cod_PagamentoExames 
and Pagamento_has_Exames.Cod_Pagamento = Pagamento.Cod_Pagamento 
and Pagamento_has_Exames.Cod_exames = Exames.Cod_exames 
and Exames.Nome_exames = 'Ureia';

select Consulta.Horario_Consulta, Clientes.Nome, Pagamento.Nome ,Pagamento_has_Exames.Valor, Exames.Nome_exames 
from Consulta, Usuario, Clientes ,Pagamento_has_Exames,Pagamento, Exames 
where Consulta.Cod_Usuario = Usuario.Cod_Usuario 
and Usuario.Cod_Clientes = Clientes.Cod_Clientes 
and Consulta.Cod_PagamentoExames = Pagamento_has_Exames.Cod_PagamentoExames 
and Pagamento_has_Exames.Cod_Pagamento = Pagamento.Cod_Pagamento 
and Pagamento_has_Exames.Cod_exames = Exames.Cod_exames 
and Consulta.Horario_Consulta > 20220123;

select * from Pagamento_has_Exames;

select * from Consulta;

-- Resuldados
select Resultado.Cod_Doc, Resultado.Cod_Resultado, Consulta.Cod_Consulta,Exames.Nome_exames
from Resultado, Consulta, Pagamento_has_Exames, Exames 
where Resultado.Cod_Consulta = Consulta.Cod_Consulta 
and Consulta.Cod_PagamentoExames = Pagamento_has_Exames.Cod_PagamentoExames 
and Pagamento_has_Exames.Cod_Exames = Exames.Cod_exames;

Insert into Resultado(Cod_Consulta, Cod_Doc)
values(1,3);

-- Doc
select Resultado.Cod_Resultado,Doc.Cod_Doc , Consulta.Cod_Consulta,Exames.Nome_exames, Doc.Nome_substancia_encontrada, Doc.Quantidade_subs_encontrada, Doc.Quantidade_recomendada
from Resultado, Consulta, Pagamento_has_Exames, Exames, Doc 
where Resultado.Cod_Consulta = Consulta.Cod_Consulta 
and Consulta.Cod_PagamentoExames = Pagamento_has_Exames.Cod_PagamentoExames 
and Pagamento_has_Exames.Cod_Exames = Exames.Cod_exames and Resultado.Cod_Doc = Doc.Cod_Doc and Consulta.Cod_Consulta = 1;

-- Soma quantidade instrumentos 
select SUM(Instrumentos.Quantidade) from Instrumentos where Instrumentos.Cod_Fornecedor = 3;
select SUM(Instrumentos.Quantidade) from Instrumentos where Instrumentos.Cod_exames = 1;
select SUM(Instrumentos.Quantidade) from Instrumentos where Instrumentos.Nome = 'Luvas';




select count(*) from Consultas, Pagamento_has_Exames 
where Consultas.Cod_pagamento = Pagamento_has_Exames.Cod_pagamento 
and Consultas.Cod_exame = Pagamento_has_Exames.Cod_exame 
and Pagamento_has_Exames.valor < 100;

