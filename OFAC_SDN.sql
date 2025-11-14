--create table SDN acc to the description in the dat_spec.txt

CREATE TABLE SDN (
--unique record identifier/unique listing identifier
    ent_num INTEGER PRIMARY KEY,
--name of sdn
    SDN_Name VARCHAR(350),
--type of SDN
    SDN_Type VARCHAR(12),
--sanctions program name
    Program_ VARCHAR(200),
--title of an individual
    Title VARCHAR(200),
--vessel call sign
    Call_Sign VARCHAR(8),
--vessel type
	Vess_type VARCHAR(25),
--vessel tonnage
    Tonnage VARCHAR(14),
--gross registered tonnage
    GRT VARCHAR(8),
--vessel flag
    Vess_flag  VARCHAR(40),
--vessel owner
    Vess_owner VARCHAR(150),
--remarks on SDN
    Remarks VARCHAR(1000)
);

--view the table
SELECT * FROM SDN;

ALTER TABLE public.SDN DROP CONSTRAINT SDN_pkey;

--create table ADD acc to the description in the dat_spec.txt

CREATE TABLE ADD_ (
--link to unique listing
    Ent_num INTEGER PRIMARY KEY,
--unique record identifier
    Add_num INTEGER,
--street address of SDN
    Address VARCHAR(750),
--city, state/province, zip/postal code
     City_State_Province_PostalCode VARCHAR(116),
--country of address
    Country VARCHAR(250),
--remarks on address
    Add_remarks VARCHAR(200)
);
ALTER TABLE public.ADD_ DROP CONSTRAINT ADD__pkey;

--view the table ADD
SELECT * FROM ADD_;


--create table ALT acc to the description in the dat_spec.txt

CREATE TABLE ALT (
--link to unique listing
    Ent_num INTEGER PRIMARY KEY,
--unique record identifier
    alt_num INTEGER,
--type of alternate identity(aka, fka, nka)
    alt_type VARCHAR(8),
--alternate identity name
    alt_name VARCHAR(350),
-- remarks on alternate identity
    alt_remarks VARCHAR(200)
);
ALTER TABLE public.alt DROP CONSTRAINT alt_pkey;

--view the table ALT
SELECT * FROM ALT;


--combine tables for project
SELECT * FROM SDN 
LEFT JOIN ADD_ ON SDN.ent_num = ADD_.Ent_num
LEFT JOIN ALT ON SDN.ent_num = ALT.Ent_num