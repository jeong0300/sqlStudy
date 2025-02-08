/* 해당 테이블의 모든 정보 추출 */
select * from city;

/* 해당 테이블의 원하는 정보 추출 */
select name, district from city;

/* 중복없이 해당 정보 추출 */
select distinct countrycode from city; 

/* 문자열 길이 반환 */
select length('123456789');
