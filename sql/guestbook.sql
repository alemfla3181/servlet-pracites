-- guestbook

desc guestbook;

select * from guestbook order by no desc;

select password from guestbook where no = 3;

insert into guestbook(no,name,password, message) values(null, "ㄷㄱㅈㄷㄱ", "1234", "hi");

insert into guestbook(no,name,password,message) values(null, "둘리", "1234", "gogogogogo");

insert into guestbook(no,name,password,message) values(null, "또치", "425", "6364");

delete from guestbook where no > 34;