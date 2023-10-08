-- Querying a sub-tree

WITH RECURSIVE category_path (id, title, parent_id, PATH, lvl) AS
(
    SELECT 
  		id, 
  		title, 
  		parent_id,
  		string_to_array(title, '') as PATH,
  		0 AS lvl
    FROM categories
    WHERE id = 2
  UNION ALL
  	SELECT 
  		c.id, 
  		c.title, 
  		c.parent_id,
  		array_cat(cp.PATH, string_to_array(c.title, '')),
  		cp.lvl + 1 AS level
    FROM category_path AS cp JOIN categories AS c
      ON cp.id = c.parent_id
)
SELECT * FROM category_path;