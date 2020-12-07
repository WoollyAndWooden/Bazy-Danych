#Skwarek
#1)
select avg(waga) as sredniaWagaWikingow
from kreatura
where rodzaj = 'wiking';

#2)
select 
	avg(waga) as sredniaWaga, 
	count(idKreatury) as iloscKreatur
from kreatura
group by rodzaj;

#3)
select 
	rodzaj,
    avg(year(now()) - year(dataUr)) as sredniWiekKreatury
from kreatura
group by rodzaj;

#Dymek
#1)
select 
	rodzaj,
	sum(waga) as sumaWag
from zasob
group by rodzaj;

#2)
select
	nazwa,
    avg(waga) as wagaZasobu
from zasob
where ilosc >= 4
group by nazwa
having sum(waga) > 10;

#3)
select 
	count(distinct(nazwa)) as unikalnaNazwa,
    rodzaj
from zasob
where ilosc > 1
group by rodzaj;

#Pieprz
#1)
select 
	kreatura.nazwa,
    sum(ekwipunek.ilosc) as iloscZasobow
from kreatura
	inner join ekwipunek on kreatura.idKreatury = ekwipunek.idKreatury
group by kreatura.nazwa;

#2)
select 
	k.nazwa,
    z.nazwa
from kreatura as k 
	inner join ekwipunek as e on k.idKreatury = e.idKreatury
		inner join zasob as z on e.idZasobu = z.idZasobu
order by k.nazwa;

#3)
select k.nazwa
from kreatura as k
	left join ekwipunek as e on k.idKreatury = e.idKreatury
where e.idKreatury is null;

#Dziadek
#1)
select
	k.nazwa as nazwaWikinga,
    z.nazwa as nazwaZasobu
from kreatura as k
	inner join ekwipunek as e on k.idKreatury = e.idKreatury
		inner join zasob as z on e.idZasobu = z.idZasobu
where year(k.dataUr) between 1870 and 1879
order by k.nazwa;

#2)
select k.nazwa
from kreatura as k
	inner join ekwipunek as e on k.idKreatury = e.idKreatury
		inner join zasob as z on e.idZasobu = z.idZasobu
where z.rodzaj = 'jedzenie'
order by k.dataUr asc
limit 5;

#3)
select k.nazwa as nazwa1, kkopia.nazwa as nazwa2
from kreatura as k
	inner join kreatura as kkopia on k.idKreatury = kkopia.idKreatury + 5;

#Zła Nowina
#1)
select 
	k.rodzaj,
    avg(e.ilosc*z.waga) as sredniaWagaEkwipunku
from kreatura as k
	inner join ekwipunek as e on k.idKreatury = e.idKreatury
		inner join zasob as z on e.idZasobu = z.idZasobu
where k.rodzaj not in('malpa', 'waz')
group by k.rodzaj
having sum(e.ilosc) < 30;

#2)
select
	rodzaj,
    min(dataUr) as najmlodsza,
    max(dataUr) as najstarsza
from kreatura
group by rodzaj;