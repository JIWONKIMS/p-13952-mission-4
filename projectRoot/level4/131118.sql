-- 코드를 입력하세요
SELECT
    I.REST_ID,
    I.REST_NAME,
    I.FOOD_TYPE,
    I.FAVORITES,
    I.ADDRESS,
    ROUND(AVG(V.REVIEW_SCORE), 2) AS SCORE
from rest_info I
         inner join rest_review V
                    on I.rest_id = V.rest_id
where I.address LIKE '서울%'
group by 1, 2, 3, 4, 5
order by 6 desc, 4 desc