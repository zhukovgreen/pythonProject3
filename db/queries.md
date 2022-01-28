```sql
-- showing the data
select *
from userdata;
select *
from settings;
select *
from change_history;
select *
from google_calendar_creds;
```
| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| be59ec2c-140a-4ce3-a6dc-ccf588b2432e | a\_zhukov@utb.cz | a\_zhukov | $2a$08$qUvcGrgvRHio2ay6LmgRB.TB7O9JEWvz1vlOAs9zjjoL9//MiBfom | 2022-01-28 23:30:18.932484 +00:00 |
| f6288f2d-2591-4d53-81ba-d59b8f3b4e76 | my\_super\_beautiful\_wife@utb.cz | beautiful\_wife | $2a$08$0qFo20kr2bV/sh3kWY7S3e6gAZhYEt1xYLVFa2C4M24a2eA87oMMy | 2022-01-28 23:30:19.021439 +00:00 |
| 675b6334-6187-4de6-8f8a-686d42ea29a4 | my\_kid\_zlata@utb.cz | zlata | $2a$08$xLmEhvS92SaPJIlEJVxttOIB695zSI4I5lFIAz4uyx.bar5yoRWT2 | 2022-01-28 23:30:19.021439 +00:00 |
| b4f41f0f-3556-47bb-b702-7bd4364e6a54 | my\_kid\_varvara@utb.cz | varvara | $2a$08$BFbpi/zdFFrrmYypxGAMG.EmO91XXnpkbMVH3mk75kZHqfMzZfube | 2022-01-28 23:30:19.021439 +00:00 |
| 37ade8bf-1b92-4703-a314-f57e3f317e91 | my\_kid\_georgy@utb.cz | georgy | $2a$08$48hcSOrQXa5aHcuMMoDFS.Pv84oBja..9HoqGKkiGdlbQovogG/bG | 2022-01-28 23:30:19.021439 +00:00 |
| d5255cb3-426c-47ee-a3ae-f3adb02a3b48 | our\_babushka@utb.cz | babushka | $2a$08$sn6w8/NhCpCBzTdSpVPfseqsITp3/yESxxJ8f68Z/WZv2u4Fmo7Gu | 2022-01-28 23:30:19.021439 +00:00 |

| id | user\_id | debug | underwork\_event | overwork\_event | created\_at |
| :--- | :--- | :--- | :--- | :--- | :--- |
| fc851ef1-0f82-438b-9d1a-b752b7f8cddc | be59ec2c-140a-4ce3-a6dc-ccf588b2432e | true | underwork | overwork | 2022-01-28 23:30:19.178978 +00:00 |
| ddbd5d1d-dbe6-428f-a3af-7f05d98ff11d | f6288f2d-2591-4d53-81ba-d59b8f3b4e76 | true | underwork | overwork | 2022-01-28 23:30:19.237195 +00:00 |
| 0cdeef47-90d2-4047-b960-8096b3c562c3 | 675b6334-6187-4de6-8f8a-686d42ea29a4 | false | underwork | overwork | 2022-01-28 23:30:19.303168 +00:00 |
| 8192a0b1-d152-41f0-82f7-40a41eb385df | b4f41f0f-3556-47bb-b702-7bd4364e6a54 | true | underwork | overwork | 2022-01-28 23:30:19.373329 +00:00 |
| 03821f05-0cbb-42d9-a67b-12a9a75db55b | 37ade8bf-1b92-4703-a314-f57e3f317e91 | false | underwork | overwork | 2022-01-28 23:30:19.484577 +00:00 |

| id | settings | diff | created\_at |
| :--- | :--- | :--- | :--- |
| 9a78eb15-4181-409e-a806-c0a15298a5ea | fc851ef1-0f82-438b-9d1a-b752b7f8cddc | some diff here 1 | 2022-01-28 23:30:19.550615 +00:00 |
| 480bf264-8fb6-4b01-b586-b01398b22709 | fc851ef1-0f82-438b-9d1a-b752b7f8cddc | some diff here 2 | 2022-01-28 23:30:19.608395 +00:00 |
| 12f28eaa-263c-4510-9b03-bdb4f8c589d7 | ddbd5d1d-dbe6-428f-a3af-7f05d98ff11d | some diff here | 2022-01-28 23:30:19.678764 +00:00 |
| 8095c0b0-6395-4ae2-bdd5-1c229b1bda02 | 0cdeef47-90d2-4047-b960-8096b3c562c3 | some diff here | 2022-01-28 23:30:19.729055 +00:00 |
| 85e29803-96e8-4a27-a652-950ebbdfef1b | 8192a0b1-d152-41f0-82f7-40a41eb385df | some diff here | 2022-01-28 23:30:19.780706 +00:00 |
| fca70954-f43e-4b9e-95d3-443300537b4a | 03821f05-0cbb-42d9-a67b-12a9a75db55b | some diff here 1 | 2022-01-28 23:30:19.853458 +00:00 |
| 9ca16b99-d8b2-456b-bd4b-d8c0ef0ab9e0 | 03821f05-0cbb-42d9-a67b-12a9a75db55b | some diff here 2 | 2022-01-28 23:30:19.900444 +00:00 |
| 0989c592-f517-42a9-8a62-8a9e17de055c | 03821f05-0cbb-42d9-a67b-12a9a75db55b | some diff here 3 | 2022-01-28 23:30:19.949936 +00:00 |

| id | settings | private\_key\_id | calendar\_id | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| 6e5de72e-8d72-49e4-8caf-feda6111b7ae | fc851ef1-0f82-438b-9d1a-b752b7f8cddc | 9db071249d1f25873bb74c620 | 96f54e3199454d1fb8e5c839382b02d@group.calendar.google.com | 2022-01-28 23:30:20.002841 +00:00 |
| 9212e154-ab4b-4d79-8fd4-eb23bf31ba5d | ddbd5d1d-dbe6-428f-a3af-7f05d98ff11d |  | aa902c9badb1f89aa1f376ab8640089@group.calendar.google.com | 2022-01-28 23:30:20.056401 +00:00 |
| e16f2895-56c8-4b34-8c20-5c0f23dab9e8 | 8192a0b1-d152-41f0-82f7-40a41eb385df | 6695f | c3c8a0d51e537657008a7f8b12ad332@group.calendar.google.com | 2022-01-28 23:30:20.117848 +00:00 |
| b33d67fb-b4b8-4fd5-be52-6a2dd707f98d | 0cdeef47-90d2-4047-b960-8096b3c562c3 | 4196d3f22dde8727a612c92dcf | d012a37cbcfe2a5f1a34c0e54c525b3@group.calendar.google.com | 2022-01-28 23:30:20.188765 +00:00 |
| 038ae10b-9ede-4048-9505-d116b17fb957 | 03821f05-0cbb-42d9-a67b-12a9a75db55b | a435 | 0f93ba3338d3d150f2e9e807a9856d1@group.calendar.google.com | 2022-01-28 23:30:20.243073 +00:00 |


```sql
-- get diffs from most recent to least recent for georgy, after certain
--   timestamp. May be needed for rolling back setting to this timestamp
select userdata.username, change_history.diff, change_history.created_at
from userdata
         join settings on userdata.id = settings.user_id
         join change_history on settings.id = change_history.settings
where userdata.username = 'georgy'
  and change_history.created_at >=
      timestamp '2022-01-27 21:59:33.372258 +00:00'
order by userdata.username,
         change_history.created_at desc;

```

| username | diff | created\_at |
| :--- | :--- | :--- |
| georgy | some diff here 3 | 2022-01-28 23:30:19.949936 +00:00 |
| georgy | some diff here 2 | 2022-01-28 23:30:19.900444 +00:00 |
| georgy | some diff here 1 | 2022-01-28 23:30:19.853458 +00:00 |


```sql
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

```

| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| be59ec2c-140a-4ce3-a6dc-ccf588b2432e | a\_zhukov@utb.cz | a\_zhukov | $2a$08$qUvcGrgvRHio2ay6LmgRB.TB7O9JEWvz1vlOAs9zjjoL9//MiBfom | 2022-01-28 23:30:18.932484 +00:00 |

Second query is empty

```sql
-- get calendars_ids and email for users which activated debug mode in settings
select google_calendar_creds.calendar_id
from google_calendar_creds
         join settings s on s.id = google_calendar_creds.settings
where s.debug = true;

```

| calendar\_id |
| :--- |
| 96f54e3199454d1fb8e5c839382b02d@group.calendar.google.com |
| aa902c9badb1f89aa1f376ab8640089@group.calendar.google.com |
| c3c8a0d51e537657008a7f8b12ad332@group.calendar.google.com |


```sql
-- how much users are studied in UTB
select count(*) as NumberOfUTBstudents
from userdata
where email like '%@utb.cz';

```

| numberofutbstudents |
| :--- |
| 6 |


```sql
-- update Varvara's password to 'some new password'
update userdata
set password = crypt('some new password', gen_salt('bf', 8))
where email = 'my_kid_varvara@utb.cz';

select *
from userdata
where userdata.email = 'my_kid_varvara@utb.cz'
  and password = crypt('some new password', password);

```

| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| b4f41f0f-3556-47bb-b702-7bd4364e6a54 | my\_kid\_varvara@utb.cz | varvara | $2a$08$oUW461qyyS6xzdVVRjyGzOjSYuURda10Szh4UFnFKPkWM56kPJTxa | 2022-01-28 23:30:19.021439 +00:00 |


```sql
-- Georgy decided to remove his account from life-work balance app
--  because he is 10 month old and not interesting in balance
delete
from userdata
where username = 'georgy'

```

| id | email | username | password | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| be59ec2c-140a-4ce3-a6dc-ccf588b2432e | a\_zhukov@utb.cz | a\_zhukov | $2a$08$qUvcGrgvRHio2ay6LmgRB.TB7O9JEWvz1vlOAs9zjjoL9//MiBfom | 2022-01-28 23:30:18.932484 +00:00 |
| f6288f2d-2591-4d53-81ba-d59b8f3b4e76 | my\_super\_beautiful\_wife@utb.cz | beautiful\_wife | $2a$08$0qFo20kr2bV/sh3kWY7S3e6gAZhYEt1xYLVFa2C4M24a2eA87oMMy | 2022-01-28 23:30:19.021439 +00:00 |
| 675b6334-6187-4de6-8f8a-686d42ea29a4 | my\_kid\_zlata@utb.cz | zlata | $2a$08$xLmEhvS92SaPJIlEJVxttOIB695zSI4I5lFIAz4uyx.bar5yoRWT2 | 2022-01-28 23:30:19.021439 +00:00 |
| d5255cb3-426c-47ee-a3ae-f3adb02a3b48 | our\_babushka@utb.cz | babushka | $2a$08$sn6w8/NhCpCBzTdSpVPfseqsITp3/yESxxJ8f68Z/WZv2u4Fmo7Gu | 2022-01-28 23:30:19.021439 +00:00 |
| b4f41f0f-3556-47bb-b702-7bd4364e6a54 | my\_kid\_varvara@utb.cz | varvara | $2a$08$oUW461qyyS6xzdVVRjyGzOjSYuURda10Szh4UFnFKPkWM56kPJTxa | 2022-01-28 23:30:19.021439 +00:00 |

| id | user\_id | debug | underwork\_event | overwork\_event | created\_at |
| :--- | :--- | :--- | :--- | :--- | :--- |
| fc851ef1-0f82-438b-9d1a-b752b7f8cddc | be59ec2c-140a-4ce3-a6dc-ccf588b2432e | true | underwork | overwork | 2022-01-28 23:30:19.178978 +00:00 |
| ddbd5d1d-dbe6-428f-a3af-7f05d98ff11d | f6288f2d-2591-4d53-81ba-d59b8f3b4e76 | true | underwork | overwork | 2022-01-28 23:30:19.237195 +00:00 |
| 0cdeef47-90d2-4047-b960-8096b3c562c3 | 675b6334-6187-4de6-8f8a-686d42ea29a4 | false | underwork | overwork | 2022-01-28 23:30:19.303168 +00:00 |
| 8192a0b1-d152-41f0-82f7-40a41eb385df | b4f41f0f-3556-47bb-b702-7bd4364e6a54 | true | underwork | overwork | 2022-01-28 23:30:19.373329 +00:00 |

| id | settings | diff | created\_at |
| :--- | :--- | :--- | :--- |
| 9a78eb15-4181-409e-a806-c0a15298a5ea | fc851ef1-0f82-438b-9d1a-b752b7f8cddc | some diff here 1 | 2022-01-28 23:30:19.550615 +00:00 |
| 480bf264-8fb6-4b01-b586-b01398b22709 | fc851ef1-0f82-438b-9d1a-b752b7f8cddc | some diff here 2 | 2022-01-28 23:30:19.608395 +00:00 |
| 12f28eaa-263c-4510-9b03-bdb4f8c589d7 | ddbd5d1d-dbe6-428f-a3af-7f05d98ff11d | some diff here | 2022-01-28 23:30:19.678764 +00:00 |
| 8095c0b0-6395-4ae2-bdd5-1c229b1bda02 | 0cdeef47-90d2-4047-b960-8096b3c562c3 | some diff here | 2022-01-28 23:30:19.729055 +00:00 |
| 85e29803-96e8-4a27-a652-950ebbdfef1b | 8192a0b1-d152-41f0-82f7-40a41eb385df | some diff here | 2022-01-28 23:30:19.780706 +00:00 |

| id | settings | private\_key\_id | calendar\_id | created\_at |
| :--- | :--- | :--- | :--- | :--- |
| 6e5de72e-8d72-49e4-8caf-feda6111b7ae | fc851ef1-0f82-438b-9d1a-b752b7f8cddc | 9db071249d1f25873bb74c620 | 96f54e3199454d1fb8e5c839382b02d@group.calendar.google.com | 2022-01-28 23:30:20.002841 +00:00 |
| 9212e154-ab4b-4d79-8fd4-eb23bf31ba5d | ddbd5d1d-dbe6-428f-a3af-7f05d98ff11d |  | aa902c9badb1f89aa1f376ab8640089@group.calendar.google.com | 2022-01-28 23:30:20.056401 +00:00 |
| e16f2895-56c8-4b34-8c20-5c0f23dab9e8 | 8192a0b1-d152-41f0-82f7-40a41eb385df | 6695f | c3c8a0d51e537657008a7f8b12ad332@group.calendar.google.com | 2022-01-28 23:30:20.117848 +00:00 |
| b33d67fb-b4b8-4fd5-be52-6a2dd707f98d | 0cdeef47-90d2-4047-b960-8096b3c562c3 | 4196d3f22dde8727a612c92dcf | d012a37cbcfe2a5f1a34c0e54c525b3@group.calendar.google.com | 2022-01-28 23:30:20.188765 +00:00 |

as we can see delete cascade works as expected

