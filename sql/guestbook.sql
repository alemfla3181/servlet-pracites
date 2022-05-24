-- guestbook

desc guestbook;

select * from guestbook;

select password from guestbook where no = 3;

insert into guestbook(no,name,password,message) values(null, "둘리", "1234", "gogogogogo");

delete from guestbook where no >50 and no < 77;