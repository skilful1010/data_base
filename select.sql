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
where length >= '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name
from colections
where colection_year >= '2018-01-01' and colection_year < '2021-01-01';

--Исполнители, чьё имя состоит из одного слова.
select name 
from musicians
where name not like '% %';

--Название треков, которые содержат слово «мой» или «my».
select name
from musics
where LOWER(name) like '%мой %' 
or LOWER(name) like '% мой %'
or LOWER(name) like '% мой%'
or LOWER(name) like '%my %'
or LOWER(name) like '% my %'
or LOWER(name) like '% my%'
and LOWER(name) not like '%мой%'
and LOWER(name) not like '%my%';

--Количество исполнителей в каждом жанре.
select name, count(musician_id) from musiciansstyles ms
join styles s on id = ms.style_id
group by s.name;

--Количество треков, вошедших в альбомы 1995–2001 годов.
--Я поменял дату в условии, чтобы не менять в БД
select count(m.id) from musics m
join albums a on a.id = m.album_id
where a.album_date between '1995-01-01' and '2002-01-01';

--Средняя продолжительность треков по каждому альбому.
select a.name, AVG(m.length) from musics m
join albums a on a.id = m.album_id
group by a.name;

--Все исполнители, которые не выпустили альбомы в 1999 году.
--Дату в условии изменил, чтобы не менять все даты в БД
SELECT m.name
FROM musicians m
WHERE m.name  NOT IN (
    SELECT ms.name
    FROM musicians ms
    JOIN albumsmusicians a ON a.musician_id = ms.id
    JOIN albums a2 ON a2.id = a.album_id
    WHERE a2.album_date >= '1999-01-01' and a2.album_date < '2000-01-01'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name
FROM colections c
JOIN musicscolections mc ON mc.colection_id = c.id
JOIN musics mus ON mus.id = mc.music_id
JOIN albums a ON a.id = mus.album_id
JOIN albumsmusicians am ON am.album_id = a.id
JOIN musicians m ON m.id = am.musician_id
WHERE m.name = 'Король и Шут';