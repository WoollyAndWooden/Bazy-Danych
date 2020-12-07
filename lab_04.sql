#Cicha Woda
#a)
delete from postac 
where id_postaci in
(
    select id_postaci from
    (    
        select id_postaci from postac
        where rodzaj='wiking' and nazwa!='Bjorn'
        order by data_ur desc
        limit 2
    ) a
);

#b)
alter table walizka 
drop foreign key walizka_ibfk_1;

alter table przetwory 
drop foreign key przetwory_ibfk_1;

alter table przetwory 
drop foreign key przetwory_ibfk_2;

alter table postac 
change id_postaci postac_id int;

alter table postac 
drop primary key;

#Syrenka
#a)
alter table postac 
add column pesel varchar(11) 
first;

update postac
set pesel=postac_id;

alter table postac
 add primary key(pesel);

#b)
alter table postac 
modify column rodzaj enum('wiking', 'kobieta', 'ptak', 'syrena');

#c)
insert into postac 
values(
    '02924529552',
     0,
    'Gertruda Nieszczera', 
    'syrena', 
    '1700-5-6', 
    100, 
    default, 
    default
    );

#Przechyły
#a)
Update postac
set statek = (
    select statek
    from (
        select statek 
        from postac 
        where nazwa = 'Bjorn')
    as statek_Bjorna)
where nazwa like '%a%';

#b)
update statek 
set max_ladownosc = max_ladownosc * 0.7
where year(data_wodowania) >= 1901 and year(data_wodowania) <= 2000;

#c)
alter table postac
add check (
    wiek <= 1000
);


#Wąż Loko
#a)
alter table postac 
modify rodzaj enum(
	'kapitan',
    'kobieta',
    'ptak',
    'wiking',
    'syrena',
    'waz');
    
insert into postac 
values(
	10,
    'Loko',
    'waz',
    '1818-06-11',
    240,
    default,
    12345678999);
#b)
create table marynarz
select *
from postac
where statek is not null;

#c)
#Wróciłem do labu by upewnić się czy wszystko mam i... nie wiem czemu tego nie mam
#Sztorm
#Poniższe również miałem zrobione, ale nie zapisało się chyba? Na pewno wiem jak zrobić. Po prostu nie pamiętam już struktury
#a)
update postac
set statek null;
#b)
delete from postac
where rodzaj = 'wiking' and nazwa !='Bjorn'
limit 1;
#c)
delete from statek
where idStatku >0;

#d)
drop table statek;

