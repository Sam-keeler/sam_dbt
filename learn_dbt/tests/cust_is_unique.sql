SELECT c_custkey, COUNT(*)
FROM {{ ref('playingwithtests')}}
GROUP BY c_custkey
HAVING COUNT(*) > 1
