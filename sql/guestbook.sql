-- guestbook

desc guestbook;

select count from guestbook where no = 1;
update guestbook set count=-500 where no= 78;

select * from guestbook order by count desc;
select * from guestbook;

select last_insert_id();

select password from guestbook where no = 3;

insert into guestbook(no,name,password, message) values(null, "ㄷㄱㅈㄷㄱ", "1234", "hi");

insert into guestbook(no,name,password,message) values(null, "둘리", "1234", "gogogogogo");

insert into guestbook(no,name,password,message) values(null, "또치", "425", "6364");

delete from guestbook where no = 69;