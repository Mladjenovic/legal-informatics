INSERT INTO PROPIS(OPIS) VALUES ('čl. 2 KZ'),('čl. 4 KZ'),('čl. 5 KZ'),('čl. 8 KZ'),('čl. 13 KZ'),('čl. 14 KZ'),('čl. 15 KZ'),('čl. 20 KZ'),('čl. 32 KZ'),('čl. 33 KZ'),('čl. 36 KZ'),('čl. 42 KZ'),('čl. 43 KZ'), ('čl. 44 KZ'), ('čl. 45 KZ'), ('čl. 46 KZ'),('čl. 48 KZ'),('čl. 51 KZ'),('čl. 52 KZ'),('čl. 53 KZ'),('čl. 54 KZ'),('čl. 55 KZ'),('čl. 56 KZ'),
                                    --1         2               3           4           5               6           7               8           9               10              11          12              13              14          15              16              17          18              19          20          21              22          23
                                ('čl. 226 ZKP'),('čl. 227 ZKP'),('čl. 229 ZKP'),('čl. 239 ZKP'),('čl. 303 ZKP'),('čl. 368 ZKP'),('čl. 374 ZKP');
                                --24                  25            26            27              28              29              30
INSERT INTO TELESNA_POVREDA(OPIS) VALUES ('laka'), ('teska'), ('ubistvo');

INSERT INTO KORISNIK(ime,prezime,jmbg,korisnicko_ime,lozinka) VALUES ('Vukomir', 'Bošković', '0204887652345', 'vuk01', '123'), --1
                                                                     ('Šefkija', 'Dješević', '0204887652345', 'sef01', '123'), --2
                                                                     ('Jokana', 'Varagić', '0204887652345', 'jok01', '123'), --3
                                                                     ('Slobodanka', 'Novčić', '0204887652345', 'slo01', '123'), --4
                                                                     ('Tatjana', 'Begović', '0204887652345', 'tat01', '123'), --5
                                                                     ('Vesna', 'Moštrokol', '0204887652345', 'ves01', '123'), --6
                                                                     ('Dubravka', 'Popović', '0204887652345', 'dub01', '123'), --7
                                                                     ('Danijela', 'Samardžić', '0204887652345', 'dan01', '123'), --8
                                                                     ('Zahit', 'Camić', '0204887652345', 'zah01', '123'), --9
                                                                     ('Milosava', 'Zekić', '0204887652345', 'mil01', '123'), --10
                                                                     ('Rade', 'Ćetković', '0204887652345', 'rad01', '123'), --11
                                                                     ('Željka', 'Jovović', '0204887652345', 'zelj01', '123'), --12
                                                                     ('Dragan', 'Babović', '0204887652345', 'dra01', '123'), --13
                                                                     ('Branislav', 'Leković', '0204887652345', 'bra01', '123'), --14
                                                                     ('Branislav', 'Leković', '0204887652345', 'bra01', '123'); --15


INSERT INTO PRESUDA (sud, poslovni_broj, tuzilac, okrivljeni, krivicno_delo, osudjen, kazna_zatvor, kazna_novac, hladno_oruzije, predumisljaj, odnos) VALUES
--145
('Viši Sud u Bijelom Polju', 'K 25/2014','Više državno tužilaštvo u Bijelom Polju', 'L. R.', 'čl. 145 Krivičnog zakonika Crne Gore', true, '5 godina', '50.00 EUR',true,true,'stranci'),
('Viši Sud u Podgorici', 'K 37/2020', 'Više državno tužilaštvo u Podgorici', 'P.M.', 'čl. 145 Krivičnog zakonika Crne Gore', true, '1 godina i 2 meseca', '82.50 EUR, 990.00 EUR, 3025.00 EUR',true,true,'poznanici'),
('Viši Sud u Podgorici', 'K.br.28/2020', 'Više državno tužilaštvo u Podgorici', 'Z.D.', 'čl. 145 Krivičnog zakonika Crne Gore', true, '4 godine', '50.00 EUR',true,true,'rodbina_uza'),

--151
('Osnovni Sud u Beranama', 'K 134/2021', 'Osnovno državno tužilaštvo u Beranama', 'H.S.', 'čl.151.st.1. Krivičnog zakonika Crne Gore', true, '1 godine', '150 EUR',true,true,'prijatelji'),
('Osnovni Sud u Kotoru', 'K 25/2014', 'Osnovno državno tužilaštvo u Kotoru', 'P.D.', 'čl.151.st.1. Krivičnog zakonika Crne Gore', true, '7 meseci', '49.50 EUR, 55.00 EUR',true,false,'stranci'),
('Osnovni Sud u Podgorici', 'K 11/820', 'Osnovno državno tužilaštvo u Podgorici', 'P.M.', 'čl.151.st.1. Krivičnog zakonika Crne Gore', true, '3 meseca', '60.50 EUR, 30.00 EUR',true,false,'kolege'),

--152
('Osnovni Sud u Nikšiću', 'K 338/13', 'Osnovno državno tužilaštvo u Nikšiću', 'DJ. F.', 'čl. 152 stav 2 Krivičnog zakonika Crne Gore' ,true, '3 meseca', '118.00 EUR',false,true,'stranci'),
('Osnovni Sud u Nikšiću', 'K 164/21', 'Osnovno državno tužilaštvo u Nikšiću', 'B.M.', 'čl. 152 stav 2 Krivičnog zakonika Crne Gore', true, '2 meseca', '30.00 EUR',false,false,'prijatelji'),
('Osnovni Sud u Beranama', 'K 168/19', 'Osnovno državno tužilaštvo u Beranama', 'S.V.', 'čl. 152 stav 2 Krivičnog zakonika Crne Gore', true, '5 meseca', '50.00 EUR, 50.00 EUR',false,true,'rodbina_sira'),

--153
('Osnovni Sud u Rožajama', 'K 86/2020', 'Osnovno državno tužilaštvo u Rožajama', 'K.A.', 'čl. 153 Krivičnog zakonika Crne Gore', true, '3 meseca', null,false,true,'stranci'),
('Osnovni Sud u Rožajama', 'Kv 146/2012','Osnovno državno tužilaštvo u Rožajama', 'A. K.', 'čl. 153 Krivičnog zakonika Crne Gore', true, '140 dana', null,false,false,'kolege'),
('Osnovni Sud u Podgorici', 'K 125/2019', 'Osnovno državno tužilaštvo u Podgorici', 'L. B.', 'čl. 153 Krivičnog zakonika Crne Gore', true, '2 meseca/120h javnog rada', '40.08 EUR',false,true,'prijatelji'),
('Osnovni Sud u Podgorici', 'K 125/2019', 'Osnovno državno tužilaštvo u Podgorici', 'M. J.', 'čl. 153 Krivičnog zakonika Crne Gore', true, '3 meseca', '40.08 EUR',false,false,'rodbina_uza'),

--154
('Viši Sud u Herceg Novom', 'K 53-2012', 'Više državno tužilaštvo u Herceg Novom', 'R.K.', 'čl.154.stav 1 Krivičnog zakonika Crne Gore', true, '3 meseca', null,false,false,'poznanici'),
('Osnovni Sud u Rožajama', 'K 25/2014', 'Osnovno državno tužilaštvo u Rožajama', 'R.K.', 'čl.154. Krivičnog zakonika Crne Gore', true, '30 dana', '40.00 EUR',false,true,'kolege'),
('Osnovni Sud u Rožajama', 'K 25/2014','Osnovno državno tužilaštvo u Rožajama', 'N.S.', 'čl.154. Krivičnog zakonika Crne Gore', true, '30 dana', '40.00 EUR',false,false,'prijatelji'),
('Viši Sud u Herceg Novom', 'K.br.124/2013','Više državno tužilaštvo u Herceg Novom', 'S.L.', 'čl.154. Krivičnog zakonika Crne Gore', true, '40 dana', '1000.00 EUR, 50.00 EUR',false,true,'poznanici');

INSERT INTO sudija_presuda(korisnik_id,presuda_id) VALUES (1,1), (1,2), (1,3),
                                                          (2,4), (2,5),
                                                          (3,6),
                                                          (4,7),
                                                          (5,8),
                                                          (6,12),
                                                          (7,13),
                                                          (8,7),
                                                          (9,15),
                                                          (10,9),
                                                          (11,10),
                                                          (12,11),
                                                          (13,11),
                                                          (14,14),
                                                          (15,9),
                                                          (16,9),
                                                          (17,14);

insert into telesna_povreda_presuda(telesna_povreda_id,presuda_id) values (1,3),(2,3),(3,3),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2);

insert into propis_presuda(propis_id,presuda_id) values (1, 6), (1, 7), (1, 9), (1, 11), (1, 12), (1, 13), (1, 19), (1, 24), (1, 25), (1, 27), (1, 30),
                                                        (2, 8), (2, 9), (2, 10), (2, 11), (2, 12),
                                                        (3, 2), (3, 3), (3, 5), (3, 6), (3, 9), (3, 11), (3, 12), (3, 18), (3, 24), (3, 25), (3, 27), (3, 30),
                                                        (4, 2), (4, 9), (4, 11), (4, 12), (4, 15), (4, 16), (4, 18), (4, 24), (4, 25), (4, 27), (4, 30),
                                                        (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 7), (5, 9), (5, 11), (5, 12), (5, 15), (5, 16), (5, 18), (5, 24), (5, 26), (5, 29), (5, 30),
                                                        (6, 2), (6, 12), (6, 15), (6, 16), (6, 19), (6, 20), (6, 21), (6, 24), (6, 26), (6, 28),
                                                        (7, 2), (7, 12), (7, 10), (7, 11), (7, 12), (7, 17), (7, 19), (7, 20), (7, 21), (7, 24), (7, 26), (7, 30),
                                                        (8, 2), (8, 9), (8, 11), (8, 12), (8, 24), (8, 27), (8, 30),
                                                        (9, 3), (9, 5), (9, 7), (9, 10), (9, 11), (9, 12), (9, 18), (9, 24), (9, 26), (9, 27), (9, 29), (9, 30),
                                                        (10, 2), (10, 5), (10, 7), (10, 9), (10, 11), (10, 19), (10, 20), (10, 21), (10, 26), (10, 30),
                                                        (11, 6), (11, 7), (11, 9), (11, 11), (11, 12), (11, 18), (11, 24), (11, 25), (11, 27), (11, 30),
                                                        (12, 2), (12, 9), (12, 12), (12, 24), (12, 25), (12, 27), (12, 30),
                                                        (13, 2),(13, 9),(13, 12),(13, 24),(13, 25),(13, 27),(13, 30),
                                                        (14, 2),(14, 9),(14, 9),(14, 11),(14, 12),(14, 19),(14, 20),(14, 21),
                                                        (15, 2),(15, 5),(15, 7),(15, 9),(15, 11),(15, 19),(15, 20),(15, 21),(15, 24),(15, 26),(15, 30),
                                                        (16, 2),(16, 5),(16, 7),(16, 9),(16, 11),(16, 19),(16, 20),(16, 21),(16, 24),(16, 26),(16, 30),
                                                        (17, 2),(17, 9),(17, 12),(17, 17),(17, 26),(17, 27),(17, 30);