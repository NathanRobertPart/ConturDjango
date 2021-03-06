PRAGMA foreign_keys=ON;
--BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS analysis_pool (
    pool    TEXT NOT NULL PRIMARY KEY
);
INSERT INTO analysis_pool VALUES('ATLAS_7_JETS');
INSERT INTO analysis_pool VALUES('CMS_7_JETS');

INSERT INTO analysis_pool VALUES('ATLAS_7_GAMMA');
INSERT INTO analysis_pool VALUES('CMS_7_GAMMA');

INSERT INTO analysis_pool VALUES('ATLAS_7_LMDY');

INSERT INTO analysis_pool VALUES('ATLAS_7_Zjj_EL');
INSERT INTO analysis_pool VALUES('ATLAS_7_Zjj_MU');
INSERT INTO analysis_pool VALUES('ATLAS_7_Wjj_EL');
INSERT INTO analysis_pool VALUES('ATLAS_7_Wjj_MU');
INSERT INTO analysis_pool VALUES('ATLAS_7_Wjj');
INSERT INTO analysis_pool VALUES('CMS_7_Zjj');
INSERT INTO analysis_pool VALUES('CMS_7_Wjj');
INSERT INTO analysis_pool VALUES('ATLAS_7_Z_GAMMA');
INSERT INTO analysis_pool VALUES('ATLAS_7_W_GAMMA_MU');
INSERT INTO analysis_pool VALUES('ATLAS_7_W_GAMMA_EL');
INSERT INTO analysis_pool VALUES('ATLAS_7_ZZ');
INSERT INTO analysis_pool VALUES('ATLAS_7_WW');

INSERT INTO analysis_pool VALUES('ATLAS_8_JETS');
INSERT INTO analysis_pool VALUES('CMS_8_JETS');

INSERT INTO analysis_pool VALUES('ATLAS_8_GAMMA');
INSERT INTO analysis_pool VALUES('CMS_8_GAMMA');

INSERT INTO analysis_pool VALUES('ATLAS_8_HMDY');

INSERT INTO analysis_pool VALUES('ATLAS_8_Zjj');
INSERT INTO analysis_pool VALUES('ATLAS_8_Wjj');
INSERT INTO analysis_pool VALUES('CMS_8_Wjj');

INSERT INTO analysis_pool VALUES('ATLAS_8_ZZ');
INSERT INTO analysis_pool VALUES('ATLAS_8_WW');
INSERT INTO analysis_pool VALUES('CMS_8_WW');
INSERT INTO analysis_pool VALUES('ATLAS_8_Z_GAMMA');
INSERT INTO analysis_pool VALUES('ATLAS_8_GAMMA_MET');

INSERT INTO analysis_pool VALUES('ATLAS_13_JETS');
INSERT INTO analysis_pool VALUES('CMS_13_JETS'); 
INSERT INTO analysis_pool VALUES('ATLAS_13_Zjj');
INSERT INTO analysis_pool VALUES('ATLAS_13_METJET');

CREATE TABLE IF NOT EXISTS analysis (
    anaid   TEXT NOT NULL PRIMARY KEY,
    lumi    REAL NOT NULL,
    pool    TEXT NULL REFERENCES analysis_pool(pool)
);
-- Note, the LUMI value given here should be in units which match the normalisation
-- of the cross section plots. Most in pb, some in fb.

-- Superseded/deprecated analyses
INSERT INTO analysis VALUES('ATLAS_2012_I1083318',36.0,NULL);
INSERT INTO analysis VALUES('ATLAS_2011_I945498',36.0,NULL);
INSERT INTO analysis VALUES('ATLAS_2011_I921594',35.0,NULL);
INSERT INTO analysis VALUES('ATLAS_2011_S9128077',2.4,NULL);

-- 7 TeV fully hadronic
INSERT INTO analysis VALUES('ATLAS_2014_I1325553',4500.0,'ATLAS_7_JETS');
INSERT INTO analysis VALUES('ATLAS_2014_I1268975',4500.0,'ATLAS_7_JETS');
INSERT INTO analysis VALUES('ATLAS_2014_I1326641',4510.0,'ATLAS_7_JETS');
INSERT INTO analysis VALUES('ATLAS_2014_I1307243',4500.0,'ATLAS_7_JETS');
INSERT INTO analysis VALUES('CMS_2014_I1298810',5000.0,'CMS_7_JETS');
INSERT INTO analysis VALUES('CMS_2014_I1273574',5000.0,'CMS_7_JETS');
INSERT INTO analysis VALUES('CMS_2013_I1224539_DIJET',5000.0,'CMS_7_JETS');

-- 7 TeV photons
INSERT INTO analysis VALUES('ATLAS_2012_I1093738',37.0,'ATLAS_7_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2013_I1244522',37.0,'ATLAS_7_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2013_I1263495',4600.0,'ATLAS_7_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2012_I1199269',4900.0,'ATLAS_7_GAMMA');
INSERT INTO analysis VALUES('CMS_2014_I1266056',4500.0,'CMS_7_GAMMA');

-- 7 TeV Z+jets
INSERT INTO analysis VALUES('ATLAS_2013_I1230812_EL',4600.0,'ATLAS_7_Zjj_EL');
INSERT INTO analysis VALUES('ATLAS_2013_I1230812_MU',4600.0,'ATLAS_7_Zjj_MU');
INSERT INTO analysis VALUES('ATLAS_2014_I1306294_EL',4600.0,'ATLAS_7_Zjj_EL');
INSERT INTO analysis VALUES('ATLAS_2014_I1306294_MU',4600.0,'ATLAS_7_Zjj_MU');
INSERT INTO analysis VALUES('CMS_2015_I1310737',4900.0,'CMS_7_Zjj');

-- 7 TeV ttbar
INSERT INTO analysis VALUES('ATLAS_2015_I1345452',4600.0,'ATLAS_7_Wjj');

-- 7 TeV Low mass DY
INSERT INTO analysis VALUES('ATLAS_2014_I1288706',1600.0,'ATLAS_7_LMDY');

-- 7 TeV single jet masses
INSERT INTO analysis VALUES('CMS_2013_I1224539_WJET',5.0,'CMS_7_Wjj');
INSERT INTO analysis VALUES('CMS_2013_I1224539_ZJET',5.0,'CMS_7_Zjj');

-- 7 TeV W+jets.
INSERT INTO analysis VALUES('ATLAS_2014_I1319490_MU',4600.0,'ATLAS_7_Wjj_MU');
INSERT INTO analysis VALUES('ATLAS_2014_I1319490_EL',4600.0,'ATLAS_7_Wjj_EL');
INSERT INTO analysis VALUES('CMS_2014_I1303894',5000.0,'CMS_7_Wjj');

-- 7 TeV W+charm
INSERT INTO analysis VALUES('ATLAS_2014_I1282447',4600.0,'ATLAS_7_Wjj');

-- 7 TeV W+b
INSERT INTO analysis VALUES('ATLAS_2013_I1219109_EL',4600.0,'ATLAS_7_Wjj');
INSERT INTO analysis VALUES('ATLAS_2013_I1219109_MU',4600.0,'ATLAS_7_Wjj');

-- 7 TeV Z+bb
INSERT INTO analysis VALUES('CMS_2013_I1256943',5000.0,'CMS_7_Zjj');

-- 7 TeV WW. Plots in fb.
INSERT INTO analysis VALUES('ATLAS_2013_I1190187',4.6,'ATLAS_7_WW');

-- 7 TeV dibosons, in fb-1
INSERT INTO analysis VALUES('ATLAS_2013_I1217863_Z',4.6,'ATLAS_7_Z_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2013_I1217863_W_MU',4.6,'ATLAS_7_W_GAMMA_MU');
INSERT INTO analysis VALUES('ATLAS_2013_I1217863_W_EL',4.6,'ATLAS_7_W_GAMMA_EL');
INSERT INTO analysis VALUES('ATLAS_2012_I1203852',4.6,'ATLAS_7_ZZ');

-- 8 TeV fully hadronic
-- plots in fb
INSERT INTO analysis VALUES('ATLAS_2015_I1394679',20.3,'ATLAS_8_JETS');
INSERT INTO analysis VALUES('ATLAS_2017_I1598613',11.4,'ATLAS_8_JETS');
INSERT INTO analysis VALUES('ATLAS_2017_I1598613_BB',11.4,'ATLAS_8_JETS');
-- normalised, no total xsec yet INSERT INTO analysis VALUES('CMS_2016_I1421646',19700,'CMS_8_JETS');


-- 8 TeV photons
-- in pb
INSERT INTO analysis VALUES('ATLAS_2016_I1457605',20200.0,'ATLAS_8_GAMMA');
-- in fb
INSERT INTO analysis VALUES('ATLAS_2017_I1591327',20.3,'ATLAS_8_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2014_I1306615',20.3,'ATLAS_8_GAMMA');

-- 8 TeV High mass DY
-- in pb
INSERT INTO analysis VALUES('ATLAS_2016_I1467454',20300.0,'ATLAS_8_HMDY');

-- 8 TeV leptons+MET
-- normalised
INSERT INTO analysis VALUES('ATLAS_2014_I1279489',20300.0,'ATLAS_8_Zjj');
INSERT INTO analysis VALUES('ATLAS_2015_I1408516',20300.0,'ATLAS_8_Zjj');
-- plots in pb
INSERT INTO analysis VALUES('ATLAS_2017_I1589844',20200.0,'ATLAS_8_Zjj');

-- plots in fb
INSERT INTO analysis VALUES('CMS_2016_I1454211',19.7,'CMS_8_Wjj');
INSERT INTO analysis VALUES('ATLAS_2015_I1397637',20.3,'ATLAS_8_Wjj');

-- plots in fb
INSERT INTO analysis VALUES('CMS_2017_I1518399',19.7,'CMS_8_Wjj');
INSERT INTO analysis VALUES('ATLAS_2016_I1426515',20.3,'ATLAS_8_WW');
INSERT INTO analysis VALUES('CMS_2017_I1467451',19.4,'CMS_8_WW');

-- fb
INSERT INTO analysis VALUES('ATLAS_2015_I1394865',20.3,'ATLAS_8_ZZ');
INSERT INTO analysis VALUES('ATLAS_2016_I1448301_EL',20.3,'ATLAS_8_Z_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2016_I1448301_MU',20.3,'ATLAS_8_Z_GAMMA');
INSERT INTO analysis VALUES('ATLAS_2016_I1448301_NU',20.3,'ATLAS_8_GAMMA_MET');

-- 13 TeV fully hadronic
-- plots in pb
INSERT INTO analysis VALUES('CMS_2016_I1459051',71.0,'CMS_13_JETS');

-- TBD normalised cross sections INSERT INTO analysis VALUES('CMS_2017_I1519995',2600,'CMS_13_JETS');

-- 13 TeV photons

-- 13 TeV leptons+MET
-- plots in pb
INSERT INTO analysis VALUES('ATLAS_2017_I1514251_EL',3160.0,'ATLAS_13_Zjj');
INSERT INTO analysis VALUES('ATLAS_2017_I1514251_MU',3160.0,'ATLAS_13_Zjj');
INSERT INTO analysis VALUES('ATLAS_2017_I1609448_Zee',3200.0,'ATLAS_13_Zjj');
INSERT INTO analysis VALUES('ATLAS_2017_I1609448_Zmumu',3200.0,'ATLAS_13_Zjj');


-- 13 TeV MET+JET
INSERT INTO analysis VALUES('ATLAS_2017_I1609448',3200.0,'ATLAS_13_METJET');
INSERT INTO analysis VALUES('ATLAS_2017_I1609448_Znunu',3200.0,'ATLAS_13_METJET');



-- CMS_2016_I1421646 – Dijet azimuthal decorrelations in $pp$ collisions at $\sqrt{s} = 8$ TeV
-- commented out in python 'CMS_2013_I1256943',5200.0   CMS Z+b



CREATE TABLE IF NOT EXISTS blacklist (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    pattern TEXT NOT NULL,
    anaid   TEXT NOT NULL REFERENCES analysis(anaid)
);
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_EL','d02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_EL','d04');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_EL','d06');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_EL','d08');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_MU','d02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_MU','d04');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_MU','d06');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1230812_MU','d08');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2014_I1298810','d13');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2014_I1298810','d14');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2014_I1298810','d15');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2014_I1298810','d16');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2014_I1298810','d17');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2014_I1298810','d18');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_Z','d17');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_Z','d18');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_Z','d20');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_W_MU','d15');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_W_MU','d16');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_W_MU','d19');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_W_EL','d15');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_W_EL','d16');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2013_I1217863_W_EL','d19');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1203852','d03');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1203852','d04');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1203852','d05');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1203852','d06');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1203852','d07');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1203852','d08');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2012_I1199269','d04');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2016_I1426515','d10-x01-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2016_I1426515','d11-x01-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2016_I1426515','d12-x01-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2016_I1426515','d13-x01-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2016_I1426515','d14-x01-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2016_I1426515','d15-x01-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2014_I1306615','d29');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1514251_EL','d01-x02-y01');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1514251_MU','d01-x02-y01');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1514251_EL','d01-x02-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1514251_MU','d01-x02-y02');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1514251_EL','d01-x02-y03');
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1514251_MU','d01-x02-y03');
INSERT INTO blacklist (anaid,pattern) VALUES('CMS_2017_I1518399','d02');
-- have to veto all these at the moment because contur doesn't know
-- how to handle weight differential xsecs presented as a 2D scatter.
INSERT INTO blacklist (anaid,pattern) VALUES('ATLAS_2017_I1598613_BB','d01');

-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448','d01-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448','d02-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448','d03-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448','d04-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448_Znunu','d01-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448_Znunu','d02-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448_Znunu','d03-x01-y01');
-- INSERT INTO blacklist VALUES('ATLAS_2017_I1609448_Znunu','d04-x01-y01');



CREATE TABLE IF NOT EXISTS whitelist (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    pattern TEXT NOT NULL,
    anaid   TEXT NOT NULL REFERENCES analysis(anaid)
);
-- W charm
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1282447','d03-x01-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1282447','d04-x01-y03');
--
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d01-x01-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d01-x02-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d02-x01-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d03-x01-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d03-x02-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d04-x01-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d04-x02-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d05-x03-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d05-x04-y01');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1279489','d05-x05-y01');
--
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d13');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d14');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d15');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d16');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d17');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d18');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d19');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d20');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d21');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d22');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d23');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d24');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d25');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d26');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d27');
INSERT INTO whitelist (anaid,pattern) VALUES('ATLAS_2014_I1307243','d28');
--
INSERT INTO whitelist (anaid,pattern) VALUES('CMS_2016_I1454211','d10');
INSERT INTO whitelist (anaid,pattern) VALUES('CMS_2016_I1454211','d12');

CREATE TABLE IF NOT EXISTS subpool (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    pattern TEXT NOT NULL,
    subanaid   INTEGER NOT NULL,
    anaid      TEXT NOT NULL REFERENCES analysis(anaid),
    UNIQUE(anaid,pattern)
);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1325553','d01-x01-y0[1-6]',0);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1325553','d02-x01-y0[1-6]',1);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1268975','d01-x01-y0[1-6]',0);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1268975','d02-x01-y0[1-6]',1);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1326641','d0[1-5]-x01-y01',0);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1326641','(d10|d0[6-9])-x01-y01',1);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('CMS_2014_I1298810','d0[1-6]-x01-y01',0);
-- check this next one, one of the .py entries had y02 listed
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('CMS_2014_I1298810','(d1[0-2]|d0[7-9])-x01-y01',1);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1307243','(d20|d1[3-9])-x01-y01',0);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2014_I1307243','d2[1-8]-x01-y01',1);
INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2013_I1263495','d01-x01-y0[13]',0);


INSERT INTO subpool (anaid,pattern,subanaid) VALUES('ATLAS_2016_I1457605','.',0);

CREATE TABLE IF NOT EXISTS normalization (
--  analysis anaid, plot pattern, norm factor for ref data, was mc plot area normalised by rivet?  (0=no, 1=yes)
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    pattern TEXT NOT NULL,
    norm    REAL NOT NULL,
    scalemc INT NOT NULL,
    anaid   TEXT NOT NULL REFERENCES analysis(anaid),
    UNIQUE(anaid,pattern)
);
-- this is BR to a single charged lepton, needed when the xsec is report as a W
-- and the generator reports the final state.
-- INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1319490_MU','d',0.108059,0);
-- INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1319490_EL','d',0.108059,0);
-- INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2014_I1303894','d',0.108059,0);

-- these are the integrated cross section of the plot, in pb
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1279489','d01',5.88,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1279489','d02',1.82,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1279489','d05',0.066,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1279489','d03',1.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2014_I1279489','d04',0.447,1);
-- these are the integrated cross section of the plot, in pb
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d23',1.45,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d24',1.03,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d25',0.97,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d02',14.96,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d03',14.96,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d04',14.96,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d14',14.96,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d26',14.96,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d05',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d06',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d07',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d08',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d09',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d10',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d15',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d17',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d18',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d19',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d20',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d21',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d22',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d27',537.10,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d11',5.59,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d12',5.59,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d13',5.59,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d16',5.59,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2015_I1408516','d28',5.59,1);
-- CMS single jet mass stuff here
-- WJETS. Cross section in pb
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d52',1.06,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d56',1.06,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d60',1.06,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d64',1.06,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d68',1.06,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d53',2.3,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d57',2.3,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d61',2.3,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d65',2.3,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d69',2.3,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d72',2.3,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d54',0.962,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d58',0.962,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d62',0.962,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d66',0.962,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d70',0.962,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d73',0.962,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d55',0.43,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d59',0.43,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d63',0.43,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d67',0.43,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d71',0.43,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_WJET','d74',0.43,1);
-- ZJETS. Cross section in pb
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d29',0.852,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d33',0.852,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d37',0.852,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d41',0.852,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d45',0.852,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d30',1.22,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d34',1.22,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d38',1.22,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d42',1.22,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d46',1.22,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d49',1.22,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d31',0.377,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d35',0.377,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d39',0.377,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d43',0.377,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d47',0.377,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d50',0.377,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d32',0.141,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d36',0.141,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d40',0.141,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d44',0.141,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d48',0.141,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('CMS_2013_I1224539_ZJET','d51',0.141,1);
-- 7 TeV WW cross section in fb
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2013_I1190187','d04-x01-y01',392.6,1);
-- 8 TeV b hadron cross section in fb
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2017_I1598613','d',17700000,1);
INSERT INTO normalization (anaid,pattern,norm,scalemc) VALUES('ATLAS_2017_I1598613_BB','d',17700000,1);
--
--COMMIT;
