create database db_control_machine;

use db_control_machine;

create table cadastro(
    idCadastro int primary key auto_increment,
    nomeResp varchar(40),
    unidade varchar(45),
    CNPJ char(14)
);

create table maquina(
    idModelo int primary key auto_increment,
    nome varchar(45),
    dtFab date,
    dtCompra date
);

create table temperatura(
    idHist int primary key auto_increment,
    dtTemp datetime default current_timestamp,
    temp double constraint chkTemp check(temp <= 20)
);

insert into cadastro (nomeResp, unidade, CNPJ) values
('Erik', 'MRITech', '01234567891012'),
('Caliu', 'MRITech', '01234567891012');

insert into maquina (nome, dtFab, dtCompra) values
('Máquina 1', '1990-12-11', '1995-06-15'),
('Máquina 2', '2005-12-13', '2010-08-31');

insert into temperatura (temp) values
(20.0),
(15.0);

select * from temperatura;
select * from maquina;
select * from cadastro;