create table if not exists appuser
(
    id       uuid primary key,
    username text,
    password text
);

create table if not exists approles
(
    id   uuid primary key,
    name text
);

create table if not exists appuser_approles
(
    appuser_id  uuid references appuser (id),
    approles_id uuid references approles (id),
    CONSTRAINT appuser_approles_pkey PRIMARY KEY (appuser_id, approles_id)
);

insert into appuser
values ('3ba8bcc4-cafe-11ed-afa1-0242ac120002', 'privet', '12345');
insert into approles
values ('64863d7e-cafe-11ed-afa1-0242ac120002', 'ROLE_ADMIN');
insert into appuser_approles
values ('3ba8bcc4-cafe-11ed-afa1-0242ac120002', '64863d7e-cafe-11ed-afa1-0242ac120002');