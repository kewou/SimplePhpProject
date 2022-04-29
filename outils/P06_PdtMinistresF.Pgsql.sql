 -- CREATION Base de données
 CREATE DATABASE Ministre;


-- CREATION D'UNE TABLE GOUVERNEURS
 DROP TABLE IF EXISTS Gouverneurs CASCADE ;
 CREATE TABLE  IF NOT EXISTS Gouverneurs(
    Prenom VARCHAR(30) NOT NULL,
 	Nom VARCHAR (40) NOT NULL,
    Sexe CHAR(1) NOT NULL,
    DateNaissance VARCHAR(12) NOT NULL ,
    PartiePolitique VARCHAR(4) NOT NULL,
    id_Gouverneurs  SERIAL NOT NULL UNIQUE ,
    CHECK(Sexe='H' OR Sexe='F'),
    PRIMARY KEY (id_Gouverneurs)
);


-- CREATION TABLE POSTE
 DROP TABLE IF EXISTS Poste CASCADE ;
 CREATE TABLE IF NOT EXISTS Poste(
 	 Nom_Poste VARCHAR(60) UNIQUE  NOT NULL
);

 -- CREATION TABLE OCCUPE
 DROP TABLE IF EXISTS occupe CASCADE ;
 CREATE TABLE IF NOT EXISTS occupe(

    id_Gouverneurs INT NOT NULL REFERENCES Gouverneurs(id_Gouverneurs) ON DELETE CASCADE ON UPDATE CASCADE  ,
 Nom_Poste VARCHAR(60) NOT NULL REFERENCES Poste(Nom_Poste) ON DELETE CASCADE ON UPDATE CASCADE ,
    DateDebut_Fonction VARCHAR(10) NOT NULL,
    DateFin_Fonction VARCHAR(20) NOT NULL ,

 PRIMARY KEY( id_Gouverneurs , Nom_Poste , DateDebut_Fonction , DateFin_Fonction )
   
 	);

 -- Version en modéle relationnel GOUVERNEUR
 INSERT INTO Gouverneurs(Prenom,Nom,Sexe,DateNaissance,PartiePolitique) VALUES
 ('CHARLES','DE GAULE','H','22/11/1890','RPF'),
 ('MICHEL','DEBRÉ','H','15/01/1912','UNR'),
 ('FÉLIX','HOUPHOUET-BOIGNY','H','18/10/1905','PDCI'),
 ('LOUIS','JACQUINOT','H','16/09/1898','CNIP'),
 ('ROBERT','LECOURT','H','19/09/1908','MRP'),
 ('ANDRÉ','MALRAUX','H','03/11/1901','UNR'),
 ('PAUL','BACON','H','01/11/1907','MRP'),
 ('EDMOND','MICHELET','H','08/10/1899','UNR'),
 ('MAURICE','COUVE DE MURVILLE','H','24/01/1907','UNR'),
 ('JEAN','BERTHOIN','H','12/01/1895','RAD'),
 ('PIERRE','GUILLAUMAT','H','05/08/1905','DVD'),
 ('ANDRE','BOULLOCHE','H','07/09/1915','DVG'),
 ('ROBERT','BURON','H','27/02/1910','MRP'),
 ('JEAN-MARCEL','JEANNENEY','H','13/11/1910','UNR'),
 ('PIERRE','SUDREAU','H','13/05/1919','DVD'),
 ('ROGER','HOUDET','H','14/06/1899','CNIP'),
 ('ROGER','FREY','H','11/06/1913','UNR'),
 ('GEORGE','POMPIDOU','H','05/07/1911','UDR'),
 ('JACQUES','CHABAN-DELMAS','H','09/03/1915,','UDR'),
 ('RENÉ','PLEVEN','H','15/04/1901','CDP'),
 ('MAURICE','SCHUMANN','H','10/04/1911' , 'UDR'),
 ('RAYMOND','MARCELIN','H','19/08/1914','FNRI'),
 ('VALÉRY','GISCARD D''ESTAING','H','02/05/1920','FNRI'),
 ('OLIVIER','GUICHARD','H','27/07/1920','UDR'),
 ('FRANÇOIS-XAVIER','ORTOLI','H','16/02/1925','UDR'),
 ('JACQUES','DUHAMEL','H','24/09/1924','CDP'),
 ('JOSEPH','FONTANET','H','09/02/1921','CDP'),
 ('ROBERT','BOULIN','H','20/07/1920','UDR'),
 ('JACQUES','CHIRAC','H','29/11/1932','UDR'),
 ('MICHEL','PONIATOWSKI','H','16/05/1922','FNRI'),
 ('JEAN','LECANUET','H','04/03/1920','CDS'),
 ('JEAN','SAUVAGNARGUES','H','02/02/1915','SE'),
 ('JEAN-PIERRE','FOURCADE','H','18/10/1929','FNRI'),
 ('RENÉ','HABY','H','09/10/1919','FNRI'),
 ('MICHEL','DURAFOUR','H','11/04/1920','CR'),
 ('SIMONE','VEIL','F','13/07/1927','DVD'),
 ('MICHEL','ORNANO','H','12/07/1924','FNRI'),
 ('PIERRE','MAUROY','H','05/07/1928','PS'),
 ('GASTON','DEFFERRE','H','14/09/1910','PS'),
 ('NICOLE','QUESTIAUX','F','19/12/1930','PS'),
 ('JEAN-PIERRE','CHÉVENEMENT','H','09/03/1939','PS'),
 ('MAURICE','FAURE','H','02/01/1922','MRG'),
 ('CHARLES','HERNU','H','03/07/1923','PS'),
 ('ALAIN','SAVARY','H','25/04/1918','PS'),
 ('JACQUES','DELORS','H','20/07/1925','PS'),
 ('ÉDITH','CRESSON','F','27/01/1934','PS'),
 ('PIERRE','JOXE','H','28/11/1934','PS'),
 ('JEAN','AUROUX','H','19/09/1942','PS'),
 ('EDMOND','HEVRÉ','H','03/12/1942','PS'),
 ('JACK','LANG','H','02/09/1939','PS'),
 ('JEAN-PIERRE','RAFFARIN','H','03/08/1984','DL'),
 ('NICOLAS','SARKOZY','H','28/01/1995','RPR'),
 ('DOMINIQUE','PERBEN','H','11/08/1945','RPR'),
 ('DOMINIQUE','DE VILLEPIN','H','14/11/1953','RPR'),
 ('MICHÉLE','ALLIOT-MARIE','F','10/09/1946','PRP'),
 ('LUC','FERRY','H','03/01/1951','DVD'),
 ('FRANCIS','MER','H','25/05/1939','DVD'),
 ('JEAN-FRANÇOIS','MATTEI','H','14/01/1943','DL'),
 ('HEVRÉ','GAYMARD','H','31/05/1960','RPR'),
 ('JEAN-JACQUES','AILLAGON','H','02/10/1946','RPR'),
 ('FRANÇOIS','FILLON','H','04/03/1954','UMP'),
 ('ALAIN','JUPPÉ','H','15/08/1945','UMP'),
 ('GÉRARD','LONGUET','H','24/02/1946','UMP'),
 ('MICHEL','MERCIER','H','07/03/1947','UMP'),
 ('FRANÇOIS','BAROIN','H','21/06/1965','UMP'),
 ('XAVIER','BERTRAND','H','21/03/1965','UMP'),
 ('LUC','CHATEL','H','15/08/1964','UMP'),
 ('ROSELYNE','BACHELOT','F','24/12/1946','UMP'),
 ('JEAN-MARC','AYRAULT','H','25/01/1950','PS'),
 ('LAURENT','FABIUS','H','20/08/1946','PS'),
 ('VINCENT','PEILLON','H','17/07/1960','PS'),
 ('CHRISTINE','TAUBIRA','F','02/02/1952','PS'),
 ('PIERRE','MOSCOVICI','H','16/09/1957','PS'),
 ('MARISOL','TOURAINE','F','07/03/1959','PS'),
 ('MANUEL','VALLS','H','13/08/1962','PS'),
 ('JEAN-YVES','LE DRIAN','H','30/06/1947','PS'),
 ('AURÉLIE','FILIPPETTI','F','17/07/1973','PS'),
 ('FRANÇOIS','HOLLANDE','H','12/08/1954','PS'),
 ('DTÉPHANE','LE FOLL','H','03/02/1960','PS'),
 ('EMMANUEL','MACRON','H','21/12/1977','LRM'),
 ('ÉDOUARD','PHILLIPPE','H','28/12/1970','LR'),
 ('GÉRARD','COLLOMB','H','20/06/1947','PS'),
 ('NICOLAS','HULOT','H','30/04/1955','ÉCO'),
 ('SYLVIE','GOULARD','H','06/12/1964','LREM'),
 ('FRANÇOISE','NYSSEN','F','09/06/1951','DVG'),
 ('BRUNO','LE MAIRE','H','15/04/1969','LR'),
 ('MURIEL','PÉNICAUD','F','31/03/1955','DVG'),
 ('JEAN-MICHEL','BLANQUER','H','04/12/1964','DVD'),
 ('JACQUES','MÉZARD','H','03/12/1947','PRG'),
 ('AGNÉS','BUZYN','F','01/11/1962','LR');


-- Version en modéle relationnel Poste

INSERT INTO Poste(Nom_Poste) VALUES
('President de la république'),
('Premier ministre'),
('Ministre D''Etat'),
('Ministre de Travail'),
('Ministre de la Justice'),
('Ministre des Affaires étrangères'),
('Ministre de l''Économie et des Finances'),
('Ministre de l''Intérieur'),
('Ministre de l''Éducation nationale'),
('Ministre des Armés'),
('Ministre des Travaux publics et des Transports'),
('Ministre de l''Industrie et du commerce'),
('Minstre des Affaires Sociales'),
('Ministre de la Santé publique et de la population'),
('Ministre de construction'),
('Ministre de l''Agriculture'),
('Ministre de l''Information'),
('Ministre du Developement et des Finances'),
('Ministre des Affaires culturelles'),
('Ministre de la Culture et de la Comunication'),
('Ministre de la Défense');

-- version relationnel occupe

INSERT INTO occupe ( id_Gouverneurs,Nom_Poste, DateDebut_Fonction,DateFin_Fonction) VALUES
(1,'President de la république','09/12/1958','30/05/1968'),
(2,'Premier ministre', '08/01/1959','14/04/1962'),
(3,'Ministre D''Etat','13/05/1957','14/05/1958'),
(4,'Ministre D''Etat','01/06/1958','08/01/1966'),
(5,'Ministre D''Etat','08/01/1959','24/08/1961'),
(6,'Ministre D''Etat','08/01/1959','20/06/1969'),
(7,'Ministre de Travail','06/11/1957','16/05/1962'),
(8,'Ministre de la Justice','08/01/1959','24/08/1961'),
(8,'Ministre D''Etat','03/05/1968','10/07/1968'),
(9,'Premier ministre','10/07/1968','20/06/1969'),
(9,'Ministre des Affaires étrangères','01/06/1958','31/05/1968'),
(9,'Ministre de l''Économie et des Finances','31/05/1968','10/07/1968'),
(10,'Ministre de l''Intérieur','08/01/1959','27/05/1959'),
(11,'Ministre des Armés','01/06/1958','05/02/1960'),
(12,'Ministre de l''Éducation nationale','08/01/1959','23/12/1959'),
(13,'Ministre des Travaux publics et des Transports','08/01/1959','16/05/1962'),
(14,'Ministre des Affaires étrangères','08/01/1959','12/08/1962'),
(14,'Ministre des Affaires Sociales','08/01/1966','31/05/1968'),
(15,'Ministre de construction','09/01/1958','14/04/1962'),
(16,'Ministre de l''Agriculture','09/06/1959','28/05/1959'),
(17,'Ministre de l''Information','08/01/1959','05/02/1960'),
(17,'Ministre D''Etat','05/04/1967','05/07/1972'),
(17,'Ministre de l''Intérieur','06/05/1961','01/04/1967'),
(18,'President de la république','20/06/1969','02/04/1974'),
(19,'Premier ministre','20/06/1969','5/07/1972'),
(2,'Ministre D''Etat','22/06/1969','28/03/1973'),
(2,'Ministre des Affaires étrangères','31/05/1968','20/05/1969'),
(16,'Ministre D''Etat','07/01/1971','05/07/1972'),
(20,'Ministre de la Justice','22/06/1969','15/03/1973'),
(21,'Ministre des Affaires étrangères','22/06/1969','15/03/1973'),
(22,'Ministre de l''Intérieur','31/05/1968','27/02/1974'),
(22,'Ministre de l''Agriculture','01/03/1974','27/05/1974'),
(23,'Ministre  de l''Agriculture','27/05/1974','21/05/1981'),
(23,'Ministre de l''Économie et des Finances','20/06/1969','27/05/1974'),
(24,'Ministre de l'' Éducation nationale','22/06/1969','05/07/1972'),
(25,'Ministre du Developement et des Finances','22/06/1969','05/07/1972'),
(25,'Ministre de l''Économie et des Finances','12/07/1968','20/06/1969'),
(26,'Ministre de l''Agriculture','22/06/1969','07/01/1971'),
(26,'Ministre des Affaires culturelles','07/01/1971','28/03/1973'),
(27,'Ministre de l''Éducation nationale','06/07/1972','27/05/1974'),
(27,'Ministre de la Santé publique et de la population','24/08/1961','15/05/1962'),
(27,'Ministre de Travail','20/06/1969','05/07/1972'),
(28,'Ministre de la Santé publique et de la population','22/06/1969','05/07/1972'),
(28,'Ministre de l''Agriculture','12/07/1968','16/06/1969'),
(29,'President de la république','17/05/1995','16/05/2007'),
(29,'Premier ministre','20/03/1986','10/05/1988'),
(30,'Ministre D''Etat','28/05/1974','29/03/1977'),
(30,'Ministre de la Santé publique et de la population','05/04/1973','27/05/1974'),
(31,'Ministre D''Etat','27/08/1976','29/03/1977'),
(32,'Ministre des Affaires étrangères','25/05/1974','25/08/1976'),
(33,'Ministre de l''Économie et des Finances','28/05/1974','27/08/1976'),
(34,'Ministre de l''Éducation nationale','27/05/1974','31/03/1978'),
(35,'Ministre de Travail','28/05/1974','25/08/1976'),
(35,'Ministre D''Etat','13/05/1988','15/05/1991'),
(36,'Ministre D''Etat','30/03/1993','11/05/1995'),
(36,'Ministre de la Santé publique et de la population','28/05/1974','04/07/1979'),
(37,'Ministre de l''Industrie et du commerce','14/06/1974','29/03/1977'),
(37,'Ministre de la Culture et de la Comunication','04/03/1981','22/05/1981'),
(38,'Premier ministre','21/08/1981','17/07/1984'),
(39,'Ministre D''Etat','22/05/1981','17/07/1984'),
(40,'Ministre D''Etat','22/05/1981','29:05/1982'),
(41,'Ministre de l''Industrie et du commerce','04/06/1997','29/08/2000'),
(41,'Ministre de l''Éducation nationale','19/07/1984','20/03/1986'),
(41,'Ministre de la Défense','12/05/1988','29/01/1991'),
(42,'Ministre D''Etat','10/05/1988','01/03/1989'),
(43,'Ministre de la Défense','22/05/1981','20/09/1985'),
(44,'Ministre de l''Éducation nationale','22/05/1981','17/07/1984'),
(45,'Ministre de l''Économie et des Finances','22/05/1981','19/07/1984'),
(46,'Ministre de l''Agriculture','22/05/1981','22/03/1983'),
(46,'Premier ministre','15/05/1991','02/04/1992'),
(47,'Ministre de l''Industrie et du commerce','12/05/1988','29/01/1991'),
(48,'Ministre de Travail','22/05/1981','29/06/1982'),
(49,'Ministre de la Santé publique et de la population','22/05/1981','22/06/1981'),
(50,'Ministre de la Culture et de la Comunication','02/04/1992','29/03/1993'),
(50,'Ministre de l''Éducation nationale','27/03/2000','06/05/2002'),
(51,'Premier ministre','06/05/2002','31/05/2005'),
(52,'President de la république','16/05/2007','15/05/2012'),
(52,'Ministre D''Etat','02/06/2005','26/03/2007'),
(53,'Ministre de la Justice','07/05/2002','31/05/2005'),
(53,'Ministre des Travaux publics et des Transports','02/06/2005','15/05/2007'),
(54,'Ministre des Affaires étrangères','07/05/2002','30/03/2004'),
(54,'Ministre de l''Industrie et du commerce','31/03/2004','31/05/2005'),
(54,'Premier ministre','31/05/2005','17/05/2007'),
(55,'Ministre de la Défense','07/O5/1999','24/05/2007'),
(55,'Ministre de l''Industrie et du commerce','18/05/2007','23/06/2009'),
(55,'Ministre D''Etat','23/06/2009','13/11/2010'),
(56,'Ministre de l''Éducation nationale','07/05/2002','30/03/2004'),
(57,'Ministre de l''Économie et des Finances','07/05/2002','30/03/2004'),
(58,'Ministre de la Santé publique et de la population','07/05/2002','31/05/2004'),
(59,'Ministre de l''Économie et des Finances','29/12/2004','25/02/2005'),
(59,'Ministre de l''Agriculture','07/05/2002','29/11/2004'),
(60,'Ministre de la Culture et de la Comunication','07/05/2002','30/03/2004'),
(61,'Premier ministre','17/05/2007','15/05/2012'),
(61,'Ministre de l''Éducation nationale','31/03/2004','31/05/2005'),
(61,'Ministre des Affaires Sociales','07/05/2002','30/03/2004'),
(62,'Ministre D''Etat','27/02/2011','10/05/2012'),
(62,'Ministre D''Etat','30/03/1993','11/05/1995'),
(63,'Ministre de la Défense','27/02/2011','10/05/2012'),
(64,'Ministre de la Justice','14/11/2010','10/05/2012'),
(66,'Ministre de Travail','14/11/2010','10/05/2012'),
(67,'Ministre de l''Éducation nationale','23/06/2009','16/05/2012'),
(68,'Ministre de la Culture et de la Comunication','06/07/2020','Toujours en fonction'),
(69,'Premier ministre','15/05/2012','31/05/2014'),
(70,'Ministre des Affaires étrangères','16/05/2012','11/02/2016'),
(70,'Ministre de l''Économie et des Finances','28/03/2000','06/05/2002'),
(71,'Ministre de l''Éducation nationale','16/05/2012','02/04/2014'),
(72,'Ministre de la Justice','16/05/2012','27/01/2016'),
(73,'Ministre de l''Économie et des Finances','16/05/2012','31/03/2014'),
(74,'Ministre des Affaires Sociales','16/05/2012','17/05/2017'),
(75,'Ministre de l''Intérieur','16/08/2012','31/03/2014'),
(75,'Premier ministre','31/03/2014','06/12/2016'),
(76,'Ministre de la Défense','16/05/2012','17/05/2017'),
(76,'Ministre des Affaires étrangères','17/05/2017','Toujours en fonction'),
(77,'Ministre de la Culture et de la Comunication','16/05/2012','25/08/2014'),
(78,'President de la république','15/05/2012','14/05/2017'),
(79,'Ministre de l''Agriculture','16/05/2012','17/05/2017'),
(80,'President de la république','21/06/2017','20/06/2022'),
(84,'Ministre des Armés','17/05/2017','21/05/2O17'),
(81,'Premier ministre','15/05/2017','03/07/2020'),
(82,'Ministre D''Etat','17/05/2017','03/10/2018'),
(83,'Ministre D''Etat','17/05/2017','04/09/2018'),
(85,'Ministre de Travail','17/05/2017','16/10/2018'),
(86,'Ministre de l''Économie et des Finances','17/05/2017','Toujours en fonction'),
(86,'Ministre de la Culture et de la Comunication','23/06/2009','10/05/2012'),
(87,'Ministre de Travail','17/05/2017','06/07/2020'),
(88,'Ministre de l''Économie et des Finances','17/05/2017','Toujours en fonction'),
(89,'Ministre de l''Agriculture','17/05/2017','19/06/2017'),
(90,'Ministre de la Santé publique et de la population','17/05/2017','16/02/2020');
























































































































































