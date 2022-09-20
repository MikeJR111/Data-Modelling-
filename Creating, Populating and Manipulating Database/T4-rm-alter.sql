--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-alter.sql

--Student ID: 32073119
--Student Name: Jiawei Ren
--Unit Code: FIT9132
--Applied Class No: 05_OnCampus

/* Comments for your marker:




*/

--4(a)
-- Because there are some not finished runs, so we cant calculate the time
ALTER TABLE ENTRY ADD (
    entry_elapsedtime NUMERIC(5,2) DEFAULT NULL
);
COMMENT ON COLUMN ENTRY.entry_elapsedtime IS
    'runner’s elapsed time in an event';
-- calculate finished runs
UPDATE ENTRY
    SET ENTRY.entry_elapsedtime = 
    (ENTRY.entry_finishtime - ENTRY.entry_starttime)*24.00 * 60.00
WHERE
    ENTRY.entry_finishtime IS NOT NULL AND ENTRY.entry_starttime IS NOT NULL;
    
--4(b)
-- since it has become a multi-value attritube, I need to create a new table 
-- but they only want to record the percentage, so I created an attribute for it
-- assume they will do the calculation elsewhere and insert the percentage 
-- manually
DROP TABLE fund CASCADE CONSTRAINTS; 

CREATE TABLE fund
    AS
        SELECT
            char_id,
            team_id
        FROM
            team
        WHERE
            char_id IS NOT NULL;
ALTER TABLE fund ADD (
    fund_percentage NUMERIC(3) DEFAULT NULL
);

-- remove char_id from TEAM table
ALTER TABLE team DROP (
    char_id
);

-- create key for fund reference from team charity
ALTER TABLE fund ADD CONSTRAINT fund_pk PRIMARY KEY ( team_id,char_id);

ALTER TABLE fund
    ADD CONSTRAINT fund_team_fk FOREIGN KEY ( team_id )
        REFERENCES team ( team_id );
        
ALTER TABLE fund
    ADD CONSTRAINT fund_charity_fk FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );
        
--4(c)

-- need to create a new and empty table for for officials
DROP TABLE official CASCADE CONSTRAINTS; 

CREATE TABLE official(
    comp_no NUMBER(5) NOT NULL,
    carn_date DATE NOT NULL,
    official_role VARCHAR2(50)
);
COMMENT ON COLUMN official.official_role IS
    'official has one role in a carnival,
    The roles include time keeper,marshal, starter, and first aid.';
    
ALTER TABLE official ADD CONSTRAINT official_pk PRIMARY KEY ( carn_date,comp_no);

ALTER TABLE official
    ADD CONSTRAINT official_carnival_fk FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );
        
ALTER TABLE official
    ADD CONSTRAINT official_competitor_fk FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );

ALTER TABLE official
    ADD CONSTRAINT chk_official_role_type CHECK(official_role IN(
        'time keeper',
        'marshal',
        'starter',
        'first aid'
    ) );
commit;