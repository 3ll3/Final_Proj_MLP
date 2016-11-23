CREATE TABLE IF NOT EXISTS city_income_traffic AS
SELECT distinct
	aff_inc.region_id as metro_id,
	aff_inc.year as aff_date,
	aff_inc.wage as wage_usd,
	traffic.region_id as metro_id,
	traffic.year as year,
	traffic.population as population,
	traffic.congested_trav as congested_trav,
	traffic.ahod_per_cons as ahod_per_cons,
	traffic.ahod_per_cons_rank as ahod_per_cons_rank,
	traffic.tti_val as tti_val,
	traffic.csi_val as csi_val,
	traffic.csi_rank as csi_rank

FROM aff_inc
	LEFT JOIN traffic on (traffic.region_id = aff_inc.region_id)
WHERE traffic.region_id is not null and aff_inc.region_id is not null;
