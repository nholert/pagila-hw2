SELECT feature.special_features,
       COUNT(*) AS count
FROM film
CROSS JOIN LATERAL unnest(film.special_features)
    AS feature(special_features)
GROUP BY feature.special_features
ORDER BY feature.special_features;
/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */
