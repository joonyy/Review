use shopdb;

create table memberTBL(
	memberID varchar(8) PRIMARY KEY,
    memberName varchar(5),
    memberAddress varchar(20)
);

INSERT INTO memberTBL VALUES
("Dang", "당탕이","경기 부천시 중동"),
("Jee", "지운이","서울시 은평구 중산동"),
("Han", "한주연","인천 남구 주안동"),
("Sang", "상길이","경기 성남구 분당구");

select * from memberTBL;

create table productTBL(
	productName varchar(5) Primary Key,
    price int,
    productDate Date,
    producedAt varchar(10),
    Amount int
);

INSERT INTO productTBL VALUES
("컴퓨터", 10, "2013-01-01", "삼성", 17),
("세탁기", 20, "2014-09-01", "LG", 3),
("냉장고", 5, "2015-02-01", "대우", 22)