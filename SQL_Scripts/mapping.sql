DROP TABLE mapping;

CREATE TABLE IF NOT EXISTS mapping AS SELECT

metro_region_id_zillow AS metro_id,
metro_name_zillow AS metro_name,
state AS state,
cbsa_code AS cbsa_code,

CASE WHEN state IN ("Alaska", "Hawaii", "Washington", "Oregon", "California")
THEN "West"
WHEN state IN ("Montana", "Idaho", "Wyoming", "Nevada", "Utah", "Colorado")
THEN "Mountain West"
WHEN state in ("Arizona", "New Mexico", "Texas", "Oklahoma")
THEN "Southwest"
WHEN state in ("North Dakota", "South Dakota", "Nebraska", "Kansas",
"Minnesota", "Iowa", "Missouri", "Wisconsin", "Illinois", "Indiana", 
"Michigan", "Ohio")
THEN "Midwest"
WHEN state in ("Pennsylvania", "New York", "New Jersey", "Vermont", 
"New Hampshire", "Massachusetts", "Maine", "Connecticut", "Rhode Island")
THEN "Northeast"
ELSE "Southeast" END AS region 

from mapping_schema;

