create table member(
    name varchar2(20),
    userid VARCHAR2(10),
    pwd  VARCHAR2(10),
    emial  VARCHAR2(20),
    phone char(13),
    admin Number(1) DEFAULT 0, --0:사용자, 1:관리자
    primary key(userid)
);

insert into member values('이소미', 'somi', '1234','gmd@naver.com', '010-111-2222', 0);
insert into member values('하상우', 'sang12', '1234','aaa@naver.com', '010-221-2222', 1);
insert into member values('김윤승', 'light', '1234','bbb@naver.com', '010-331-2222', 0);