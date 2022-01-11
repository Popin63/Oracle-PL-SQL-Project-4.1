clear screen;

create or replace view myview(view_A, view_B, view_C, view_D, view_E, view_F) as
select C.cid, C.cnum, C.cname, C.credit, C.cdept, C.cyearsem
from COURSE C;

select * from myview;


create or replace view myview2(view_A, view_B, view_C, view_D) as
select CM.cid, CM.materialid, CM.bookName, CM.authorName
from COURSE_MATERIAL CM;

select * from myview2;


create or replace view myview3(view_A, view_B, view_C, view_D, view_E) as
select S.snum, S.sname, S.sid, S.sdept, S.syearsem
from STUDENT S;

select * from myview3;


create or replace view myview4(view_A, view_B, view_C) as
select I.Fid, I.fname, I.fdept
from INSTRUCTOR I;

select * from myview4;


create or replace view myview5(view_A, view_B) as
select IC.Fid, IC.cid
from INSTRUCTOR_COURSE IC;

select * from myview5;

create or replace view myview6(view_A, view_B, view_C) as
select EC.eid, EC.snum, EC.cid
from ENROLLED_COURSE EC;

select * from myview6;

commit;
