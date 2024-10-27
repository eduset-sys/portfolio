SELECT * FROM [road_accidents sql]

SELECT SUM(number_of_casualties) AS CY_Casualties FROM [road_accidents_sql] WHERE YEAR (accident_date) = '2022' 








SELECT COUNT(DISTINCT accident_index) AS CY_Accidents FROM [road_accidents sql] WHERE YEAR (accident_date) = '2022' 


SELECT SUM(number_of_Casualties) AS CY_Fatal_Casualties FROM [road_accidents sql] WHERE YEAR (accident_date) = '2022' 

SELECT SUM(number_of_Casualties) AS CY_Fatal_Casualties FROM [road_accidents sql] WHERE YEAR (accident_date) = '2022' AND accident_severity = 'Fatal'
 
 SELECT SUM(number_of_Casualties) AS CY_Fatal_Casualties FROM [road_accidents sql] WHERE accident_severity = 'Fatal'

  SELECT SUM(number_of_Casualties) AS CY_Serious_Casualties FROM [road_accidents sql] WHERE accident_severity = 'Serious'

SELECT SUM(number_of_Casualties) AS CY_Serious_Casualties FROM [road_accidents sql] WHERE YEAR (accident_date) = '2022' AND accident_severity = 'Serious'

SELECT SUM(number_of_Casualties) AS CY_Slight_Casualties FROM [road_accidents sql] WHERE YEAR (accident_date) = '2022' AND accident_severity = 'Slight'

  SELECT SUM(number_of_Casualties) AS CY_Slight_Casualties FROM [road_accidents sql] WHERE accident_severity = 'Slight'


      SELECT CAST(SUM(number_of_Casualties) AS decimal(10,2))*100 /
	  (SELECT CAST( SUM( number_of_Casualties) AS decimal(10,2)) FROM [road_accidents sql])   FROM [road_accidents sql] WHERE accident_severity = 'Slight'



      SELECT CAST(SUM(number_of_Casualties) AS decimal(10,2))*100 /
	  (SELECT CAST( SUM( number_of_Casualties) AS decimal(10,2)) FROM [road_accidents sql]) AS PCT  
	  FROM [road_accidents sql] WHERE accident_severity = 'Serious'

	   SELECT CAST(SUM(number_of_Casualties) AS decimal(10,2))*100 /
	  (SELECT CAST( SUM( number_of_Casualties) AS decimal(10,2)) FROM [road_accidents sql]) AS PCT  
	  FROM [road_accidents sql] WHERE accident_severity = 'Fatal'
















	  
	  SELECT
	  CASE
	  WHEN vehicle_type IN ('Agricultural vehicle') THEN 'Agricultural'
	   WHEN vehicle_type IN ('Car','Taxi/Private hire car') THEN 'Cars'
	   WHEN vehicle_type IN ('Motorcycle 125cc and under','Motorcycle 50cc and under','Motorcycle 500cc','Pedal cycle') THEN 'Bike'
	    WHEN vehicle_type IN ('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') THEN 'Bus'
		 WHEN vehicle_type IN ('Goods over 3.5t. and under 7.5t','Goods 7.5 tonnes mgw and over','Van / Goods 3.5 tonnes mgw or under') THEN 'Van'
		 ELSE 'Other'
		 END AS vehicle_group,
		 SUM(number_of_casualties) as CY_Casualties
		 FROM [road_accidents sql]
		 WHERE YEAR(accident_date) = '2022'
		 GROUP BY
		 CASE
		 WHEN vehicle_type IN ('Agricultural vehicle') THEN 'Agricultural'
	   WHEN vehicle_type IN ('Car','Taxi/Private hire car') THEN 'Cars'
	   WHEN vehicle_type IN ('Motorcycle 125cc and under','Motorcycle 50cc and under','Motorcycle 500cc','Pedal cycle') THEN 'Bike'
	    WHEN vehicle_type IN ('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') THEN 'Bus'
		 WHEN vehicle_type IN ('Goods over 3.5t. and under 7.5t','Goods 7.5 tonnes mgw and over','Van / Goods 3.5 tonnes mgw or under') THEN 'Van'
		 ELSE 'Other'
		 END

		
		
		
		
		SELECT DATENAME(MONTH,accident_date) AS Month_Name,SUM(number_of_casualties) FROM [road_accidents sql] WHERE YEAR(accident_date)='2021' GROUP BY DATENAME(Month,accident_date)


		SELECT road_type,SUM(number_of_casualties) AS CY_Casualties FROM [road_accidents sql] WHERE YEAR(accident_date)='2022' GROUP BY road_type

				SELECT urban_or_rural_area,SUM(number_of_casualties) AS CY_Casualties FROM [road_accidents sql] WHERE YEAR(accident_date)='2022' GROUP BY urban_or_rural_area


								SELECT urban_or_rural_area,SUM(number_of_casualties) *100/(SELECT SUM(number_of_casualties) FROM [road_accidents sql] WHERE YEAR(accident_date)='2022') FROM [road_accidents sql] WHERE YEAR(accident_date)='2022'  GROUP BY urban_or_rural_area


																SELECT urban_or_rural_area,CAST(SUM(number_of_casualties)  AS decimal(10,2))*100/(SELECT CAST(SUM(number_of_casualties)AS decimal(10,2)) FROM [road_accidents sql] WHERE YEAR(accident_date)='2022') FROM [road_accidents sql] WHERE YEAR(accident_date)='2022'  GROUP BY urban_or_rural_area






																  SELECT local_authority,SUM(number_of_casualties) AS Total_Conditions From [road_accidents sql] GROUP BY local_authority

		
