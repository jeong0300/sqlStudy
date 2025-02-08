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

/* 해당 열의 데이터 중 해당 문자열이 포함된 데이터만 추출 */
select * from city where countrycode like 'KO_';

/* 내림차순 */
select * from city order by population  desc;

/* 조건에 맞게 정렬 */
select * from city order by CountryCode asc, population  desc;

/* 한국 인구수 내림차순 */
select * from city where countrycode = "KOR" order by population desc;

/* 국가 면적 크기로 내림차순 */
select * from country where SurfaceArea order by SurfaceArea desc;

/* 상위 n 개만 내림차순하여 출력 */
select * from city order by Population desc limit 10;

/* 도시의 개수 */
SELECT COUNT(DISTINCT name) FROM city;

/* 문자열 결합, null이 하나라도 있으면 null 반환 */
select concat('My', 'sql 0p', 'en Source'), concat('MySQL', NULL, 'OpenSource');

/* 문자열 찾기 대소문자 구분 없이 */
select locate('abc', 'abcddskdfABC'), locate('abc', 'abcddskdfABC', 7);

/* 왼쪽, 오른쪽 지정한 개수만큼 문자 반환 */
select left('MySQL is an open source relational database managment system', 5), 
right('MySQL is an open source relational database managment system', 6);

/* 모두 소문자, 대문자로 */
select lower('MySQL is an open source relational database managment system'),
upper('MySQL is an open source relational database managment system');

/* 문자열 대체 */
select replace('MSSQL', 'MS', 'My');

/* 공백제거, leading: 앞의 문자열 제거, trailing: 뒤의 문자열 제거*/
select trim('      ##MySQL##       '), 
trim(leading '#' from '##MySQL##'), 
trim(trailing '#' from '##MySQL##');

/* 3자리씩 끊고 소수 부분 자릿수 3개 */
select format(123456789.123456, 3);

/* floor:내림, ceil:올림, round:반올림*/
select floor(10.95),
floor(11.01),
floor(-10.95),
floor(-11.01),
ceil(10.95),
ceil(11.01),
ceil(-10.95),
ceil(-11.01),
round(10.95),
round(11.01),
round(-10.95),
round(-11.01);

/* sqrt: 양의 제곱근, pow: 제곱, exp: e 거듭제곱, log: 자연로그 */
select sqrt(4), pow(2,3), exp(3), log(3);

/* sin, cos, tan 값 반환 */
select sin(pi()/2), cos(pi()), tan(pi()/4);

/* abs: 절대값, rand: 0.0 < n < 1.0 실수 랜덤하게 출력 */
select abs(-3), round(rand()*100, 0);

/* now: 현재 날짜, 시간 curdate: 날짜 curtime: 시간*/
select now(), curdate(), curtime();

/* 현재 시간, 날짜 반환 */
select now(), date(now()), month(now()), day(now()), hour(now()), minute(now()), second(now());

/* 월, 요일 반환 */
select monthname(now()), dayname(now()); 

/* 일자 변환, 월에서 몇번째 날인지, 일자에서 몇 번째 날인지 */
select dayofmonth(now()), dayofweek(now()), dayofyear(now());

/* 날짜, 시간을 문자열로 변환 */
select date_format(now(), '%D %y %a %d %m %n %j');
