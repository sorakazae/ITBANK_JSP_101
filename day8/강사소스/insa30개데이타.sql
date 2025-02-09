오라클은 자동으로  C:\루트에 설치되요. (오라클설치   비밀번호: oracle, oracle) 
C:\oraclexe경로에 설치

[Window7경우]
시작-> 맨마지막 비어있는 네모난박스 => cmd  입력후 enter치면 콘솔

[WindowXP경우]
시작 -> 실행 => cmd입력후 => 확인버튼클릭

C:\Users\Administrator> sqlplus  system/oracle
 SQL>  select dbms_xdb.getHttpPort() from dual;  ←포트확인
 SQL>  exec dbms_xdb.setHttpPort(9000); ← 8080에서 9000으로 변경   
 SQL>  select dbms_xdb.getHttpPort() from dual;

 SQL>  commit ;
 SQL>  show user ;
 SQL>  exit ;

먼저 이클립스랑  톰캣웹서버연결 
C:\Users\Administrator> sqlplus  system/oracle
SQL>  show user ;
SQL>  drop  table  insa ;
SQL> create테이블 작성 ===> 아직은 하지 마세요 

=======================================================================================================
select  *  from  user_sequences ; 
drop  sequence  insa_seq;
create  sequence  insa_seq ; 

select  * from tab ;
drop  table  insa ;

create  table  insa(
   sabun   number(4) primary key,
   name   varchar2(16) not null  ,
   nalja  date  not null ,
   pay    number(3)   not null
 ); 

commit;

insert  into  insa   values(4400, 'first',   sysdate, 40) ;
insert  into  insa   values(4411, 'two',   sysdate, 41) ;
insert  into  insa   values(4422, 'three',   sysdate, 42) ;
insert  into  insa   values(4433, 'aaa3',   sysdate, 43) ;
insert  into  insa   values(4444, 'aaa4',   sysdate, 44) ;
insert  into  insa   values(4455, 'aaa5',   sysdate, 45) ;
insert  into  insa   values(4466, 'aaa6',   sysdate, 46) ;
insert  into  insa   values(4477, 'aaa7',   sysdate, 47) ;
insert  into  insa   values(4488, 'aaa8',   sysdate, 48) ;
insert  into  insa   values(4499, 'ten',   sysdate, 49) ;

insert  into  insa   values(5500, 'apple',   sysdate, 50) ;
insert  into  insa   values(5511, 'banana',   sysdate, 51) ;
insert  into  insa   values(5522, 'cherry',   sysdate, 52) ;
insert  into  insa   values(5533, 'orange',   sysdate, 53) ;
insert  into  insa   values(5544, 'bbb4',   sysdate, 54) ;
insert  into  insa   values(5555, 'bbb5',   sysdate, 55) ;
insert  into  insa   values(5566, 'bbb6',   sysdate, 56) ;
insert  into  insa   values(5577, 'bbb7',   sysdate, 57) ;
insert  into  insa   values(5588, 'bbb8',   sysdate, 58) ;
insert  into  insa   values(5599, 'bbb9',   sysdate, 59) ;

insert  into  insa   values(6600, 'lee',   sysdate, 60) ;
insert  into  insa   values(6611, 'kim',   sysdate, 61) ;
insert  into  insa   values(6622, 'goo',   sysdate, 62) ;
insert  into  insa   values(6633, 'park',   sysdate, 63) ;
insert  into  insa   values(6644, 'ccc4',   sysdate, 64) ;
insert  into  insa   values(6655, 'ccc5',   sysdate, 65) ;
insert  into  insa   values(6666, 'ccc6',   sysdate, 66) ;
insert  into  insa   values(6677, 'ccc7',   sysdate, 67) ;
insert  into  insa   values(6688, 'ccc8',   sysdate, 68) ;
insert  into  insa   values(6699, 'last',   sysdate, 69) ;


commit;
set  pagesize  550 ;
set  linesize   550 ;

desc  insa ;
select  * from insa ;

________________________________________________________________________________________________________________________________________
오라클설치후 포트변경후  scott/tiger 생성하는 실습입니다
생략하세요  
웹브라우저 :  http://localhost:9000/apex
웹브라우저 :  http://127.0.0.1:9000/apex
웹브라우저 :  http://짝궁컴ip:9000/apex
   관리-> 데이타베이스 사용자 관리
             사용자생성
             userid:  scott
	     pass  :  tiger
	     하단에 사용자권한 모두선택

