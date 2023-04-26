ALTER TABLE presuda drop column if exists krivicno_delo;

create table if not exists krivicno_delo (
    id  INT AUTO_INCREMENT,
    naziv varchar(255),
    opis varchar(255),

    primary key (id)
);

create table krivicna_dela_presuda (
    krivicno_delo_id serial not null,
    presuda_id serial not null
);

alter table if exists krivicna_dela_presuda
    add constraint FK_PresudaKrivicnaDela
    foreign key (presuda_id)
    references krivicno_delo;

alter table if exists krivicna_dela_presuda
    add constraint FK_KrivicnaDelaPresuda
    foreign key (krivicno_delo_id)
    references presuda;

INSERT INTO krivicno_delo(naziv,opis) VALUES ('čl. 145 Krivičnog zakonika Crne Gore','Ubistvo na mah Član 145 Ko drugog liši života na mah doveden bez svoje krivice u jaku razdraženost napadom, zlostavljanjem ili teškim vrijeđanjem od strane ubijenog, kazniće se zatvorom od jedne do osam godina'),
                                             ('čl.151.st.1. Krivičnog zakonika Crne Gore','Teška tjelesna povreda Član 151 (1) Ko drugog teško tjelesno povrijedi ili mu zdravlje teško naruši, kazniće se zatvorom od šest mjeseci do pet godina'),
                                             ('čl. 152 stav 2 Krivičnog zakonika Crne Gore','Laka tjelesna povreda Član 152 (2) Ako je takva povreda nanesena oružjem, opasnim oruđem ili drugim sredstvom podobnim da tijelo teško povrijedi ili zdravlje teško naruši, učinilac će se kazniti zatvorom do tri godine.'),
                                             ('čl. 153 Krivičnog zakonika Crne Gore', 'Učestvovanje u tuči Član 153 Ko učestvuje u tuči u kojoj je neko lišen života ili je drugom nanesena teška tjelesna povreda, kazniće se za samo učestvovanje zatvorom od tri mjeseca do tri godine.'),
                                             ('čl.154.stav 1 Krivičnog zakonika Crne Gore', 'Ugrožavanje opasnim oruđem pri tuči i svađi Član 154 Ko se pri tuči ili svađi maši oružja, opasnog oruđa ili drugog sredstva podobnog da tijelo teško povrijedi ili zdravlje teško naruši, kazniće se novčanom kaznom ili zatvorom do šest mjeseci.');


insert into krivicna_dela_presuda(krivicno_delo_id, presuda_id) values (1,1), (2,1), (3,1), (4,2), (5,2), (6,2), (7,3), (8,3), (9,3), (10,4), (11,4), (12,4), (13,4), (14,5), (15,5), (16,5), (17,5);