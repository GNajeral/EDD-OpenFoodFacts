USE base_gnajeralavid;

SELECT Version.nutriscore_presence, COUNT(Version.version_id) AS Versions, YearModification, MonthModification FROM FactTable1
INNER JOIN Version ON Version.version_id = FactTable1.version_id
GROUP BY nutriscore_presence, YearModification, MonthModification
ORDER BY YearModification