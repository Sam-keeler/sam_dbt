SELECT c_custkey
FROM {{ ref('playingwithtests')}}
WHERE c_custkey IS NULL
