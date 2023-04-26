drop table if exists korisnik CASCADE;
drop table if exists presuda CASCADE;
drop table if exists propis CASCADE;
drop table if exists propis_presuda CASCADE;
drop table if exists sudija_presuda CASCADE;
drop table if exists telesna_povreda_presuda CASCADE;
drop table if exists telesna_povreda CASCADE;

create table if not exists korisnik (
    id  INT AUTO_INCREMENT,
    ime varchar(255),
    prezime varchar(255),
    jmbg varchar(255),
    korisnicko_ime varchar(255),
    lozinka varchar(255),

    primary key (id)
);

create table if not exists propis (
    id  INT AUTO_INCREMENT,
    opis varchar(255),

    primary key (id)
);

create table if not exists telesna_povreda (
    id  INT AUTO_INCREMENT,
    opis varchar(255),

    primary key (id)
);

create table if not exists presuda (
    id  INT AUTO_INCREMENT,
    sud varchar(255),
    poslovni_broj varchar(255),
    tuzilac varchar(255),
    okrivljeni varchar(255),
    krivicno_delo varchar(255),
    osudjen boolean,
    kazna_zatvor varchar(255),
    kazna_novac varchar(255),
    hladno_oruzije boolean,
	predumisljaj boolean,
	odnos varchar(225),

    primary key (id)
);

create table sudija_presuda (
    korisnik_id serial not null,
    presuda_id serial not null
);

alter table if exists sudija_presuda
    add constraint FK_SudijaPresuda
    foreign key (korisnik_id)
    references presuda;

alter table if exists sudija_presuda
    add constraint FK_PresudaSudija
    foreign key (presuda_id)
    references korisnik;

create table telesna_povreda_presuda (
    telesna_povreda_id serial not null,
    presuda_id serial not null
);

alter table if exists telesna_povreda_presuda
    add constraint FK_TelesnaPovredaPresuda
    foreign key (telesna_povreda_id)
    references presuda;

alter table if exists telesna_povreda_presuda
    add constraint FK_PresudaTelesnaPovreda
    foreign key (presuda_id)
    references telesna_povreda;

create table propis_presuda (
    propis_id serial not null,
    presuda_id serial not null
);

alter table if exists propis_presuda
    add constraint FK_PropisPresuda
    foreign key (propis_id)
    references presuda;

alter table if exists propis_presuda
    add constraint FK_PresudaPropis
    foreign key (presuda_id)
    references propis;