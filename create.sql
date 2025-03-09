create table if not exists Colections
(
	id SERIAL PRIMARY KEY,
	name varchar(64) not null,
	colection_year date not null
);

create table if not exists Styles
(
	id SERIAL PRIMARY KEY,
	name varchar(64) not null
);

create table if not exists Musicians
(
	id SERIAL PRIMARY KEY,
	name varchar(64) not null
);

create table if not exists Albums
(
	id SERIAL PRIMARY KEY,
	name varchar(64) not null,
	album_date date
);

create table if not exists Musics
(
	id SERIAL PRIMARY KEY,
	name varchar(128) not null,
	length time not null,
	album_id integer not null references Albums(ID)
);

create table if not exists MusicsColections
(
	colection_id integer not null references Colections(id),
	music_id integer not null references Musics(id)
);

create table if not exists AlbumsMusicians
(
	album_id integer not null references Albums(id),
	musician_id integer not null references Musicians(id)	
);

create table if not exists MusiciansStyles
(
	musician_id integer not null references Musicians(id),
	style_id integer not null references Styles(id)
);
