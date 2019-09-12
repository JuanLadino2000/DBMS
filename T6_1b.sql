--Conjuntos de entidades
create table author(name varchar(20), address varchar(20), URL varchar(20), primary key(name));

create table publisher(name varchar(20), address varchar(20), phone int, URL varchar(20), primary key(name));

create table customer(email varchar(20), name varchar(20), address varchar(20), phone int, primary key(email));

create table book(ISBN varchar(20), title varchar(20), year numeric(4,0), price numeric(6,2), primary key(ISBN));

create table warehouse(code numeric(5,0), address varchar(20), phone numeric(11,0), primary key(code));

create table shopping_basket(basket_id numeric(4,0), primary key(basket_id));

--Conjuntos de Relaciones

create table written_by(name varchar(20),ISBN varchar(20), foreign key(name) references author, foreign key(ISBN) references book);

create table published_by(name varchar(20),ISBN varchar(20), foreign key(name) references publisher, foreign key(ISBN) references book);

create table basket_of(email varchar(20),basket_id numeric(4,0), foreign key(email) references customer, foreign key(basket_id) references shopping_basket);

create table contains(ISBN varchar(20),basket_id numeric(4,0),number numeric(5,0), foreign key(ISBN) references book, foreign key(basket_id) references shopping_basket);

create table stocks(ISBN varchar(20), code numeric(5,0),number numeric(5,0), foreign key(ISBN) references book, foreign key(code) references warehouse);

