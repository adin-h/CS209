-- Question 2:
SELECT DISTINCT first_name, title  
FROM dvdfilm_actor
JOIN dvdactor
    ON dvdfilm_actor.actor_id = dvdactor.actor_id
JOIN dvdfilm
    ON dvdfilm.film_id = dvdfilm_actor.film_id
WHERE last_name = 'Willis';
