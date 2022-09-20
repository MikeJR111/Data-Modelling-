--****PLEASE ENTER YOUR DETAILS BELOW****
--T1-rm-schema.sql

--Student ID: 32073119
--Student Name: Jiawei Ren
--Unit Code: FIT9132
--Applied Class No: 05_OnCampus

/* Comments for your marker:




*/

-- Task 1 Add Create table statements for the Missing TABLES below
-- Ensure all column comments, and constraints (other than FK's)
-- are included. FK constraints are to be added at the end of this script

-- COMPETITOR

CREATE TABLE competitor(
    comp_no        NUMBER(5) NOT NULL,
    comp_fname     VARCHAR2(30),
    comp_lname     VARCHAR2(30),
    comp_gender    CHAR(1) NOT NULL,
    comp_dob       DATE NOT NULL,
    comp_email     VARCHAR2(50) NOT NULL,
    comp_unistatus CHAR(1) NOT NULL,
    comp_phone     CHAR(10) NOT NULL,
    comp_ec_relationship CHAR(1) NOT NULL,
    ec_phone CHAR(10) NOT NULL
);
COMMENT ON COLUMN competitor.comp_no IS
    'Unique identifier for a competitor';
COMMENT ON COLUMN competitor.comp_fname IS
    'Competitor’s first name';
COMMENT ON COLUMN competitor.comp_lname IS
    'Competitor’s last name';
COMMENT ON COLUMN competitor.comp_gender IS
    'Competitor’s gender (‘M’ for male, ‘F’ for female, or ‘U’ for 
    ‘Undisclosed’)';
COMMENT ON COLUMN competitor.comp_dob IS
    'Competitor’s date of birth';
COMMENT ON COLUMN competitor.comp_email IS
    'Competitor’s email';
COMMENT ON COLUMN competitor.comp_unistatus IS
    'Competitor’s university student/staff status ( ‘Y’ for Yes or ‘N’ for No)';
COMMENT ON COLUMN competitor.comp_phone IS
    'Competitor’s phone number';
COMMENT ON COLUMN competitor.comp_ec_relationship IS
    'Emergency contact relationship to competitor (‘P’ for 
    Parent, ‘G’ for Guardian, ‘T’ for Partner, or ‘F’ for Friend)';
ALTER TABLE competitor ADD CONSTRAINT competitor_pk PRIMARY KEY ( comp_no );

ALTER TABLE competitor
    ADD CONSTRAINT chk_comp_gender_type CHECK ( comp_gender IN (
        'M',
        'F',
        'U'
    ) );
    
ALTER TABLE competitor
    ADD CONSTRAINT chk_comp_unistatus_type CHECK ( comp_unistatus IN (
        'Y',
        'N'
    ) );
    
ALTER TABLE competitor
    ADD CONSTRAINT chk_comp_ec_relationship_type CHECK(comp_ec_relationship IN(
        'P',
        'G',
        'T',
        'F'
    ) );
-- EMERCONTACT
CREATE TABLE emercontact(
    ec_phone CHAR(10) NOT NULL,
    ec_fname VARCHAR2(30),
    ec_lname VARCHAR2(50)
);

COMMENT ON COLUMN emercontact.ec_phone IS
    'Emergency contact’s phone number (unique identifier)';
COMMENT ON COLUMN emercontact.ec_fname IS
    'Emergency contact’s first name';
COMMENT ON COLUMN emercontact.ec_lname IS
    'Emergency contact’s last name';

ALTER TABLE emercontact ADD CONSTRAINT emercontact_pk PRIMARY KEY ( ec_phone );
--ENTRY
CREATE TABLE ENTRY (
    event_id NUMBER(6) NOT NULL,
    entry_no NUMBER(5) NOT NULL,
    entry_starttime DATE,
    entry_finishtime DATE,
    comp_no NUMBER(5) NOT NULL,
    team_id NUMBER(3),
    char_id NUMBER(3)
);

COMMENT ON COLUMN ENTRY.entry_no IS
    'Entry number (unique for each event)';
COMMENT ON COLUMN ENTRY.entry_starttime IS
    'The entrant start time';
COMMENT ON COLUMN ENTRY.entry_finishtime IS
    'The entrant finish time';

ALTER TABLE ENTRY ADD CONSTRAINT entry_pk PRIMARY KEY ( event_id, entry_no );
--TEAM
CREATE TABLE team(
    team_id NUMBER(3) NOT NULL,
    team_name VARCHAR2(30) NOT NULL,
    carn_date DATE NOT NULL,
    team_no_members NUMBER(2) NOT NULL,
    event_id NUMBER(6) NOT NULL,
    entry_no NUMBER(5) NOT NULL,
    char_id NUMBER(3)
    
);

COMMENT ON COLUMN team.team_id IS
    'Team identifier (unique)';
COMMENT ON COLUMN team.team_name IS
    'Team name';
COMMENT ON COLUMN team.team_no_members IS
    'Number of team members';
ALTER TABLE team ADD CONSTRAINT team_pk PRIMARY KEY ( team_id);
ALTER TABLE team ADD CONSTRAINT team_nk UNIQUE ( team_name,
                                                   carn_date );

-- Add all missing FK Constraints below here

ALTER TABLE team
    ADD CONSTRAINT team_carnival_fk FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );
        
ALTER TABLE team
    ADD CONSTRAINT team_entry_fk FOREIGN KEY ( entry_no, event_id )
        REFERENCES ENTRY ( entry_no, event_id );
        
ALTER TABLE team
    ADD CONSTRAINT team_charity_fk FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );

ALTER TABLE competitor
    ADD CONSTRAINT competitor_emercontact_fk FOREIGN KEY ( ec_phone )
        REFERENCES emercontact ( ec_phone );

ALTER TABLE ENTRY
    ADD CONSTRAINT entry_competitor_fk FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );
        
ALTER TABLE ENTRY
    ADD CONSTRAINT entry_charity_fk FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );
        
ALTER TABLE ENTRY
    ADD CONSTRAINT entry_team_fk FOREIGN KEY ( team_id )
        REFERENCES team ( team_id );
        
ALTER TABLE ENTRY
    ADD CONSTRAINT entry_event_fk FOREIGN KEY ( event_id )
        REFERENCES event ( event_id );

COMMIT;