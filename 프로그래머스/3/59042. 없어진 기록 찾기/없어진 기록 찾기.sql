/*
1. filter : 천재지변으로 인해 일부 데이터가 유실되었습니다. 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 쿼리
2. column : animal_id, name
3. sort : animal_id ASC
*/

SELECT o.animal_id
,      o.name
FROM animal_outs AS o
    LEFT JOIN animal_ins AS i ON o.animal_id = i.animal_id
WHERE i.animal_id IS NULL
ORDER BY o.animal_id ASC;

