DROP DATABASE IF EXISTS EMPDB;

CREATE DATABASE EMPDB;

use EMPDB;

-- 役職
CREATE TABLE POST
(
  -- ID
  ID INT NOT NULL,
  -- 役職名
  NAME VARCHAR(50) NOT NULL,
  -- 上位役職
  BOSS INT,
  PRIMARY KEY (ID)
);

CREATE TABLE DEPT
(
  -- 部署ID
  ID INT NOT NULL,
  -- 部署名
  NAME VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE EMPLOYEE
(
  -- 従業員ID
  ID INT NOT NULL,
  -- 姓
  LASTNAME VARCHAR(100) NOT NULL,
  -- 名
  FIRSTNAME VARCHAR(100) NOT NULL,
  -- 郵便番号
  POSTAL CHAR(7) NOT NULL,
  -- 住所
  ADDRESS VARCHAR(200) NOT NULL,
  -- 部署ID(FK)
  DEPTID INT ,
  -- 役職ID(FK)
  POSTID INT ,
  PRIMARY KEY (ID),
  FOREIGN KEY (DEPTID) REFERENCES DEPT(ID),
  FOREIGN KEY (POSTID) REFERENCES POST(ID)
);

-- POST
insert into POST values (1, '社長', null);
insert into POST values (2, '専務', 1);
insert into POST values (3, '部長', 1);
insert into POST values (4, '課長', 3);
insert into POST values (5, '係長', 4);
insert into POST values (6, 'ヒラ', 5);

-- DEPT
insert into DEPT values (1, '総務部');
insert into DEPT values (2, '第一開発部');
insert into DEPT values (3, '第二開発部');
insert into DEPT values (4, '研究開発室');

-- EMPLOYEE
insert into EMPLOYEE values(1, '佐藤', '太郎',    '1210101', '東京都足立区のどこか',  1, 6);
insert into EMPLOYEE values(2, '鈴木', '花子',    '1010031', '東京都港区の高級地',    2, 6);
insert into EMPLOYEE values(3, '高橋', '太郎',    '1119031', '東京都足立区のどこか',  3, 5);
insert into EMPLOYEE values(4, '鈴木', '正太郎', '1012031', '東京都港区のどこか',     3, 6);
insert into EMPLOYEE values(5, '鈴木', 'その子', '1010331', '東京都荒川区のはし',     4, 3);
insert into EMPLOYEE values(6, '佐藤', '太郎',    '1010131', '東京都品川区のどこか',  3, 6);
