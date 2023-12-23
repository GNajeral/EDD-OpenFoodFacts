USE base_bousse;

SELECT A.barcode, A.nutriscore_lettre, B.barcode, B.nutriscore_lettre FROM OFF_2_version_produit A, OFF_2_version_produit B
WHERE A.barcode = B.barcode AND A.nutriscore_lettre != B.nutriscore_lettre