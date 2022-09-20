--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID: 32073119
--Student Name: Jiawei Ren
--Unit Code: FIT9132
--Applied Class No: 05_OnCampus

/* Comments for your marker:




*/

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
INSERT INTO emercontact VALUES (
    '0426667821',
    'Rachelle',
    'Judd'
);

INSERT INTO emercontact VALUES (
    '0426667822',
    'Rainbow',
    'Swallow'
);

INSERT INTO emercontact VALUES (
    '0426667823',
    'Lisa',
    'Ingram'
);

INSERT INTO emercontact VALUES (
    '0426667824',
    'Devyn',
    'Honeycutt'
);

INSERT INTO emercontact VALUES (
    '0426667825',
    'Astra',
    'Fay'
);


-- =======================================
-- COMPETITOR
-- =======================================

/* competitors under 18 and not Monash student/staff*/
INSERT INTO competitor VALUES (
    1,
    'Clair',
    'Art',
    'M',
    TO_DATE('10/Mar/2008', 'DD/MON/YYYY'),
    'mychalfromcaliforni@mailcuk.com',
    'N',
    '0422663429',
    'P',
    '0426667825'
);

INSERT INTO competitor VALUES (
    2,
    'Kathie',
    'Logan',
    'M',
    TO_DATE('11/Jan/2009', 'DD/MON/YYYY'),
    'shurupchik1988@falixiao.com',
    'N',
    '0426627830',
    'P',
    '0426667825'
);

/* Mmonash competitors */
INSERT INTO competitor VALUES (
    3,
    'Astoria',
    'Russ',
    'F',
    TO_DATE('23/Nov/2000', 'DD/MON/YYYY'),
    'paula2adriana@rheiop.com',
    'Y',
    '0436567831',
    'P',
    '0426667825'
);

INSERT INTO competitor VALUES (
    4,
    'Drake',
    'Madoline',
    'F',
    TO_DATE('2/Nov/2001', 'DD/MON/YYYY'),
    'laidbackz@gmailwe.com',
    'Y',
    '0446767832',
    'F',
    '0426667824'
);

INSERT INTO competitor VALUES (
    5,
    'Clive',
    'Zara',
    'F',
    TO_DATE('3/Feb/1996', 'DD/MON/YYYY'),
    'hotshytandastic@ndptir.com',
    'Y',
    '0426167133',
    'F',
    '0426667824'
);

INSERT INTO competitor VALUES (
    6,
    'Alma',
    'Tracy',
    'F',
    TO_DATE('6/SEP/1980', 'DD/MON/YYYY'),
    'lipni@taatfrih.com',
    'Y',
    '0426663836',
    'T',
    '0426667824'
);

INSERT INTO competitor VALUES (
    7,
    'Chris',
    'Low',
    'F',
    TO_DATE('3/Aug/2003', 'DD/MON/YYYY'),
    'kevinshunge@readysetgaps.com',
    'Y',
    '0426347834',
    'T',
    '0426667824'
);

INSERT INTO competitor VALUES (
    8,
    'Linnie',
    'Waldroup',
    'M',
    TO_DATE('1/Feb/1990', 'DD/MON/YYYY'),
    'nod53xa1x4@longdz.com',
    'Y',
    '0426117833',
    'P',
    '0426667824'
);

INSERT INTO competitor VALUES (
    9,
    'Alise',
    'Steffen',
    'M',
    TO_DATE('9/June/1988', 'DD/MON/YYYY'),
    'darkanh@nkgursr.com',
    'Y',
    '0422637933',
    'P',
    '0426667823'
);

INSERT INTO competitor VALUES (
    10,
    'Kameron',
    'Eliot',
    'U',
    TO_DATE('5/Aug/2000', 'DD/MON/YYYY'),
    'jenhenson@papakiung.com',
    'Y',
    '0411661833',
    'P',
    '0426667823'
);

INSERT INTO competitor VALUES (
    11,
    'Ethelbert',
    'Atwood',
    'U',
    TO_DATE('15/SEP/1991', 'DD/MON/YYYY'),
    'depedr7vfr4@solikun.gq',
    'Y',
    '0427617823',
    'F',
    '0426667823'
);

INSERT INTO competitor VALUES (
    12,
    'Grosvenor',
    'Tyrell',
    'M',
    TO_DATE('17/Aug/1998', 'DD/MON/YYYY'),
    'bchebursahka91@systechmail.com',
    'Y',
    '0476567313',
    'T',
    '0426667823'
);

INSERT INTO competitor VALUES (
    13,
    'Gilbert',
    'Jacobson',
    'M',
    TO_DATE('13/SEP/1993', 'DD/MON/YYYY'),
    'diacetylmorphine@hasevo.com',
    'Y',
    '0426167433',
    'P',
    '0426667823'
);

INSERT INTO competitor VALUES (
    14,
    'Letty',
    'Ruskin',
    'F',
    TO_DATE('15/Jul/1987', 'DD/MON/YYYY'),
    'mslack@coffeepancakewafflebacon.com',
    'Y',
    '0426627453',
    'F',
    '0426667822'
);

INSERT INTO competitor VALUES (
    15,
    'Benjamin',
    'Windsor',
    'M',
    TO_DATE('9/Aug/1997', 'DD/MON/YYYY'),
    'vesninad@dmxs8.com',
    'Y',
    '0432667893',
    'T',
    '0426667821'
);
-- =======================================
-- ENTRY
-- =======================================

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    1,
    1,
    TO_DATE('10:30:00','HH:MI:SS'),
    TO_DATE('11:30:00','HH:MI:SS'),
    1,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    1,
    2,
    TO_DATE('10:31:00','HH:MI:SS'),
    TO_DATE('11:30:00','HH:MI:SS'),
    2,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    1,
    3,
    TO_DATE('10:32:00','HH:MI:SS'),
    TO_DATE('11:30:00','HH:MI:SS'),
    3,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    1,
    4,
    TO_DATE('10:33:00','HH:MI:SS'),
    TO_DATE('11:30:00','HH:MI:SS'),
    4,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    1,
    5,
    TO_DATE('10:34:00','HH:MI:SS'),
    TO_DATE('11:30:00','HH:MI:SS'),
    5,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    2,
    1,
    TO_DATE('8:31:00','HH:MI:SS'),
    TO_DATE('10:30:00','HH:MI:SS'),
    6,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    2,
    2,
    TO_DATE('8:32:00','HH:MI:SS'),
    TO_DATE('10:30:00','HH:MI:SS'),
    7,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    2,
    3,
    TO_DATE('8:33:00','HH:MI:SS'),
    TO_DATE('10:30:00','HH:MI:SS'),
    8,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    2,
    4,
    TO_DATE('8:34:00','HH:MI:SS'),
    TO_DATE('10:30:00','HH:MI:SS'),
    9,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    2,
    5,
    TO_DATE('8:35:00','HH:MI:SS'),
    TO_DATE('10:30:00','HH:MI:SS'),
    10,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    3,
    1,
    TO_DATE('9:15:00','HH:MI:SS'),
    TO_DATE('10:31:00','HH:MI:SS'),
    11,
    3
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    3,
    2,
    TO_DATE('9:10:00','HH:MI:SS'),
    TO_DATE('10:30:00','HH:MI:SS'),
    12,
    3
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    3,
    3,
    TO_DATE('9:11:00','HH:MI:SS'),
    TO_DATE('10:36:00','HH:MI:SS'),
    13,
    3
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    3,
    4,
    TO_DATE('9:16:00','HH:MI:SS'),
    TO_DATE('10:32:00','HH:MI:SS'),
    14,
    3
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    3,
    5,
    TO_DATE('9:11:00','HH:MI:SS'),
    TO_DATE('10:33:00','HH:MI:SS'),
    15,
    3
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    4,
    1,
    TO_DATE('8:33:00','HH:MI:SS'),
    TO_DATE('10:46:00','HH:MI:SS'),
    1,
    4
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    4,
    2,
    TO_DATE('8:51:00','HH:MI:SS'),
    TO_DATE('10:33:00','HH:MI:SS'),
    2,
    4
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    4,
    3,
    TO_DATE('8:37:00','HH:MI:SS'),
    TO_DATE('10:38:00','HH:MI:SS'),
    3,
    4
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    4,
    4,
    TO_DATE('8:33:00','HH:MI:SS'),
    TO_DATE('10:32:00','HH:MI:SS'),
    4,
    4
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    4,
    5,
    TO_DATE('8:40:00','HH:MI:SS'),
    TO_DATE('10:31:00','HH:MI:SS'),
    5,
    4
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    5,
    1,
    TO_DATE('8:01:00','HH:MI:SS'),
    TO_DATE('11:30:00','HH:MI:SS'),
    6,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    5,
    2,
    TO_DATE('8:01:00','HH:MI:SS'),
    TO_DATE('11:11:00','HH:MI:SS'),
    10,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    5,
    3,
    TO_DATE('8:01:00','HH:MI:SS'),
    TO_DATE('11:21:00','HH:MI:SS'),
    9,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    5,
    4,
    TO_DATE('8:05:00','HH:MI:SS'),
    TO_DATE('11:04:00','HH:MI:SS'),
    8,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    5,
    5,
    TO_DATE('8:02:00','HH:MI:SS'),
    TO_DATE('11:01:00','HH:MI:SS'),
    7,
    1
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    6,
    1,
    TO_DATE('8:32:00','HH:MI:SS'),
    TO_DATE('9:08:00','HH:MI:SS'),
    11,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    6,
    2,
    Null,
    Null,
    12,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    6,
    3,
    Null,
    Null,
    13,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    6,
    4,
    Null,
    Null,
    14,
    2
);

INSERT INTO 
ENTRY(event_id,entry_no,entry_starttime,entry_finishtime,comp_no,char_id) 
VALUES (
    6,
    5,
    TO_DATE('8:36:00','HH:MI:SS'),
    TO_DATE('9:11:00','HH:MI:SS'),
    15,
    2
);

-- =======================================
-- TEAM
-- =======================================

INSERT INTO team VALUES
(1,'team1',TO_DATE('24/SEP/2021', 'DD/MON/YYYY'),3,1,1,1);
UPDATE ENTRY
    SET
        team_id = 1
WHERE
    event_id = 1 AND entry_no = 1;
    
INSERT INTO team VALUES
(2,'team1',TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),3,3,2,Null);
UPDATE ENTRY
    SET
        team_id = 2
WHERE
    event_id = 3 AND entry_no = 2;
INSERT INTO team VALUES
(3,'team3', TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),1,4,2,1);
UPDATE ENTRY
    SET
        team_id = 3
WHERE
    event_id = 4 AND entry_no = 2;
INSERT INTO team VALUES
(4,'team4',TO_DATE('01/OCT/2021', 'DD/MON/YYYY'),1,5,4,1);
UPDATE ENTRY
    SET
        team_id = 4
WHERE
    event_id = 5 AND entry_no = 4;
INSERT INTO team VALUES
(5,'team5',TO_DATE('05/FEB/2022', 'DD/MON/YYYY'),1,6,1,Null);
UPDATE ENTRY
    SET
        team_id = 5
WHERE
    event_id = 6 AND entry_no = 1;
COMMIT;