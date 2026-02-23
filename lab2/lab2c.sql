-- Question 3:
SELECT DISTINCT film_id, last_name
FROM dvdfilm_actor
JOIN dvdactor
    ON dvdfilm_actor.actor_id = dvdactor.actor_id
