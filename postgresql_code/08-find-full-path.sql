-- find full path


WITH RECURSIVE category_path (id, title, path) AS
(
  SELECT id, title, title as path
    FROM categories
    WHERE parent_id IS NULL
  UNION ALL
  SELECT c.id, c.title, CONCAT(cp.path, ' > ', c.title)::varchar(50)
    FROM category_path AS cp JOIN categories AS c
      ON cp.id = c.parent_id
)
SELECT * FROM category_path
ORDER BY path;