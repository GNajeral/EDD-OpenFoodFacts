#SELECT * FROM OFF_2_version_produit

#SELECT * FROM OFF_2_pnns

USE base_bousse;

SELECT pseudo, COUNT(DISTINCT barcode) AS Products, YEAR(date_creation) AS Year FROM OFF_2_version_produit
GROUP BY pseudo, YEAR(date_creation)
ORDER BY Products DESC, Year DESC