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

/* 해당 테이블의 모든 정보 추출 */
select * from city;

/* 해당 테이블의 원하는 정보 추출 */
select name, district from city;

/* 원하는 조건의 데이터만 추출 */
select * from city where population > 8000000;

/* 원하는 조건의 데이터만 추출 */
select * from city where population > 7000000 and population < 8000000;

/* 한국에 있는 도시 보기 */
select * from city where countrycode = "KOR";

/* 미국에 있는 도시 보기 */
select * from city where countrycode = "USA";

/* 한국에 있는 도시 중 인구 수 1,000,000 이상인 도시 */
select * from city where countrycode = "KOR" and Population > 1000000;

/* 해당 테이블의 a 에서 b 사이 정보만 추출 */
select * from city where population between 7000000 and 8000000;

/* 데이터 중에 해당 데이터를 추출 */
select * from city where name in ("seoul", "new york", "tokyo");

/* 한국, 미국, 일본 도시들 보기 */
select * from city where countrycode in ("KOR", "USA", "JPN");