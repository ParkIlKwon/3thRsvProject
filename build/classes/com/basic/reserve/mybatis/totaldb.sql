create database reservedb;

USE rentcardb;

create table  MEMBERLIST(
  memberSeq int auto_increment primary key, #유저고유넘버
  memberName varchar(20) not null, #사용자이름
  memberId varchar(30) unique key not null, #사용자아이디
  memberPw varchar(30) not null, #사용자 패스워드
  memberHP varchar(30) not null #사용자핸드폰번호
);

INSERT INTO MEMBERLIST(memberName, memberId, memberPw, memberHP)
VALUES
  ('관리자', 'admin', 'admin', '010-555-1234'),
  ('테스트1', 'qwer', '1234', '010-555-5678'),
  ('테스트2', 'abcd', '1234', '010-555-9012');

select * from MEMBERLIST;
  

create table TICKET_SHOW(
	showSeq int auto_increment primary key, #공연고유번호
	showTitle varchar(20) not null, #공연제목
	showDate varchar(20) not null, #공연기간
	showInfo varchar(100) not null, #공연정보
	showCompany varchar(20) not null, #공연주최회사
	showLocation varchar(20) not null, #공연장소
	showDuration int(5) not null, #공연길이
	showSeatNum int(5) not null #총좌석번호(1부터시작)
	CONSTRAINT fk_Seq FOREIGN KEY(showSeq) REFERENCES MEMBERLIST(memberSeq) ON DELETE CASCADE #확인요망
);

create table TICKET_SPORTS(
	sportsSeq int auto_increment primary key, #경기고유번호
	sportsTitle varchar(20) not null, #경기제목
	sportsDate varchar(20) not null, #경기기간
	sportsInfo varchar(100) not null, #경기정보
	sportsCompany varchar(20) not null, #경기주최회사
	sportsLocation varchar(20) not null, #경기장소
	sportsDuration int(5) not null, #경기길이
	sportsSeatNum int(5) not null #총좌석번호(1부터시작)

);

create table TICKET_MOVIE(
	movieSeq int auto_increment primary key, #영화고유번호
	movieTitle varchar(20) not null, #영화제목
	movieDate varchar(20) not null, #영화기간
	movieInfo varchar(100) not null, #영화정보
	movieCompany varchar(20) not null, #영화주최회사
	movieLocation varchar(20) not null, #영화장소
	movieDuration int(5) not null, #영화길이
	movieSeatNum int(5) not null #총좌석번호(1부터시작)

);

create table RESERVELIST(
	reserveSeq int auto_increment primary key, #영화고유번호
    reserveId varchar(20) not null, #예약한사람아이디
	reserveTitle varchar(20) not null, #영화제목
	reserveDate varchar(20) not null, #영화기간
	reserveInfo varchar(100) not null, #영화정보
	reserveCompany varchar(20) not null, #영화주최회사
	reserveLocation varchar(20) not null, #영화장소
	reserveDuration int(5) not null, #영화길이
	reserveSeatNum int(5) not null #예약한좌석번호
	
);