insert into musicians (name)
values ('Король и Шут');

insert into musicians (name)
values ('Кино');

insert into musicians (name)
values ('Metallica');

insert into musicians (name)
values ('Ария');

insert into styles (name)
values ('Панк-рок');

insert into styles (name)
values ('Хард-рок');

insert into styles (name)
values ('Фолк-рок');

insert into albums (name, album_date)
values ('Акустический альбом', '01.01.1999');

insert into albums (name, album_date)
values ('Будь как дома, Путник...', '01.01.1997');

insert into albums (name, album_date)
values ('Как в старой сказке', '01.01.1997');

insert into albums (name, album_date)
values ('Группа крови', '01.01.1988');

insert into albums (name, album_date)
values ('Это не любовь', '01.01.1985');

insert into albums (name, album_date)
values ('Master Of Puppets (Remastered)', '03.03.1986');

insert into albums (name, album_date)
values ('Ride The Lightning (Remastered)', '27.07.1984');

insert into albums (name, album_date)
values ('Химера', '12.04.2001');

insert into albums (name, album_date)
values ('Ночь короче дня', '19.02.1995');

insert into musics (name, album_id, length)
values ('Кукла колдуна', 1, '00:03:24');

insert into musics (name, album_id, length)
values ('Наблюдатель', 1, '00:04:45');

insert into musics (name, album_id, length)
values ('Король и шут', 2, '00:02:41');

insert into musics (name, album_id, length)
values ('Мой Охотник', 2, '00:02:35');

insert into musics (name, album_id, length)
values ('Гимн шута', 3, '00:05:01');

insert into musics (name, album_id, length)
values ('Проклятый старый дом', 3, '00:04:17');

insert into musics (name, album_id, length)
values ('Группа крови', 4, '00:04:44');

insert into musics (name, album_id, length)
values ('Война', 4, '00:04:04');

insert into musics (name, album_id, length)
values ('Это не любовь', 5, '00:03:25');

insert into musics (name, album_id, length)
values ('Весна', 5, '00:01:58');

insert into musics (name, album_id, length)
values ('Battery', 6, '00:05:12');

insert into musics (name, album_id, length)
values ('Master of Puppets', 6, '00:08:35');

insert into musics (name, album_id, length)
values ('Fight Fire With My Fire (Remastered)', 7, '00:04:44');

insert into musics (name, album_id, length)
values ('Ride The Lightning (Remastered)', 7, '00:06:36');

insert into musics (name, album_id, length)
values ('Химера', 8, '00:04:39');

insert into musics (name, album_id, length)
values ('Вампир мой', 8, '00:05:30');

insert into musics (name, album_id, length)
values ('Рабство иллюзий', 9, '00:05:51');

insert into musics (name, album_id, length)
values ('Паранойя', 9, '00:04:59');

insert into colections (name, colection_year)
values ('Evropa +', '2010-01-01');

insert into colections (name, colection_year)
values ('Ultra', '2018-01-01');

insert into colections (name, colection_year)
values ('Авторадио', '2020-01-01');

insert into colections (name, colection_year)
values ('Rock', '2021-01-01');

insert into musicscolections (colection_id, music_id)
values (1, 1);

insert into musicscolections (colection_id, music_id)
values (1, 2);

insert into musicscolections (colection_id, music_id)
values (1, 3);

insert into musicscolections (colection_id, music_id)
values (1, 4);

insert into musicscolections (colection_id, music_id)
values (2, 3);

insert into musicscolections (colection_id, music_id)
values (2, 5);

insert into musicscolections (colection_id, music_id)
values (2, 6);

insert into musicscolections (colection_id, music_id)
values (3, 1);

insert into musicscolections (colection_id, music_id)
values (3, 7);

insert into musicscolections (colection_id, music_id)
values (3, 8);

insert into musicscolections (colection_id, music_id)
values (4, 9);

insert into musicscolections (colection_id, music_id)
values (4, 10);

insert into musicscolections (colection_id, music_id)
values (4, 11);

insert into musiciansstyles (musician_id, style_id)
values (1, 2);

insert into musiciansstyles (musician_id, style_id)
values (2, 1);

insert into musiciansstyles (musician_id, style_id)
values (3, 3);

insert into musiciansstyles (musician_id, style_id)
values (4, 1);

insert into albumsmusicians (album_id, musician_id)
values (1, 1);

insert into albumsmusicians (album_id, musician_id)
values (2, 1);

insert into albumsmusicians (album_id, musician_id)
values (3, 1);

insert into albumsmusicians (album_id, musician_id)
values (4, 2);

insert into albumsmusicians (album_id, musician_id)
values (5, 2);

insert into albumsmusicians (album_id, musician_id)
values (6, 3);

insert into albumsmusicians (album_id, musician_id)
values (7, 3);

insert into albumsmusicians (album_id, musician_id)
values (8, 4);

insert into albumsmusicians (album_id, musician_id)
values (9, 4);