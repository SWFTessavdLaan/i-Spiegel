CREATE TABLE "ISPIEGEL_DATABRON" 
(	"DATABRONNAAM" VARCHAR2(255 BYTE) NOT NULL ENABLE, 
	"APPLICATIENAAM" VARCHAR2(255 BYTE), 
	"GEMEENTECODE" VARCHAR2(255 BYTE), 
	"PROVIDER" VARCHAR2(255 BYTE), 
	"CONNECTIONSTRING" VARCHAR2(255 BYTE), 
	"QUERY" CLOB, 
	 CONSTRAINT "ISPIEGEL_DATABRON_PK" PRIMARY KEY ("DATABRONNAAM")
);

CREATE TABLE "ISPIEGEL_CONTROLE" 
(	"CONTROLENAAM" VARCHAR2(255 BYTE) NOT NULL ENABLE, 
	"DATABRONNAAM" VARCHAR2(255 BYTE), 
	"CONTROLEKOLOM" VARCHAR2(255 BYTE), 
	"SLEUTELKOLOM" VARCHAR2(255 BYTE), 
	"CONTROLEWAARDE" VARCHAR2(255 BYTE), 
	"ACTIEF" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "ISPIEGEL_CONTROLE_PK" PRIMARY KEY ("CONTROLENAAM")
);

CREATE TABLE "GEGEVENSBEHEER"."ISPIEGEL_VERGELIJKING" 
(	"VERGELIJKINGNAAM" VARCHAR2(255 BYTE) NOT NULL ENABLE, 
	"REFERENTIEDATABRONNAAM" VARCHAR2(255 BYTE), 
	"ANALYSEDATABRONNAAM" VARCHAR2(255 BYTE), 
	"VELDTOEWIJZING" CLOB, 
	"ACTIEF" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "ISPIEGEL_VERGELIJKING_PK" PRIMARY KEY ("VERGELIJKINGNAAM")
);

CREATE TABLE "ISPIEGEL_OUTPUT" 
(	"OUTPUTID" NUMBER NOT NULL ENABLE, 
	"TIJDSTIP" DATE, 
	"VERGELIJKINGNAAM" VARCHAR2(255 BYTE), 
	"CONFIGURATIE" CLOB, 
	"REFERENTIENAAM" VARCHAR2(255 BYTE), 
	"ANALYSENAAM" VARCHAR2(255 BYTE), 
	"REFERENTIEQUERY" CLOB, 
	"ANALYSEQUERY" CLOB, 
	"REFERENTIEAPPLICATIE" VARCHAR2(255 BYTE), 
	"ANALYSEAPPLICATIE" VARCHAR2(255 BYTE), 
	"REFERENTIEGEMEENTECODE" VARCHAR2(255 BYTE), 
	"ANALYSEGEMEENTECODE" VARCHAR2(255 BYTE), 
	"PERCENTAGE" FLOAT(126), 
	"REFERENTIEAANTAL" NUMBER, 
	"ANALYSEAANTAL" NUMBER, 
	"GELIJKAANTAL" NUMBER, 
	"AFWIJKINGAANTAL" NUMBER, 
	"NIETGEVONDENAANTAL" NUMBER, 
	"LOOPTIJD" VARCHAR2(255 BYTE), 
	 CONSTRAINT "ISPIEGEL_OUTPUT_PK" PRIMARY KEY ("OUTPUTID")
);
CREATE TABLE "ISPIEGEL_OUTPUTLINE" 
 (	"OUTPUTID" NUMBER NOT NULL ENABLE, 
	"REGELNUMMER" NUMBER NOT NULL ENABLE, 
	"STATUS" VARCHAR2(255 BYTE), 
	"CONTROLE" VARCHAR2(255 BYTE), 
	"SLEUTEL" CLOB, 
	"ANALYSEWAARDE" CLOB, 
	"REFERENTIEWAARDE" CLOB, 
	"ANALYSEREGEL" CLOB, 
	"REFERENTIEREGEL" CLOB, 
	 CONSTRAINT "ISPIEGEL_OUTPUTLINE_PK" PRIMARY KEY ("OUTPUTID", "REGELNUMMER")
);