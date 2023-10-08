INSERT
	INTO
	categories(title, tree_id)
VALUES('Fruits', md5(random()::text));

INSERT INTO categories(title, parent_id, tree_id) 
VALUES('Apple', 1, 'd95cc021889f704cdf6ee7195c2bb0aa');

INSERT INTO categories(title, parent_id, tree_id)  
VALUES('Mango', 1, 'd95cc021889f704cdf6ee7195c2bb0aa');

INSERT INTO categories(title, parent_id, tree_id) 
VALUES('Green Apple', 2, 'd95cc021889f704cdf6ee7195c2bb0aa');


INSERT INTO categories(title, parent_id, tree_id) 
VALUES('Yellow Apple', 2, 'd95cc021889f704cdf6ee7195c2bb0aa');

INSERT INTO categories(title, parent_id, tree_id) 
VALUES('Red Apple', 2, 'd95cc021889f704cdf6ee7195c2bb0aa');
