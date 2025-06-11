-- 코드를 입력하세요
select
    date_format(sales_date, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
from online_sale
where year(sales_date) = 2022 and month(sales_date) = 3
union
select
    date_format(sales_date, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    NULL AS USER_ID,
    SALES_AMOUNT
from offline_sale
where year(sales_date) = 2022 and month(sales_date) = 3
order by 1, 2, 3