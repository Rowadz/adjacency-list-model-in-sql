-- Find how many immediate children a node has

SELECT parents.title, COUNT(c2.id)  
FROM categories parents
JOIN categories c2 ON c2.parent_id = parents.id
GROUP BY parents.title;