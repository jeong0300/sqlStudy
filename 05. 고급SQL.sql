/* 해당 테이블의 열 중 조건에 맞는 데이터 추출 */
select * from city where CountryCode = ( select CountryCode from city where name = 'seoul');

/* 뉴욕의 인구수의 최솟값보다 많은 도시들 출력 */
select * from city where population > any ( select Population from city where district = 'New York');

/* 뉴욕의 인구수의 최댓값보다 많은 도시들 출력 */
select * from city where population > all ( select population from city where District = 'New York');

/* 각 도시의 최대 인구수 그룹화하여 출력 */
select countrycode, MAX(population) from city group by countrycode;	

/* 도시들의 평균 인구수 */
select name, avg(population) from city group by name;

/* 최대 8000000 이상인 countrycode 추출 */
select countrycode, max(population) 'max population' from city group by CountryCode having max(population) >8000000;

/* 헤딩 countrycode의 인구수의 합 추출 */
select countrycode, name, sum(population) from city group by CountryCode, name with rollup;

/* 두 테이블의 국가 코드를 합쳐서 테이블 추출 */
select * from city join country on city.CountryCode = country.code;

/* 세 테이블 join하기 */
select * from city join country on city.CountryCode = country.code join countrylanguage on city.CountryCode = countrylanguage.countrycode;

/* 세 테이블 join 하고 한국 정보만 뷰 생성 */
CREATE VIEW KoreaCityView AS
SELECT 
    city.Name AS CityName, 
    country.Name AS CountryName, 
    country.Code AS CountryCode, 
    countrylanguage.Language
FROM city
JOIN country ON city.CountryCode = country.Code 
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode
WHERE city.CountryCode = 'KOR';

select * from KoreaCityView;