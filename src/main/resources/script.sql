create table  Film(
    id decimal primary key AUTO_INCREMENT,
    name  varchar (1000),
    duration int,
    id_ticket numeric,
    foreign key(id_ticket),
    REFERENCES (Ticket(id))
);
create table Ticket(
    id decimal primary key AUTO_INCREMENT,
    number int,
    id_session numeric ,
    foreign key(id_session) ,
    references (SESSION (id))
);
create table Session(
    id  decimal  primary key AUTO_INCREMENT,
    time TIMESTAMP ,
    id_ticket numeric,
    price DECIMAL(7,2) ,
    foreign key(id_ticket),
    REFERENCES (Ticket(id))
);