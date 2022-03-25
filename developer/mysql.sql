create database correntista;

create table correntistas(
ag int not null,
conta int not null,
nome varchar(50) not null,
email varchar(80) not null,
telefone char(11) not null,
saldo decimal(8,2) not null,
primary key (ag,conta));

create table fluxo_caixa(
ag int not null,
conta int not null,
fluxo int not null,
entrada decimal(8,2) not null,
saida decimal(8,2) not null,
primary key(ag,conta,fluxo));

describe correntistas
describe fluxo_caixa

insert into correntistas
(ag,conta,nome,email,telefone,saldo)
values
  (2765,62722,"Arden Kirk","semper.auctor.mauris@yahoo.couk","64681275","47461"),
  (4085,3818,"Hiroko Carr","eu@protonmail.com","46927554","564734"),
  (3865,30482,"Randall Dunlap","nullam@hotmail.edu","56373471","2209"),
  (6545,31505,"Bryar Heath","cursus@hotmail.com","51762128","86974"),
  (4524,51969,"Tallulah Mcintosh","eget@yahoo.com","86567479","220"),
  (6777,67500,"Gil Hatfield","sem.ut@google.couk","47653542","51863"),
  (7584,31324,"Hilary Guthrie","purus.maecenas.libero@yahoo.ca","33334622","78472"),
  (3778,44084,"Simon Henry","malesuada.augue.ut@aol.ca","33727942","3865"),
  (3726,61924,"Eve Buchanan","arcu@outlook.edu","34972825","2814"),
  (4143,47588,"Meghan Moon","rutrum.lorem.ac@hotmail.ca","18262142","7773");

select * from correntistas

insert into fluxo_caixa
(ag,conta,fluxo,entrada,saida)
value
(587,59568,05,200.00,03.00),
(588,55854,05,100.00,02.00),
(589,47964,05,400.00,01.00),
(590,97428,05,900.00,48.00),
(591,12548,05,800.00,40.00),
(592,84531,05,700.00,18.00),
(593,14856,05,800.00,19.00),
(594,18628,05,200.00,20.00),
(595,97854,05,100.00,17.00),
(596,56582,05,200.00,11.00);

select * from fluxo_caixa

select c.ag, c.conta, c.nome, f.entrada, f.saida
from correntistas as c, 
fluxo_caixa as f 
where (c.ag=f.ag) and (c.conta=f.conta);

select c.ag, c.conta, c.nome, f.entrada, f.saida
from correntistas as c
inner join fluxo_caixa as f 
on (c.ag=f.ag) and (c.conta=f.conta);	