����Ŭ�� �ڵ�����  C:\��Ʈ�� ��ġ�ǿ�. (����Ŭ��ġ   ��й�ȣ: oracle, oracle) 
C:\oraclexe��ο� ��ġ

[Window7���]
����-> �Ǹ����� ����ִ� �׸𳭹ڽ� => cmd  �Է��� enterġ�� �ܼ�

[WindowXP���]
���� -> ���� => cmd�Է��� => Ȯ�ι�ưŬ��

C:\Users\Administrator> sqlplus  system/oracle
 SQL>  select dbms_xdb.getHttpPort() from dual;  ����ƮȮ��
 SQL>  exec dbms_xdb.setHttpPort(9000); �� 8080���� 9000���� ����   
 SQL>  select dbms_xdb.getHttpPort() from dual;

 SQL>  commit ;
 SQL>  show user ;
 SQL>  exit ;

���� ��Ŭ������  ��Ĺ���������� 
C:\Users\Administrator> sqlplus  system/oracle
SQL>  show user ;
SQL>  drop  table  insa ;
SQL> create���̺� �ۼ� ===> ������ ���� ������ 

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
����Ŭ��ġ�� ��Ʈ������  scott/tiger �����ϴ� �ǽ��Դϴ�
�����ϼ���  
�������� :  http://localhost:9000/apex
�������� :  http://127.0.0.1:9000/apex
�������� :  http://¦����ip:9000/apex
   ����-> ����Ÿ���̽� ����� ����
             ����ڻ���
             userid:  scott
	     pass  :  tiger
	     �ϴܿ� ����ڱ��� ��μ���

