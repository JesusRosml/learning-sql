-- LLave primaria compuesta
CREATE TABLE usersDual (
	id1 INT,
	id2 INT,
	PRIMARY KEY ( id1, id2 ) -- id1 y id2 puede que no sean unicos pero la combinación de ambos si debe serlo
);