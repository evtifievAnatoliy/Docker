CREATE TABLE items (
  itemId int primary key auto_increment,
  itemName varchar(100)
);

CREATE TABLE brends (
  brendId int primary key auto_increment,
  brendName varchar(100)
);

CREATE TABLE items_brends (
  id int primary key auto_increment,
  itemId int,
  brendId int
);

INSERT INTO items (itemName) values ("item1"), ("item2"), ("item3");
INSERT INTO brends (brendName) values ("brend1"), ("brend2"), ("brend3");
INSERT INTO items_brends (itemId, brendId) values (1, 1), (1, 2), (2, 1);

select coalesce(items.itemName, "NULL_NULL"), brends.brendName from items 
	inner join items_brends on items.itemId = items_brends.itemId
    right join brends on items_brends.brendId = brends.brendId;