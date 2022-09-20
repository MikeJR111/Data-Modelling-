--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 32073119
--Student Name: Jiawei Ren
--Unit Code: FIT9132
--Applied Class No: 05_OnCampus

/* Comments for your marker:




*/

--3(a)
DROP SEQUENCE comp_seq;
DROP SEQUENCE team_seq;

CREATE SEQUENCE comp_seq START WITH 100 INCREMENT BY 1;

CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;


--3(b)
-- record new emercontact first
INSERT INTO emercontact VALUES (
    '0476541234',
    'Jack',
    'Kai'
);

-- now record two competitors
INSERT INTO competitor VALUES (
    comp_seq.nextval,
    'Daniel',
    'Kai',
    'M',
    TO_DATE('4/Mar/2003', 'DD/MON/YYYY'),
    'DKai@gmail.com',
    'Y',
    '0422663029',
    'P',
    (select ec_phone from emercontact where ec_fname = 'Jack' AND 
    ec_lname = 'Kai')
);
INSERT INTO competitor VALUES (
    comp_seq.nextval,
    'Annabelle',
    'Kai',
    'F',
    TO_DATE('3/Mar/2001', 'DD/MON/YYYY'),
    'Akai@gmail.com',
    'Y',
    '0422063429',
    'P',
    (select ec_phone from emercontact where ec_fname = 'Jack' AND 
    ec_lname = 'Kai')
);

-- according to the assignment, they both attend
-- ‘RM Autumn Series Caulfield 2022’ , event type 21K
-- Annabelle will raise funds to support the ‘Amnesty International’ charity
-- Daniel will support ‘Beyond Blue’ charity.
-- because they have not atttend the event yet, so start time and end time 
-- are null
-- lets create an entry for Daniel 
INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    (select event_id from event 
    where 
    eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022')),
    (SELECT count(entry_no) FROM ENTRY 
    WHERE 
    event_id = ((select event_id from event 
    where 
    eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022'))))+1,
    Null,
    Null,
    (select comp_no from competitor 
    where 
    comp_fname = 'Daniel' AND comp_lname = 'Kai' ),
    (select char_id from charity 
    where 
    char_name = 'Beyond Blue') 
);

-- lets create an entry for Annabelle 
INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    (select event_id from event 
    where 
    eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022')),
    (SELECT count(entry_no) FROM ENTRY 
    WHERE 
    event_id = ((select event_id from event 
    where 
    eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022'))))+1,
    Null,
    Null,
    (select comp_no from competitor 
    where 
    comp_fname = 'Annabelle' AND comp_lname = 'Kai' ),
    (select char_id from charity 
    where 
    char_name = 'Amnesty International') 
);




--3(c)
--create Annabelle Kai’s team
-- team name: ‘Kai Speedstars’ 
-- for ‘RM Autumn Series Caulfield 2022’ 
-- support the "Beyond Blue" charity
-- assume is her own event id and entry no
INSERT INTO team VALUES(
    team_seq.nextval,
    'Kai Speedstars',
    (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022'),
    1,
    (select event_id from event 
    where 
    eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022')), 
    (SELECT entry_no FROM ENTRY WHERE
    event_id = ((select event_id from event where 
    eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
    WHERE carn_name = 'RM Autumn Series Caulfield 2022'))) AND 
    comp_no = (select comp_no from competitor where 
    comp_fname = 'Annabelle' AND comp_lname = 'Kai' )),
    (select char_id from charity 
    where 
    char_name = 'Beyond Blue') 
);
UPDATE ENTRY
    SET
        team_id = team_seq.currval
    WHERE
        event_id = (select event_id from event 
        where 
        eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'))
        AND 
        entry_no = (SELECT entry_no FROM ENTRY WHERE
        event_id = ((select event_id from event where 
        eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'))) AND 
        comp_no = (select comp_no from competitor where 
        comp_fname = 'Annabelle' AND comp_lname = 'Kai' ));
--3(d)
-- going to use UPDATE command
-- team_no_member +1 and change event id for Daniel 

UPDATE team
    SET
        team_no_members = team_no_members+1
    WHERE
        team_name = 'Kai Speedstars'
        AND
        carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022')
        AND entry_no = (SELECT entry_no FROM ENTRY WHERE
        event_id = ((select event_id from event where 
        eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'))) AND 
        comp_no = (select comp_no from competitor where 
        comp_fname = 'Annabelle' AND comp_lname = 'Kai' ));

UPDATE ENTRY
    SET
        event_id = 
        (select event_id from event 
        where 
        eventtype_code = '10K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'))
    WHERE
        comp_no = (select comp_no from competitor 
        where 
        comp_fname = 'Daniel' AND comp_lname = 'Kai' );
UPDATE ENTRY
    SET
        entry_no = 1
    WHERE
        comp_no = (select comp_no from competitor 
        where 
        comp_fname = 'Daniel' AND comp_lname = 'Kai' );

UPDATE ENTRY
    SET
        team_id = team_seq.currval
    WHERE
        event_id = (select event_id from event 
        where 
        eventtype_code = '10K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'))
        AND 
        entry_no = (SELECT entry_no FROM ENTRY WHERE
        event_id = ((select event_id from event where 
        eventtype_code = '10K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'))) AND 
        comp_no = (select comp_no from competitor where 
        comp_fname = 'Daniel' AND comp_lname = 'Kai' ));
--3(e)
-- Drop Daniel, but he is interested in future carnival, so I will save him as 
-- a competitor but delete from entry, and team_no_members - 1
DELETE FROM ENTRY 
WHERE comp_no = (select comp_no from competitor where 
        comp_fname = 'Daniel' AND comp_lname = 'Kai' ) AND
        event_id = (select event_id from event 
        where 
        eventtype_code = '10K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'));
-- delete the team, and change team_id in entry to NuLL and char_id

UPDATE ENTRY
    SET team_id = NULL
WHERE 
    comp_no = (select comp_no from competitor where 
        comp_fname = 'Annabelle' AND comp_lname = 'Kai' ) AND
        event_id = (select event_id from event 
        where 
        eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'));
UPDATE ENTRY
    SET char_id = (select char_id from charity 
    where 
    char_name = 'Beyond Blue') 
WHERE 
    comp_no = (select comp_no from competitor where 
        comp_fname = 'Annabelle' AND comp_lname = 'Kai' ) AND
        event_id = (select event_id from event 
        where 
        eventtype_code = '21K' AND carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022'));
DELETE FROM team 
WHERE team_name = 'Kai Speedstars' AND
        carn_date = (SELECT carn_date from carnival 
        WHERE carn_name = 'RM Autumn Series Caulfield 2022');
