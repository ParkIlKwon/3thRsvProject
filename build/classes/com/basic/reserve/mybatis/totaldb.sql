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
	id int auto_increment primary key, 
	image VARCHAR(50) not null, #이미지이름
	Contents VARCHAR(50) not null, #세부항목
	Category varchar(20) not null, #카테고리
	Title varchar(20) not null,  #제목
	DateStart varchar(20) not null,  #시작일
	DateEnd varchar(20) not null,  #끝일
	Info varchar(100) not null,  #소개
	Location varchar(20) not null, #장소
	Duration int(5) not null,  #기간
	SeatNum int(5) not null, #좌석몇까지 있는지
	Price int(5) not null, #좌석가격
	Discount int(5) not null,  #할인율
	Star int(5) not null #평점 
	
)

select * from TICKET;
delete from TICKET;
TRUNCATE TABLE TICKET;
 select * from TICKET where Title like CONCAT('%',"하",'%');

INSERT INTO TICKET (image, Contents, Category, Title, DateStart, DateEnd, Info, Location, Duration, SeatNum, Price, Discount, Star)
VALUES
('test1.jpg', '콘서트', '음악', '아이유 콘서트', '2022-05-01', '2022-05-03', '아이유의 새로운 앨범 라이브 공연', '서울 예술의전당', 120, 100, 50000, 45000, 4),
('test2.jpg', '뮤지컬', '연극', '레미제라블', '2022-06-01', '2022-06-10', '빅토르 위고의 역사적인 이야기를 담은 뮤지컬', '씨어터 삼각지', 150, 200, 80000, 70000, 4.5),
('test3.jpg', '전시회', '미술', '빈센트 반 고흐 전시', '2022-07-01', '2022-07-30', '세계적인 화가 빈센트 반 고흐의 대표작품들이 전시됩니다', '국립 현대미술관', 90, 50, 30000, 25000, 3.5),
('test4.jpg', '스포츠', '야구', '한화 이글스 경기', '2022-04-01', '2022-04-05', '한화 이글스의 홈 경기를 관람하세요', '인천 SK 행복드림구장', 180, 300, 25000, 20000, 4),
('test5.jpg', '연극', '연극', '하이큐!!', '2022-08-01', '2022-08-15', '인기 만화 하이큐!!를 연극으로 재현한 공연', '대학로 소극장', 120, 100, 40000, 35000, 4.5);

create table BOARD(
	id int auto_increment primary key, 
	memberId varchar(30) not null, #글쓴이
	Title varchar(20) not null, #제목
	Body varchar(100) not null, #내용
	Date varchar(20) not null, #글쓴날짜
	CONSTRAINT fk_id FOREIGN KEY (memberId) 
    REFERENCES MEMBERLIST(memberId) ON DELETE CASCADE
)

INSERT INTO BOARD (memberId, Title, Body, Date) VALUES
('qwer', '첫번째 글', '안녕하세요. 첫번째 글입니다.', '2022-01-01'),
('qwer', '두번째 글', '안녕하세요. 두번째 글입니다.', '2022-01-02'),
('qwer', '세번째 글', '안녕하세요. 세번째 글입니다.', '2022-01-03'),
('abcd', '네번째 글', '안녕하세요. 네번째 글입니다.', '2022-01-04'),
('abcd', '다섯번째 글', '안녕하세요. 다섯번째 글입니다.', '2022-01-05');

drop table BOARD;
select * from BOARD;
delete from BOARD;
TRUNCATE TABLE BOARD;

create table RESERVELIST(
	id int auto_increment primary key, #예약고유번호
    memberId varchar(20) not null, #예약한사람아이디
	reserveTitle varchar(20) not null, #예약제목
	reserveDate varchar(20) not null, #예약한날짜
	reserveLocation varchar(20) not null, #예약장소
	reserveSeatNum int(5) not null, #예약한좌석번호
	reservePrice int(5) not null, #예약가격
	
	CONSTRAINT fk_memberid FOREIGN KEY(id) REFERENCES MEMBERLIST(memberId) ON DELETE CASCADE #확인요망
	
);