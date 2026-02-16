-- Criação da base de dados

Create database Mortes;

-- Manutenção da tabela

select * from Dados_Mortes;

alter table dados rename Dados_Mortes;

alter table Dados_Mortes rename column Year to Ano, rename column Country to País, rename column Gender to Gênero, rename column 
Age_Group to Agrupamento_por_idade, rename column Cause_of_Death to Causa_da_Morte, rename column Number_of_Deaths to 
Número_de_Mortes, rename column Mortality_Rate_per_1000 to Taxa_de_Mortalidade_por_1000;

-- Manutenção dos dados
-- Coluna País

select distinct(País) from dados_mortes;

update dados_mortes set País = 'Brasil' where País = 'Brazil';
update dados_mortes set País = 'Alemanha' where País = 'Germany';
update dados_mortes set País = 'Índia' where País = 'India';
update dados_mortes set País = 'Japão' where País = 'Japan';
update dados_mortes set País = 'Nigéria' where País = 'Nigeria';
update dados_mortes set País = 'Paquistão' where País = 'Pakistan';
update dados_mortes set País = 'Rússia' where País = 'Russia';
update dados_mortes set País = 'Reino Unido' where País = 'UK';
update dados_mortes set País = 'Estados Unidos' where País = 'USA';

select * from Dados_Mortes;

-- Coluna Gênero

update dados_mortes set Gênero = 'Masculino' where Gênero = 'Male';
update dados_mortes set Gênero = 'Feminino' where Gênero = 'Female';

select * from Dados_Mortes;

-- Coluna Causa_da_Morte

select distinct(Causa_da_Morte) from dados_mortes;

update dados_mortes set Causa_da_Morte = 'Câncer' where Causa_da_Morte = 'Cancer';
update dados_mortes set Causa_da_Morte = 'Doenças Cardiovasculares' where Causa_da_Morte = 'Cardiovascular Disease';
update dados_mortes set Causa_da_Morte = 'Homicídio' where Causa_da_Morte = 'Homicide';
update dados_mortes set Causa_da_Morte = 'Doenças Infecciosas' where Causa_da_Morte = 'Infectious Diseases';
update dados_mortes set Causa_da_Morte = 'Doença Renal' where Causa_da_Morte = 'Kidney Disease';
update dados_mortes set Causa_da_Morte = 'Desastres Naturais' where Causa_da_Morte = 'Natural Disasters';
update dados_mortes set Causa_da_Morte = 'Doenças Respiratórias' where Causa_da_Morte = 'Respiratory Disease';
update dados_mortes set Causa_da_Morte = 'Acidentes de Trânsito' where Causa_da_Morte = 'Road Accidents';
update dados_mortes set Causa_da_Morte = 'AVC' where Causa_da_Morte = 'Stroke';
update dados_mortes set Causa_da_Morte = 'Suicídio' where Causa_da_Morte = 'Suicide';

select * from Dados_Mortes;