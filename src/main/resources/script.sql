create table  Film(
    id numeric primary key AUTO_INCREMENT,
    name  varchar (1000),
    duration int,
    id_ticket numeric,
    foreign key(id_ticket),
    REFERENCES (Ticket(id))
);
create table Ticket(
    id numeric primary key AUTO_INCREMENT,
    number int,
    id_session numeric ,
    foreign key(id_session) ,
    references (SESSION (id))
);
create table Session(
    id  numeric  primary key AUTO_INCREMENT,
    time DATE,
    id_ticket numeric,
    price numeric ,
    foreign key(id_ticket),
    REFERENCES (Ticket(id))
);