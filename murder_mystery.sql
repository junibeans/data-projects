
SELECT *
FROM crime_scene_report
WHERE type = 'murder'
	AND city = 'SQL City'



SELECT gfnm.name
FROM drivers_license AS dl
INNER JOIN interview AS i
	ON dl.id = gfnm.id
INNER JOIN facebook_event_checkin AS fec
	ON gfnm.person_id = fec.person_id
WHERE dl.height BETWEEN 65 AND 67
	AND dl.hair_color = 'red'
	AND dl.car_make = 'Tesla'
	AND dl.car_model = 'Model S'
	AND fec.event_name = 'SQL Symphony Concert'
	AND fec.date LIKE '201712__'



SELECT p.name, p.id
--	,i.transcript
FROM drivers_license AS dl
INNER JOIN person AS p ON dl.id = p.license_id
INNER JOIN facebook_event_checkin AS fec
	ON p.id = fec.person_id
LEFT JOIN interview AS i ON p.id = i.person_id
WHERE dl.height BETWEEN 65 AND 67
	AND dl.hair_color = 'red'
	AND dl.car_make = 'Tesla'
	AND dl.car_model = 'Model S'
	AND fec.event_name = 'SQL Symphony Concert'
	AND fec.date LIKE '201712__'