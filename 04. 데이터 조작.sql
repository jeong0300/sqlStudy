/* 데이터 추가 */
insert into test2 value(1, 123, 1.1, "Test" );

select * from test2;

/*SELECT * FROM world.test2;*/

/* 전체 행 내용 변경 */
update test2 set col1=1, col2=1.0, col3='test' where id =1;
select * from test2;

/* 데이터 삭제 */
delete from test2 where id=1;
select * from test2;

/* 해당 테이블의 데이터만 모두 삭제 */
truncate table test2;
select * from test2;