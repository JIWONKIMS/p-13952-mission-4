-- 코드를 입력하세요
SELECT
    D3.ID
from ecoli_data D1
         inner join ecoli_data D2
                    on D1.ID = D2.PARENT_ID
         inner join ECOLI_DATA D3
                    on D2.ID = D3.PARENT_ID
where D1.PARENT_ID is null
order by 1
