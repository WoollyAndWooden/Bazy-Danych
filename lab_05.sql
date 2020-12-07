#rozbitek
#1)
create table kreatura
select * from wikingowie.kreatura;

create table zasob
select * from wikingowie.zasob;

create table ekwipunek
select * from wikingowie.ekwipunek;

#2)
select *
from zasob;

#3)
select *
from zasob
where rodzaj = 'jedzenie';

#4)
select 
	idZasobu, ilosc
from ekwipunek
where idKreatury in (1, 3, 5);

#Kokos?
#1)
select *
from kreatura
where 
	rodzaj != 'wiedzma'
	and
    udzwig >=50;

#2)
select *
from zasob
where waga between 2 and 5;

#3)
select *
from kreatura
where 
	nazwa like '%or%'
    and
    udzwig between 30 and 70;
    
#Hamak
#1)
select *
from zasob
where month(dataPozyskania) in(7, 8);

#2)
select *
from zasob
where rodzaj is not null
order by waga;

#3)
select *
from kreatura
order by dataUr
limit 5;

#Złota Rybka
#1)
select distinct rodzaj
from zasob;

#2)
select concat(nazwa,' - ',rodzaj) as kreatura
from kreatura
where rodzaj like 'wi%';

#3)
select nazwa, ilosc * waga as wagaCalkowita
from zasob
where year(dataPozyskania) between 2000 and 2007;

#Twardy Sen
#1)
select
	nazwa,
    waga * 0.7 as jedzenieNetto,
    waga * 0.3 as odpad
from zasob
where rodzaj = 'jedzenie';

#2)
select *
from zasob
where rodzaj is null;

#3)
select 
	distinct rodzaj,
    nazwa  
from zasob
where
	nazwa like 'Ba%'
    or
    nazwa like '%os';