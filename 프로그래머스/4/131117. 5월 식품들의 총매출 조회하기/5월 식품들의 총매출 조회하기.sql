/*
1. filter : food_product, food_order 테이블에서 생산일자가 2022년 5월인 식품들의 식품ID, 식품 이름, 총매출을 조회하는 쿼리
2. column : 식품ID, 식품 이름, 총매출
3. sort : 총매출 기준 내림차순, 매출이 같다면 ID기준으로 오른차순
*/

SELECT p.product_id as product_id
,      p.product_name
,      SUM(p.price * o.amount) as total
FROM food_product as p
    INNER JOIN food_order as o ON p.product_id = o.product_id
WHERE DATE_FORMAT(o.produce_date, '%Y-%m') = '2022-05'
GROUP BY p.product_id, p.product_name
ORDER BY total DESC, product_id ASC;