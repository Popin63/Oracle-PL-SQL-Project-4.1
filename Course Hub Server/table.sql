clear screen;

DROP TABLE COURSE CASCADE CONSTRAINTS;
DROP TABLE COURSE_MATERIAL CASCADE CONSTRAINTS;
DROP TABLE STUDENT CASCADE CONSTRAINTS;
DROP TABLE INSTRUCTOR CASCADE CONSTRAINTS;
DROP TABLE INSTRUCTOR_COURSE CASCADE CONSTRAINTS;
DROP TABLE ENROLLED_COURSE CASCADE CONSTRAINTS;



CREATE TABLE COURSE(
	cid int,
	cnum varchar2(50),
	cname varchar2(100), 
	credit varchar2(52),
	cdept varchar2(50),
	cyearsem varchar2(20),
	PRIMARY KEY(cid)
	);
	
CREATE TABLE COURSE_MATERIAL (
	cid int,
	materialid int,
	bookName varchar2(1150),
	authorName varchar2(1150), 
	PRIMARY KEY(materialid),
	FOREIGN KEY(cid) REFERENCES COURSE (cid)
	);	
	
    
CREATE TABLE STUDENT (
	snum int, 
	sname varchar2(130), 
	sid varchar2(130), 
	sdept varchar2(130),
	syearsem varchar2(120),
    PRIMARY KEY(snum)
	); 
	

CREATE TABLE INSTRUCTOR(
	Fid int, 
	fName varchar2(930), 
	fdept varchar2(930),
	PRIMARY KEY(Fid)
	);
	

CREATE TABLE INSTRUCTOR_COURSE(
    Fid int, 
	cid int,
	FOREIGN KEY(cid) REFERENCES COURSE (cid),
	FOREIGN KEY(Fid) REFERENCES INSTRUCTOR (Fid)	
);

CREATE TABLE ENROLLED_COURSE(
    eid int,
	snum int, 
	cid int,
	PRIMARY KEY(eid),
	FOREIGN KEY(snum) REFERENCES STUDENT(snum),
	FOREIGN KEY(cid) REFERENCES COURSE(cid)
);


insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (1, 'CSE 4101', 'Computer Network',     '3',   'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (2, 'CSE 4102', 'Computer Network Lab', '1.5', 'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (3, 'CSE 4125', 'Distributed Database', '3',   'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (4, 'CSE 4126', 'Distributed Database Lab','0.75', 'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (5, 'CSE 4107', 'Artificial Intelligence','3', 'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (6, 'CSE 4108', 'Artificial Intelligence Lab','0.75', 'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (7, 'CSE 4129', 'Formal Language And Compilers','3', 'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (8, 'CSE 4130', 'Formal Language And Compilers Lab', '0.75', 'CSE', '4/1'); 
insert into COURSE (cid, cnum, cname, credit, cdept, cyearsem ) values (9, 'IPE 4111', 'Industrial Management','3', 'CSE', '4/1'); 

 
  
 
insert into  COURSE_MATERIAL values(1, 101,'Computer Networking  A Top-Down Approach James F. Kurose, Ross','James F. Kurose, Ross'); 
insert into  COURSE_MATERIAL values(2, 102,'CCNA Electronic Book 6th edition','CCNA Electronic Book 6th edition');
insert into  COURSE_MATERIAL values(3, 103,'Principles_of_Distributed_Database_Systems','M. Tamer Özsu');  
insert into  COURSE_MATERIAL values(4, 104,'Oracle Database SQL Reference','Diana Lorentz');
insert into  COURSE_MATERIAL values(5, 105,'Artificial Intelligence A Modern Approach','Stuart J. Russell and Peter Norvig');
insert into  COURSE_MATERIAL values(6, 106,'Artificial Intelligence A Modern Approach','Stuart J. Russell and Peter Norvig'); 
insert into  COURSE_MATERIAL values(7, 107,'Automata Theory, Languages, and Computation','Johne.HOPCROFT'); 
insert into  COURSE_MATERIAL values(8, 108,'Automata Theory, Languages, and Computation','Johne.HOPCROFT');
insert into  COURSE_MATERIAL values(9, 109,'Management','STEPHEN P. ROBBINS');  


insert into STUDENT values(301,'Popin', '17.01.04.132', 'CSE','4.1'); 
insert into STUDENT values(302,'Akash', '17.01.04.133', 'CSE','4.1'); 
insert into STUDENT values(303,'Zaid', '17.01.04.134', 'CSE','4.1'); 
insert into STUDENT values(304,'Partho', '17.01.04.135', 'CSE','4.1'); 
insert into STUDENT values(305,'Joy', '17.01.04.136', 'CSE','4.1'); 
insert into STUDENT values(306,'Riya', '17.01.04.137', 'CSE','4.1'); 
insert into STUDENT values(307,'Diya', '17.01.04.138', 'CSE','4.1'); 
insert into STUDENT values(308,'Siya', '17.01.04.139', 'CSE','4.1'); 
insert into STUDENT values(309,'Hiya', '17.01.04.140', 'CSE','4.1'); 
insert into STUDENT values(310,'Pappu', '17.01.04.141', 'CSE','4.1'); 
insert into STUDENT values(311,'Pritom', '17.01.04.142', 'CSE','4.1'); 


 
 
insert into INSTRUCTOR values(601,'Saif Hasan','CSE'); 
insert into INSTRUCTOR values(602,'Moon Jahan','IPE'); 
insert into INSTRUCTOR values(603,'Sakib Hossain','CSE'); 
insert into INSTRUCTOR values(604,'Jubayeer Ahmed','CSE'); 
insert into INSTRUCTOR values(605,'Naveed Hossain','CSE'); 
insert into INSTRUCTOR values(606,'Habibul basar','CSE'); 
insert into INSTRUCTOR values(607,'Shad Hossain','CSE'); 
insert into INSTRUCTOR values(608,'Hasib Hossain','CSE'); 
insert into INSTRUCTOR values(609,'Sajat Mahmud','CSE'); 

insert into INSTRUCTOR_COURSE   values(601,3);
insert into INSTRUCTOR_COURSE   values(602,4);
insert into INSTRUCTOR_COURSE   values(603,5);
insert into INSTRUCTOR_COURSE   values(604,6);
insert into INSTRUCTOR_COURSE   values(605,7);
insert into INSTRUCTOR_COURSE   values(606,9);
insert into INSTRUCTOR_COURSE   values(607,8);
insert into INSTRUCTOR_COURSE   values(608,2);
insert into INSTRUCTOR_COURSE   values(609,1);


 
 
insert into ENROLLED_COURSE   values(901,301, 9); 
insert into ENROLLED_COURSE   values(902,303, 8);
insert into ENROLLED_COURSE   values(903,304, 7);
insert into ENROLLED_COURSE   values(904,306, 6);
insert into ENROLLED_COURSE   values(905,305, 5);
insert into ENROLLED_COURSE   values(906,302, 4);
insert into ENROLLED_COURSE   values(907,307, 3);
insert into ENROLLED_COURSE   values(908,308, 2);
insert into ENROLLED_COURSE   values(909,309, 1);
insert into ENROLLED_COURSE   values(910,310, 6);
insert into ENROLLED_COURSE   values(911,311, 3);








commit;
 
