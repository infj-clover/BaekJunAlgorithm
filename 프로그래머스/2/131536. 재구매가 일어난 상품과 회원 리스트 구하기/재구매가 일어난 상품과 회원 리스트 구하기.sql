/*
1. filter : 하나의 회원이 하나의 상품을 재구매한 데이터 구하기
1-2 : 재구매한 회원 id, 재구매한 상품 id 출력
2. table : online_sale
3. sort : 회원 Id 기준 ASC, 상품 id DESC
*/

SELECT user_id
,      product_id
FROM online_sale
GROUP BY user_id, product_id
HAVING COUNT(*) >= 2
ORDER BY user_id ASC, product_id DESC;