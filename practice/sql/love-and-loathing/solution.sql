WITH fan_rank as (SELECT owner as fan_owner,
ROW_NUMBER() OVER (ORDER BY rollout DESC, flag_id ASC) as row_num
FROM feat_flags
WHERE enabled = 1
ORDER BY rollout DESC, flag_id ASC),
opponent_rank as (SELECT owner as opponent_owner,
ROW_NUMBER() OVER(ORDER BY rollout DESC, flag_id ASC) as row_num
FROM feat_flags 
WHERE enabled=0
ORDER BY rollout DESC, flag_id ASC)
SELECT fan_owner, opponent_owner
FROM opponent_rank as o 
INNER JOIN fan_rank as f on f.row_num = o. row_num
