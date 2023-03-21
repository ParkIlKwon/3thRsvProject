create database reservedb;

USE reservedb;

create table  memberlist(
  id int auto_increment primary key, #유저고유넘버
  memberName varchar(20) not null, #사용자이름
  memberId varchar(30) unique key not null, #사용자아이디
  memberPw varchar(30) not null, #사용자 패스워드
  memberHP varchar(30) not null, #사용자핸드폰번호
  memberPoints INT(10) not null #사용자 포인트
);

INSERT INTO memberlist(memberName, memberId, memberPw, memberHP,memberPoints)
VALUES
  ('관리자', 'admin', 'admin', '010-555-1234',3000),
  ('테스트1', 'qwer', '1234', '010-555-5678',3000),
  ('테스트2', 'abcd', '1234', '010-555-9012',3000);

delete from memberlist;
drop table memberlist;
TRUNCATE TABLE memberlist;
select * from memberlist;
delete from memberlist where memberId = "qwer" and memberPw = "1234";
select memberId from memberlist where memberId="admin" and memberPw="admin";      


create table ticket(
	id int auto_increment primary key, 
	image VARCHAR(50) not null, #이미지이름
	contents VARCHAR(50) not null, #세부항목
	category varchar(20) not null, #카테고리
	title varchar(20) unique key not null,  #제목
	dateStart varchar(20) not null,  #시작일
	dateEnd varchar(20) not null,  #끝일
	info varchar(100) not null,  #소개
	location varchar(20) not null, #장소
	duration int(5) not null,  #기간
	seatNum int(5) not null, #좌석몇까지 있는지
	price int(5) not null, #좌석가격
	discount int(5) not null,  #할인율
	star float(5) not null #평점 
)


select * from ticket;
delete from ticket;
TRUNCATE TABLE ticket;
drop TABLE ticket;
 select * from ticket where Title like CONCAT('%',"하",'%');
 select * from ticket where Category ="공연" order by Star DESC LIMIT 3;

--#################### set show dummy data ; ################### 
 
INSERT INTO ticket (image, Contents, Category, Title, DateStart, DateEnd, Info, Location, Duration, SeatNum, Price, Discount, Star)
VALUES
('test1.jpg', '콘서트', '공연', '아이유 콘서트', '2022-05-01', '2022-05-03', '아이유의 새로운 앨범 라이브 공연', '서울 예술의전당', 120, 100, 50000, 45000, 4),
('test2.jpg', '뮤지컬', '공연', '레미제라블', '2022-06-01', '2022-06-10', '빅토르 위고의 역사적인 이야기를 담은 뮤지컬', '씨어터 삼각지', 150, 200, 80000, 70000, 4.5),
('test3.jpg', '영화', '영화', '빈센트 반 고흐 전시', '2022-07-01', '2022-07-30', '세계적인 화가 빈센트 반 고흐의 대표작품들이 전시됩니다', '국립 현대미술관', 90, 50, 30000, 25000, 3.5),
('test4.jpg', '야구', '스포츠', '한화 이글스 경기', '2022-04-01', '2022-04-05', '한화 이글스의 홈 경기를 관람하세요', '인천 SK 행복드림구장', 180, 300, 25000, 20000, 4),
('test5.jpg', '연극', '공연', '하이큐!!', '2022-08-01', '2022-08-15', '인기 만화 하이큐!!를 연극으로 재현한 공연', '대학로 소극장', 120, 100, 40000, 35000, 4.5);

--#################### set sport dummy data ; ###################

INSERT INTO ticket (image, Contents, Category, Title, DateStart, DateEnd, Info, Location, Duration, SeatNum, Price, Discount, Star)
VALUES
('sports1.jpg', '야구', '스포츠', '두산 vs kt', '2023-03-24', '2023-03-24', '두산과 KT의 개막전 시범경기를 선보입니다.', '잠실 야구경기장', 120, 100, 30000, 5, 4.5),
('sports2.jpg', '야구', '스포츠', 'KT wiz 시범경기', '2023-01-14', '2023-01-14', 'KT WIZ의 개막전 시범경기를 선보입니다.', '목동 야구경기장', 120, 100, 30000, 5, 3.5),
('sports3.jpg', '야구', '스포츠', '한화 vs 삼성', '2023-03-24', '2023-03-24', '삼성과 한화의 개막전 시범경기를 선보입니다.', '잠실 야구경기장', 120, 100, 30000, 5, 4),
('sports4.jpg', '축구', '스포츠', 'FC 서울 vs 수원 삼성', '2023-04-02', '2023-04-02', 'K리그 개막전 FC 서울과 수원 삼성의 경기를 선보입니다.', '상암월드컵경기장', 120, 100, 40000, 10, 4.2),
('sports5.jpg', '야구', '스포츠', '롯데 자이언츠 시범경기', '2023-03-30', '2023-03-30', '롯데 자이언츠의 개막전 시범경기를 선보입니다.', '사직야구장', 120, 100, 25000, 5, 4.7),
('sports6.jpg', '테니스', '스포츠', '제주컵 테니스 대회', '2023-06-01', '2023-06-05', '국내 최고의 테니스 대회인 제주컵이 시작됩니다.', '제주시청 테니스장', 300, 200, 50000, 15, 4.9),
('sports7.jpg', '야구', '스포츠', '넥센 히어로즈 시범경기', '2023-03-27', '2023-03-27', '넥센 히어로즈의 개막전 시범경기를 선보입니다.', '고척스카이돔', 120, 100, 28000, 5, 4.1),
('sports8.jpg', '배구', '스포츠', '한국여자배구연맹컵', '2023-05-10', '2023-05-15', '한국여자배구연맹컵 대회가 열립니다.', '청주체육관', 180, 120, 20000, 10, 4.3),
('sports9.jpg', '골프', '스포츠', '제주오픈 골프대회', '2023-08-01', '2023-08-04', '제주에서 열리는 국내 최고의 골프대회인 제주오픈이 시작됩니다.', '제주 골프장', 240, 150, 100000, 20, 4.8);



create table board(
	id int auto_increment primary key, 
	memberId varchar(30) not null, #글쓴이
	title varchar(20) not null, #제목
	body varchar(100) not null, #내용
	writedate varchar(20) not null, #글쓴날짜
	CONSTRAINT fk_id FOREIGN KEY (memberId) 
    REFERENCES memberlist(memberId) ON DELETE CASCADE
)

INSERT INTO board (memberId, title, body, writedate) VALUES
('qwer', '첫번째 글', '안녕하세요. 첫번째 글입니다.', '2022-01-01'),
('qwer', '두번째 글', '안녕하세요. 두번째 글입니다.', '2022-01-02'),
('qwer', '세번째 글', '안녕하세요. 세번째 글입니다.', '2022-01-03'),
('abcd', '네번째 글', '안녕하세요. 네번째 글입니다.', '2022-01-04'),
('abcd', '다섯번째 글', '안녕하세요. 다섯번째 글입니다.', '2022-01-05');

drop table board;
select * from board;
delete from board;
TRUNCATE TABLE board;

drop table reservelist;

create table reservelist(
	id int auto_increment primary key, #예약고유번호
    memberId varchar(20) not null, #예약한사람아이디
	reserveTitle varchar(20) not null, #예약제목
	reserveDate varchar(20) not null, #예약한날짜
	reserveLocation varchar(20) not null, #예약장소
	reserveSeatNum int(5) not null, #예약한좌석번호
	reservePrice int(5) not null, #예약가격
	
	CONSTRAINT fk_Res_id FOREIGN KEY(memberId) REFERENCES memberlist(memberId) ON DELETE CASCADE
);

create table place(
	id int auto_increment primary key, #장소고유번호
	name varchar(20) not null, #해당장소 이름
	title varchar(20) not null, #해당 티켓 제목
	image varchar(50) not null, #해당장소 이미지
	
	CONSTRAINT fk_pl_id FOREIGN KEY(title) REFERENCES ticket(title) ON DELETE CASCADE
)

drop table place;
select * from place;
delete from place;
TRUNCATE TABLE place;

INSERT INTO place (name, title, image) VALUES
('서울 예술의전당', '아이유 콘서트', '서울예술의전당.jpg'),
('씨어터 삼각지', '레미제라블', '씨어터삼각지.jpg'),
('대학로 소극장', '하이큐!!', '대학로소극장.jpg'),
('인천 SK 행복드림구장', '한화 이글스 경기', '인천SK행복드림구장.jpg');








