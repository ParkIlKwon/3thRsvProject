create database reservedb;

USE reservedb;

create table  MEMBERLIST(
  id int auto_increment primary key, #유저고유넘버
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

delete from MEMBERLIST;
drop table MEMBERLIST;
select * from MEMBERLIST;
delete from MEMBERLIST where memberId = "qwer" and memberPw = "1234";
select memberId from MEMBERLIST where memberId="admin" and memberPw="admin";      

create table TICKET(
	id int auto_increment primary key, #고유번호
	image VARCHAR(50) not null, 이미지파일
	Contents VARCHAR(50) not null, #종류
	Category varchar(20) not null, #장르
	Title varchar(20) not null, #제목
	DateStart varchar(20) not null, #기간 시작
	DateEnd varchar(20) not null, #기간 종료
	Info varchar(100) not null, #정보
	Location varchar(20) not null, #장소
	Duration int(5) not null, #길이
	SeatNum int(5) not null #총좌석번호(1부터시작)
	Price int(5) not null, #가격
	Discount int(5) not null, #할인가격
	Star int(5) not null #평점
	
	CONSTRAINT fk_memberid FOREIGN KEY(id) REFERENCES MEMBERLIST(memberId) ON DELETE CASCADE #확인요망
)


create table RESERVELIST(
	id int auto_increment primary key, #예약고유번호
    memberId varchar(20) not null, #예약한사람아이디
	reserveTitle varchar(20) not null, #예약제목
	reserveDate varchar(20) not null, #예약한날짜
	reserveLocation varchar(20) not null, #예약장소
	reserveSeatNum int(5) not null, #예약한좌석번호
	reservePrice int(5) not null #예약가격
	
	CONSTRAINT fk_memberid FOREIGN KEY(id) REFERENCES MEMBERLIST(memberId) ON DELETE CASCADE #확인요망
	
);