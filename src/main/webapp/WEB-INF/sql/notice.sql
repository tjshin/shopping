-- DDL
-- DROP TABLE notice;
CREATE TABLE notice(
  noticeno      NUMBER (11)     NOT NULL,
  title         VARCHAR2(300)   NOT NULL,
  content       CLOB            NOT NULL,
  wname         VARCHAR2 (20)   NOT NULL,
  passwd        VARCHAR2 (20)   NULL,
  cnt           NUMBER(10)      DEFAULT '0' NOT NULL,
  rdate         DATE            NOT NULL,
  PRIMARY KEY (noticeno)  
);
-- 등록
insert into notice(noticeno, title, content, wname, passwd, cnt, rdate)
VALUES((select nvl(max(noticeno), 0) + 1 from notice),
'spring 시즌 접수 안내 1', '10% 할인 실시!', '왕눈이', '1234', 0, sysdate);

-- 목록
SELECT noticeno, title, content, wname, passwd, cnt, rdate
FROM notice
ORDER BY noticeno DESC;
-- 조회
SELECT noticeno, title, content, wname, passwd, cnt, rdate
FROM notice
WHERE noticeno=1;
-- 조회수증가
UPDATE notice
SET cnt = cnt + 1
WHERE noticeno=1;
-- 수정
UPDATE notice
SET title='추가 공지', content='5% 추가 할인!', wname='아로미'
WHERE noticeno=1;
-- 패스워드 확인
SELECT COUNT(*) AS cnt
FROM notice
WHERE noticeno=1 AND passwd='1234';
-- 삭제
DELETE FROM notice
WHERE noticeno=3;
 
SELECT * FROM notice;

--열 삭제(비번 필요없더라)
alter table notice drop column passwd;