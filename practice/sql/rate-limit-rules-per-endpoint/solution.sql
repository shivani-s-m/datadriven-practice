SELECT endpoint, MIN(allowed) as min_allowed,
MAX(allowed) as max_allowed,
CONCAT('Allowed > ', MIN(allowed), ' AND Allowed <= ',MAX(allowed), ' => Endpoint = ', endpoint) as summary
FROM rate_limits
GROUP BY endpoint
