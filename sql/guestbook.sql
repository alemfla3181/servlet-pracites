-- guestbook

desc guestbook;

select * from guestbook order by no desc;

select password from guestbook where no > 0;

insert into guestbook(no,name,password,message,hostname) values(null, "둘리", "1234", "gogogogogo","ere");

insert into guestbook(no,name,password,message,hostname) values(null, "또치", "425", "6364", "ㅇㅋㅇㅋ");

delete from guestbook where no >50 and no < 77;