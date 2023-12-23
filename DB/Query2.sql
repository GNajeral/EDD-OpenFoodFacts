USE base_bousse;

SELECT barcode, COUNT(barcode) AS Versions, YEAR(date_modification) AS Year, MONTH(date_modification) AS Month FROM OFF_2_version_produit
GROUP BY barcode, YEAR(date_modification), MONTH(date_modification)
ORDER BY Versions DESC, Year DESC