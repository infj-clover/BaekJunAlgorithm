/*
1. filter : 상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 쿼리
2. column : flavor
3. sort : 총주문량이 큰 순서대로 (DESC)

*/
SELECT f.flavor
FROM first_half as f
    INNER JOIN icecream_info as i ON f.flavor = i.flavor
WHERE f.total_order > 3000
AND i.flavor IN ('strawberry','melon')
ORDER BY f.total_order DESC;