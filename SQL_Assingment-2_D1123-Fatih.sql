select * from [product].[product]

select * from [product].[product]
where product_name like '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD'

select * from [product].[product]
where product_name like 'Polk Audio - 50 W Woofer - Black'

select * from [product].[product]
where product_name like 'SB-2000 12 500W Subwoofer (Piano Gloss Black)'

select * from [product].[product]
where product_name like 'Virtually Invisible 891 In-Wall Speakers (Pair)'




SELECT A.product_id, A.product_name, B.category_id, B.category_name
FROM product.product A
INNER JOIN product.category B ON A.category_id = B.category_id
INNER JOIN product.category B ON A.category_id = B.[item_id]

