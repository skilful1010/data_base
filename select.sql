-- Название и продолжительность самого длительного трека. Вариант 1.
select name, length
from musics
order by length desc
limit 1;
-- Название и продолжительность самого длительного трека. Вариант 2.
select name, length
from musics
where length = (select max(length) from musics);


--Название треков, продолжительность которых не менее 3,5 минут.
select name, length
from musics
where length > '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name
from colections
where year between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.
select name 
from musicians
where name not like '% %';

--Название треков, которые содержат слово «мой» или «my».
select name
from musics
where name like '%мой%' or name like '%my%';

--Количество исполнителей в каждом жанре.
select name, count(musician_id) from musiciansstyles ms
join styles s on id = ms.style_id
group by s.name; --совсем не понял как получилось...

--Количество треков, вошедших в альбомы 1995–2001 годов.
--Я поменял дату в условии, чтобы не менять в БД
select a.name, count(m.id) from musics m
join albums a on a.id = m.album_id
where a.data between '1995-01-01' and '2002-01-01'
group by a.name; --почти понял

--Средняя продолжительность треков по каждому альбому.
select a.name, AVG(m.length) from musics m
join albums a on a.id = m.album_id
group by a.name; --почти понял

--Все исполнители, которые не выпустили альбомы в 2020 году.
select m.name from musicians m
join albumsmusicians am on id = am.musician_id
join albums a on a.id = am.album_id
where data < '1995-01-01' or data > '1996-01-01'
group by m.name; --не разобрался

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.name from colections c
join musicscolections mc on id = mc.colection_id
join music m on m.id = mc.album_id
group by c.name; --не разобрался
