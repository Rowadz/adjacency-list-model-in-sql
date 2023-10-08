-- Finding the leaf nodes - way 2

-- start by joining - this gives each node and all of it's children
SELECT leafs.id, leafs.title, c2.id, c2.title  
FROM categories leafs 
JOIN categories c2 ON c2.parent_id = leafs.id;

-- find all of the leafe nodes
SELECT leafs.id, leafs.title, c2.id, c2.title  
FROM categories leafs 
LEFT JOIN categories c2 ON c2.parent_id = leafs.id
WHERE c2.id IS NULL;