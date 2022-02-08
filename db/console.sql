-- showing the data
select *
from userdata;
select *
from settings;
select *
from change_history;
select *
from google_calendar_creds;


-- get diffs from most recent to least recent for georgy, after certain
--   timestamp. May be needed for rolling back setting to this timestamp
select userdata.username, change_history.diff, change_history.created_at
from userdata
         join settings on userdata.id = settings.user_id
         join change_history on settings.id = change_history.settings
where userdata.username = 'georgy'
  and change_history.created_at >=
      '2022-01-27 21:59:33.372258 +00:00'::timestamptz
order by userdata.username,
         change_history.created_at desc;

-- authentication (if no result - not authenticated)

--   example with good password
select *
from userdata
where userdata.email = 'a_zhukov@utb.cz'
  and password = crypt('some password', password);

--   example with bad password
select *
from userdata
where userdata.email = 'a_zhukov@utb.cz'
  and password = crypt('bad password', password);

-- get calendars_ids and email for users which activated debug mode in settings
select google_calendar_creds.calendar_id
from google_calendar_creds
         join settings s on s.id = google_calendar_creds.settings
where s.debug = true;

-- how much users are studied in UTB
select count(*) as NumberOfUTBstudents
from userdata
where email like '%@utb.cz';

-- update Varvara's password to 'some new password'
update userdata
set password = crypt('some new password', gen_salt('bf', 8))
where email = 'my_kid_varvara@utb.cz';

select *
from userdata
where userdata.email = 'my_kid_varvara@utb.cz'
  and password = crypt('some new password', password);

-- Georgy decided to remove his account from life-work balance app
--  because he is 10 month old and not interesting in balance
delete
from userdata
where username = 'georgy'
