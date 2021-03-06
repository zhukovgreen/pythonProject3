-- showing the data
-- [4] query 1
-- userdata table
select *
from userdata;

-- [4] query 2
-- settings table
select *
from settings;

-- [4] query 3
-- change history table
select *
from change_history;

-- [4] query 4
--  google calendar table
select *
from google_calendar_creds;

-- [4] query 5 (with join 1)
-- [4.3] aggregation
-- [4.2] with condition
-- get diffs from most recent to least recent for georgy, after certain
--   timestamp. May be needed for rolling back setting to this timestamp
select userdata.username, change_history.diff, change_history.created_at
from userdata
         join settings on userdata.id = settings.user_id
         join change_history on settings.id = change_history.settings
where userdata.username = 'georgy'
  and change_history.created_at >=
      '2022-01-27 21:59:33.372258 +00:00'
    ::timestamptz
order by userdata.username,
    change_history.created_at desc;

-- authentication (if no result - not authenticated)

-- [4] query 6
-- [4.4] using crypt function
--   example with good password
select *
from userdata
where userdata.email = 'a_zhukov@utb.cz'
  and password = crypt('some password', password);

-- [4] query 7
--   example with bad password
select *
from userdata
where userdata.email = 'a_zhukov@utb.cz'
  and password = crypt('bad password', password);

-- [4] query 8 (with join 2)
-- get calendars_ids and email for users which activated debug mode in settings
select google_calendar_creds.calendar_id
from google_calendar_creds
         join settings s on s.id = google_calendar_creds.settings
where s.debug = true;

-- [4] query 9
-- how much users are studied in UTB
select count(*) as NumberOfUTBstudents
from userdata
where email like '%@utb.cz';

-- [4] query 10
-- [4.7] updating
-- update Varvara's password to 'some new password'
update userdata
set password = crypt('some new password', gen_salt('bf', 8))
where email = 'my_kid_varvara@utb.cz';

-- [4] query 11
-- ensure Varvara password updated
select *
from userdata
where userdata.email = 'my_kid_varvara@utb.cz'
  and password = crypt('some new password', password);


-- some fictional additional queries to fulfill the needs of the acceptance criteria

-- [4] query 12 (with join 3)
-- get users with activated debug mode in settings
select userdata.username, settings.debug
from userdata
         inner join settings on settings.user_id = userdata.id
where settings.debug is true;

-- [4] query 13 (with join 4)
-- Get user ids where private key id ends with number
select settings.user_id, gcc.private_key_id
from settings
         inner join google_calendar_creds gcc on settings.id = gcc.settings
where gcc.private_key_id ~ '\d$';

-- [4] query 14 (with join 5)
-- Show users with the biggest number of updated settings. Order by max number of updates
select userdata.username, count(ch.id) as config_changed
from userdata
         join settings s on userdata.id = s.user_id
         join change_history ch on s.id = ch.settings
group by userdata.username
order by config_changed desc;

-- [4] query 15
-- [4.6] deleting
-- Georgy decided to remove his account from life-work balance app
--  because he is 10 month old and not interesting in balance
delete
from userdata
where username = 'georgy';