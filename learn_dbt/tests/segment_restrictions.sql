SELECT c_mktsegment
FROM {{ ref('playingwithtests')}}
WHERE c_mktsegment NOT IN ('BUILDING', 'AUTOMOBILE',
                           'MACHINERY', 'HOUSEHOLD', 'FURNITURE')
