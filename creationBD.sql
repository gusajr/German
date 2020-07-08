CREATE TABLE VERB_GROUP
(
	group_key 			integer primary key generated always as identity,
	mnemonic_spanish	varchar(100) not null
)

CREATE TABLE VERB
(
	verb_key			integer primary key generated always as identity,
	infinitive 			varchar(100) not null,
	perfect 			varchar(100) not null,
	meaning_spanish 	varchar(100) not null,
	group_key 			integer null,
	
	foreign key (group_key) references VERB_GROUP(group_key)
)

CREATE TABLE WORD
(
	word_key			integer generated always as identity,
	word				varchar(100) not null,
	meaning_spanish		varchar(100) not null,
	article				varchar(5) not null
)

CREATE TABLE PHRASE
(
	phrase_key			integer generated always as identity,
	phrase				varchar(100) not null,
	meaning_spanish		varchar(150) not null
)