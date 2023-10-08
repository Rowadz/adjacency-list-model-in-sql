-- Finding the leaf nodes - way 1

SELECT c.id FROM categories c 
WHERE c.id NOT IN (
	SELECT parent_id FROM categories c2
	WHERE parent_id IS NOT NULL
)


-- NOT IN () is equal to saying

SELECT
	'true'
WHERE
	3 <> 1 AND 3 <> 2 AND 3 <> NULL;

-- SELECT 1 AS a 
-- WHERE 1 NOT IN (1,2,3,NULL);


-- IN () is equal to saying

SELECT
	'true'
WHERE
	3 = 1 OR 3 = 2 OR 3 = 3 OR 3 = NULL;