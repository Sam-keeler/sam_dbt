SELECT sum(c_acctbal)
FROM {{ ref('playingwithtests')}}
HAVING sum(c_acctbal) >= 100000000
