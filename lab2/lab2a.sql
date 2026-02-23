-- Question 1:
SELECT DISTINCT title 
FROM dvdfilm
JOIN dvdlanguage
    ON dvdfilm.language_id = dvdlanguage.language_id
WHERE NOT dvdlanguage.language_id = 1;
