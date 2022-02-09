```sql
-- showing the data
-- [4] query 1
-- userdata table
select *
from userdata;
```
| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| 24e82189-c190-4581-a87c-8e00fe3c8c15 | a\_zhukov@utb.cz | a\_zhukov | $2a$08$2YvnO8m.pMimr..Mi.jKrOgMQdkFxCj/zdOCrYtYzrC.yKcLWZrDy | 2022-02-09 19:28:55.759791 +00:00 |
| 1a14d645-1db6-45f3-aef7-2e1e85db471d | my\_super\_beautiful\_wife@utb.cz | beautiful\_wife | $2a$08$0QYArfXugfzuylbT90drKO4h2lW1BvJuSH1pAKSFTKv.apZTf.EqC | 2022-02-09 19:28:55.854958 +00:00 |
| 287724b6-3bae-434e-aba5-776a9887e899 | my\_kid\_zlata@utb.cz | zlata | $2a$08$eyDQXFm1AQDloqhKkzdeZ.kz9dzKCe8wQ33Qjsibk/mwnuMLHHbu6 | 2022-02-09 19:28:55.854958 +00:00 |
| 7ae37fd8-eed5-4962-b3a1-a32b40248c54 | my\_kid\_varvara@utb.cz | varvara | $2a$08$sFFXlWS5z7zKoFvZhcrRlu4z90XlsZ1i38oomZEt8Sw3PlpJ9Ft7O | 2022-02-09 19:28:55.854958 +00:00 |
| 8b0232dc-297d-4107-99cb-023545298c8e | my\_kid\_georgy@utb.cz | georgy | $2a$08$Mj1FhccaZhj4wEsJdxFPL.W/YEExn3EK6VHmukptBQyQIvIYriKeG | 2022-02-09 19:28:55.854958 +00:00 |
| 6a1b0d6e-ffc3-4d77-8a13-ed8c016fcb50 | our\_babushka@utb.cz | babushka | $2a$08$nN4x.oR28ajAs1nOaqjAHO2WckXjm.lO9VNY/OlxvkJrUzGQvYr5m | 2022-02-09 19:28:55.854958 +00:00 |


```sql
-- [4] query 2
-- settings table
select *
from settings;
```
| id | user\_id | debug | underwork\_event | overwork\_event | created\_at |
| :--- | :--- | :--- | :--- | :--- | :--- |
| b8856707-3a6e-4ffc-a31f-dc74f36d9301 | 24e82189-c190-4581-a87c-8e00fe3c8c15 | true | underwork | overwork | 2022-02-09 19:28:56.017556 +00:00 |
| f29bd227-c6f0-4631-8b9c-634b53da0da6 | 1a14d645-1db6-45f3-aef7-2e1e85db471d | true | underwork | overwork | 2022-02-09 19:28:56.072369 +00:00 |
| 82a6036e-0eec-4b5a-8d20-37e17ad7eb0d | 287724b6-3bae-434e-aba5-776a9887e899 | false | underwork | overwork | 2022-02-09 19:28:56.150797 +00:00 |
| 5583aae5-6b4b-426d-bfe6-bd84d056e74d | 7ae37fd8-eed5-4962-b3a1-a32b40248c54 | true | underwork | overwork | 2022-02-09 19:28:56.230532 +00:00 |
| 3a1ca9fb-6fd5-4054-b6b6-8f3dab4d2e6a | 8b0232dc-297d-4107-99cb-023545298c8e | false | underwork | overwork | 2022-02-09 19:28:56.303772 +00:00 |


```sql
-- [4] query 3
-- change history table
select *
from change_history;
```
| id | settings | diff | created\_at |
| :--- | :--- | :--- | :--- |
| 968c18c0-b2e9-417a-8d2d-80a1a2b246f6 | b8856707-3a6e-4ffc-a31f-dc74f36d9301 | some diff here 1 | 2022-02-09 19:28:56.370519 +00:00 |
| 6b4f4717-0322-42df-a161-c0e16945845a | b8856707-3a6e-4ffc-a31f-dc74f36d9301 | some diff here 2 | 2022-02-09 19:28:56.457345 +00:00 |
| 1346eddc-3298-4060-b218-1febea6afadd | f29bd227-c6f0-4631-8b9c-634b53da0da6 | some diff here | 2022-02-09 19:28:56.542405 +00:00 |
| 122e4ccc-164c-4379-97bb-8023977477ce | 82a6036e-0eec-4b5a-8d20-37e17ad7eb0d | some diff here | 2022-02-09 19:28:56.622746 +00:00 |
| e6bba863-fefa-4aef-95d6-339207e7ac40 | 5583aae5-6b4b-426d-bfe6-bd84d056e74d | some diff here | 2022-02-09 19:28:56.684572 +00:00 |
| 1213dd44-b522-4eb7-8189-289be7c2fe37 | 3a1ca9fb-6fd5-4054-b6b6-8f3dab4d2e6a | some diff here 1 | 2022-02-09 19:28:56.764784 +00:00 |
| 8c0bbb2e-25ef-4135-af2d-cd721e003501 | 3a1ca9fb-6fd5-4054-b6b6-8f3dab4d2e6a | some diff here 2 | 2022-02-09 19:28:56.865899 +00:00 |
| 3b1c5fa8-a6dd-451a-9ab9-6b7756101b49 | 3a1ca9fb-6fd5-4054-b6b6-8f3dab4d2e6a | some diff here 3 | 2022-02-09 19:28:56.977208 +00:00 |


```sql
-- [4] query 4
--  google calendar table
select *
from google_calendar_creds;
```

| id | settings | private\_key\_id | calendar\_id | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| e1145c72-c954-427f-859c-16b2b9df178d | b8856707-3a6e-4ffc-a31f-dc74f36d9301 | 0c0c4d | 7cf9b64935b983fd172b541981747f2@group.calendar.google.com | 2022-02-09 19:28:57.087651 +00:00 |
| 81a6af19-fd75-4280-84f8-e07d1d36688b | f29bd227-c6f0-4631-8b9c-634b53da0da6 | d29cf8f877d | 28cba339b77e499fca8b62af7f10711@group.calendar.google.com | 2022-02-09 19:28:57.219239 +00:00 |
| 7ec6ea9f-e534-4a9c-bd0e-1d04cce56889 | 5583aae5-6b4b-426d-bfe6-bd84d056e74d | e73f3a | ad3e79c2189bd2f617a6e8b4d9d6565@group.calendar.google.com | 2022-02-09 19:28:57.335134 +00:00 |
| 8fccac1a-c9e9-4e68-8cb0-8f1b8bf70287 | 82a6036e-0eec-4b5a-8d20-37e17ad7eb0d | 5b40f88fad44c9327435a0 | 20142a52480dcd931be10855565582b@group.calendar.google.com | 2022-02-09 19:28:57.477752 +00:00 |
| 433395c3-2d3a-47a1-9f53-68103cc27123 | 3a1ca9fb-6fd5-4054-b6b6-8f3dab4d2e6a | 2039ce574d79f5212befd0976fc8 | 129013b3876025c0771fcf42438fcd2@group.calendar.google.com | 2022-02-09 19:28:57.622916 +00:00 |


```sql
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
```

| username | diff | created\_at |
| :--- | :--- | :--- |
| georgy | some diff here 3 | 2022-02-09 19:28:56.977208 +00:00 |
| georgy | some diff here 2 | 2022-02-09 19:28:56.865899 +00:00 |
| georgy | some diff here 1 | 2022-02-09 19:28:56.764784 +00:00 |


```sql
-- authentication (if no result - not authenticated)

-- [4] query 6
-- [4.4] using crypt function
--   example with good password
select *
from userdata
where userdata.email = 'a_zhukov@utb.cz'
  and password = crypt('some password', password);
```

| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| 24e82189-c190-4581-a87c-8e00fe3c8c15 | a\_zhukov@utb.cz | a\_zhukov | $2a$08$2YvnO8m.pMimr..Mi.jKrOgMQdkFxCj/zdOCrYtYzrC.yKcLWZrDy | 2022-02-09 19:28:55.759791 +00:00 |


```sql
-- [4] query 7
--   example with bad password
select *
from userdata
where userdata.email = 'a_zhukov@utb.cz'
  and password = crypt('bad password', password);
```

Empty table here

```sql
-- [4] query 8 (with join 2)
-- get calendars_ids and email for users which activated debug mode in settings
select google_calendar_creds.calendar_id
from google_calendar_creds
         join settings s on s.id = google_calendar_creds.settings
where s.debug = true;
```

| calendar\_id |
| :--- |
| 7cf9b64935b983fd172b541981747f2@group.calendar.google.com |
| 28cba339b77e499fca8b62af7f10711@group.calendar.google.com |
| ad3e79c2189bd2f617a6e8b4d9d6565@group.calendar.google.com |


```sql
-- [4] query 9
-- how much users are studied in UTB
select count(*) as NumberOfUTBstudents
from userdata
where email like '%@utb.cz';
```

| numberofutbstudents |
| :--- |
| 6 |


```sql
-- [4] query 10
-- [4.7] updating
-- update Varvara's password to 'some new password'
update userdata
set password = crypt('some new password', gen_salt('bf', 8))
where email = 'my_kid_varvara@utb.cz';
```

```sql
-- [4] query 11
-- ensure Varvara password updated
select *
from userdata
where userdata.email = 'my_kid_varvara@utb.cz'
  and password = crypt('some new password', password);
```

| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| 7ae37fd8-eed5-4962-b3a1-a32b40248c54 | my\_kid\_varvara@utb.cz | varvara | $2a$08$dXWHn5PnyJiaZ7DIdP02E.3gptCTfVKZQHcbTrDF.FMsNVeEBJiry | 2022-02-09 19:28:55.854958 +00:00 |


```sql
-- some fictional additional queries to fulfill the needs of the acceptance criteria

-- [4] query 12 (with join 3)
-- get users with activated debug mode in settings
select userdata.username, settings.debug
from userdata
         inner join settings on settings.user_id = userdata.id
where settings.debug is true;
```

| username | debug |
| :--- | :--- |
| a\_zhukov | true |
| beautiful\_wife | true |
| varvara | true |


```sql
-- [4] query 13 (with join 4)
-- Get user ids where private key id ends with number
select settings.user_id, gcc.private_key_id
from settings
         inner join google_calendar_creds gcc on settings.id = gcc.settings
where gcc.private_key_id ~ '\d$';
```

| user\_id | private\_key\_id |
| :--- | :--- |
| 287724b6-3bae-434e-aba5-776a9887e899 | 5b40f88fad44c9327435a0 |
| 8b0232dc-297d-4107-99cb-023545298c8e | 2039ce574d79f5212befd0976fc8 |


```sql
-- [4] query 14 (with join 5)
-- Show users with the biggest number of updated settings. Order by max number of updates
select userdata.username, count(ch.id) as config_changed
from userdata
         join settings s on userdata.id = s.user_id
         join change_history ch on s.id = ch.settings
group by userdata.username
order by config_changed desc;
```

| username | config\_changed |
| :--- | :--- |
| georgy | 3 |
| a\_zhukov | 2 |
| beautiful\_wife | 1 |
| varvara | 1 |
| zlata | 1 |


```sql
-- [4] query 15
-- [4.6] deleting
-- Georgy decided to remove his account from life-work balance app
--  because he is 10 month old and not interesting in balance
delete
from userdata
where username = 'georgy';
```
