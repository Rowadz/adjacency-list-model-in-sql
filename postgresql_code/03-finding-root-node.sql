-- Finding the root node
SELECT
	*
FROM
	categories c
WHERE
	parent_id IS NULL;
