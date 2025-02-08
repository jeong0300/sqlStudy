/* 현재 데이터베이스 보기 */
show databases;

/* 사용할 데이터베이스 지정 */
use world;

/* 지정한 데이터베이스의 테이블 보기 */
show tables;

/* 지정한 데이터베이스의 테이블 정보 보기 */
show table status;

/* 해당 테이블의 열 보기 */
describe city; 
desc city;

/* 테이블 정보 보기 */
describe country;
describe countrylanguage;

/* city 테이블과 같은 city2 테이블 생성 */
use world;
create table city2 as select * from city;
select * from city2;

/* 데이터베이스 생성 */
create database suan;
use suan;
drop database suan;

/* 테이블 생성 */
create table test2(
	id int not null primary key,
    col1 int null,
    col2 float null,
    col3 varchar(45) null
);

select * from test2;

/* 컬럼 추가 */
alter table test2 add col4 int null;

desc test2;

/* 컬럼 수정 */
alter table test2 modify col4 varchar(20) null;

desc test2;

/* 컬럼 삭제 */
alter table test2 drop col4;

desc test2;

/* 인덱스 생성*/
create index Col1Idx on test2 (col1);

/* 인덱스 보기 */
show index from test2;

/* 중복 허용하지 않는 인덱스 */
create unique index Col2Idx on test2 (col2);

show index from test2;

/* 모든 텍스트 컬럼 검색 */
alter table test2 add fulltext Col3Idx (col3); 
show index from test2;

/* 인덱스 삭제 */
alter table test2 drop index Col3Idx;

show index from test2;

/* 인덱스 삭제 */
drop index Col2Idx on test2;

show index from test2;

/* 뷰 생성 */
create view testView as select Col1, Col2 from test2;

select * from testView;

/* 뷰 수정 */
alter view testView as select Col1, Col2, Col3 from test2;

select * from testView;

/* 뷰 삭제 */
drop view testView;

/* 테이블 삭제 */
drop table test2;

/* 데이터베이스 삭제 */
drop database suns;