-- Question 4:
SELECT DISTINCT first_name, last_name
FROM dvdfilm_actor
JOIN dvdactor
    ON dvdactor.actor_id = dvdfilm_actor.actor_id
JOIN dvdfilm
    ON dvdfilm.film_id = dvdfilm_actor.film_id
JOIN dvdfilm_category
    ON dvdfilm_category.film_id = dvdfilm.film_id
JOIN dvdcategory
    ON dvdfilm_category.category_id = dvdcategory.category_id
WHERE dvdcategory.name = 'Comedy';
