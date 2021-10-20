CREATE TABLE cart(
		cartno                        		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		ID                            		VARCHAR2(10)		 NULL ,
  FOREIGN KEY (ID) REFERENCES member (ID)
);

drop table orders cascade constraints;

select *
		from member inner join cart 
		on member.id = cart.id
		inner join orders
		on cart.id = orders.id
		where member.id = 'user4';
        
    
insert into cart values(1, 'user4');



/**********************************/
/* Table Name: 주문 */
/**********************************/
CREATE TABLE orders(
orderno                        NUMBER(10)  NOT NULL  PRIMARY KEY,
id                             VARCHAR2(10)  NOT NULL,
contentsno                     NUMBER(10)  NULL ,
cartno                         NUMBER(10)  NULL ,
odate                          DATE  NOT NULL,
quantity                       NUMBER(10)  NOT NULL,
total                          NUMBER(10)  NOT NULL,
payment                        VARCHAR2(50)  NOT NULL,
mname                          VARCHAR2(20)  NOT NULL,
pname                          VARCHAR2(50)  NOT NULL,
  FOREIGN KEY (contentsno) REFERENCES contents (contentsno),
  FOREIGN KEY (cartno) REFERENCES cart (cartno)
);


 
insert into orders(
orderno, cartno, contentsno, odate, quantity, total, payment, id, mname, pname)
values((select nvl(max(orderno),0)+1 from orders), null,5,sysdate,1,50000,'신용카드',
'user4','홍길동','Ripped Skinny Jeans');
 
insert into orders(
orderno, cartno, contentsno, odate, quantity, total, payment, id, mname, pname)
values((select nvl(max(orderno),0)+1 from orders), null,6,sysdate,1,50000,'신용카드',
'user4','홍길동','Ripped Skinny Jeans');


delete from orders where orderno = 2;

update orders
set cartno = 1
where orderno = '2';

 
--(2) left outer join 문작성

select  m.id, m.mname, m.fname, m.zipcode, m.address1, m.address2,
         o.orderno,o.odate,o.pname,o.quantity,o.total,o.contentsno
 from  member m left outer join orders o
    on  m.id = o.id
where  m.id='user4';