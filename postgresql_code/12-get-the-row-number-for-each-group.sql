WITH RECURSIVE category_path (id, title, parent_id, PATH, lvl) AS
(
    SELECT 
  		id, 
  		title, 
  		parent_id,
  		string_to_array(title, '') as PATH,
  		0 AS level,
		  ROW_NUMBER() OVER (PARTITION BY 0) AS row_number_for_each_group
    FROM categories
    WHERE parent_id IS NULL
  UNION ALL
  	SELECT 
  		c.id, 
  		c.title, 
  		c.parent_id,
  		array_cat(cp.PATH, string_to_array(c.title, '')),
  		cp.lvl + 1 AS level,
      ROW_NUMBER() OVER (PARTITION BY cp.lvl) AS row_number_for_each_group
    FROM category_path AS cp JOIN categories AS c
      ON cp.id = c.parent_id
)
SELECT
		*
FROM category_path
-- this only gets the first element (node) from each depth (level) 
WHERE category_path.row_number_for_each_group <= 1;
