drop schema public cascade;
create schema public;

create table if not exists userdata
(
    id         uuid                     default gen_random_uuid() not null primary key,
    email      text                                               not null,
    username   text unique                                        not null,
    password   text                                               not null,
    created_at timestamp with time zone default now()
);

create table if not exists settings
(
    id              uuid                     default gen_random_uuid() not null primary key,
    user_id         uuid unique                                        not null references userdata on delete cascade,
    debug           bool                     default false             not null,
    underwork_event text                     default text('underwork') not null,
    overwork_event  text                     default text('overwork')  not null,
    created_at      timestamp with time zone default now()             not null
);

create table if not exists google_calendar_creds
(
    id             uuid                     default gen_random_uuid() not null primary key,
    settings       uuid unique                                        not null references settings on delete cascade,
    private_key_id text                                               not null,
    calendar_id    text                                               not null,
    created_at     timestamp with time zone default now()             not null
);

create table if not exists change_history
(
    id         uuid                     default gen_random_uuid() not null primary key,
    settings   uuid                                               not null references settings on delete cascade,
    diff       text,
    created_at timestamp with time zone default now()             not null
);

-- extension needed for encrypting the user password
create EXTENSION pgcrypto;

-- adding users
insert into userdata(email, username, password)
values ('a_zhukov@utb.cz', 'a_zhukov',
        crypt('some password', gen_salt('bf', 8)));

insert into userdata(email, username, password)
values ('my_super_beautiful_wife@utb.cz', 'beautiful_wife',
        crypt('some password', gen_salt('bf', 8))),
       ('my_kid_zlata@utb.cz', 'zlata',
        crypt('some password', gen_salt('bf', 8))),
       ('my_kid_varvara@utb.cz', 'varvara',
        crypt('some password', gen_salt('bf', 8))),
       ('my_kid_georgy@utb.cz', 'georgy',
        crypt('some password', gen_salt('bf', 8))),
       ('our_babushka@utb.cz', 'babushka',
        crypt('some password', gen_salt('bf', 8)));

-- insert settings for the given users
insert into settings(user_id, debug)
select id, true
from userdata
where username = 'a_zhukov';

insert into settings(user_id, debug)
select id, true
from userdata
where username = 'beautiful_wife';

insert into settings(user_id, debug)
select id, false
from userdata
where username = 'zlata';

insert into settings(user_id, debug)
select id, true
from userdata
where username = 'varvara';

insert into settings(user_id, debug)
select id, false
from userdata
where username = 'georgy';

-- insert some diffs change history

insert into change_history(settings, diff)
select settings.id, 'some diff here 1'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'a_zhukov';

insert into change_history(settings, diff)
select settings.id, 'some diff here 2'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'a_zhukov';

insert into change_history(settings, diff)
select settings.id, 'some diff here'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'beautiful_wife';

insert into change_history(settings, diff)
select settings.id, 'some diff here'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'zlata';

insert into change_history(settings, diff)

select settings.id, 'some diff here'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'varvara';

insert into change_history(settings, diff)
select settings.id, 'some diff here 1'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'georgy';

insert into change_history(settings, diff)
select settings.id, 'some diff here 2'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'georgy';

insert into change_history(settings, diff)
select settings.id, 'some diff here 3'
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'georgy';

-- insert google cal settings
insert into google_calendar_creds(settings, private_key_id, calendar_id)
select settings.id,
       substr(md5(random()::text), 0, (random() * 32)::int),
       concat(substr(md5(random()::text), 0, 32),
              '@group.calendar.google.com')
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'a_zhukov';

insert into google_calendar_creds(settings, private_key_id, calendar_id)
select settings.id,
       substr(md5(random()::text), 0, (random() * 32)::int),
       concat(substr(md5(random()::text), 0, 32),
              '@group.calendar.google.com')
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'beautiful_wife';

insert into google_calendar_creds(settings, private_key_id, calendar_id)
select settings.id,
       substr(md5(random()::text), 0, (random() * 32)::int),
       concat(substr(md5(random()::text), 0, 32),
              '@group.calendar.google.com')
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'varvara';

insert into google_calendar_creds(settings, private_key_id, calendar_id)
select settings.id,
       substr(md5(random()::text), 0, (random() * 32)::int),
       concat(substr(md5(random()::text), 0, 32),
              '@group.calendar.google.com')
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'zlata';

insert into google_calendar_creds(settings, private_key_id, calendar_id)
select settings.id,
       substr(md5(random()::text), 0, (random() * 32)::int),
       concat(substr(md5(random()::text), 0, 32),
              '@group.calendar.google.com')
from settings
         right join userdata
                    on settings.user_id = userdata.id
where username = 'georgy';
