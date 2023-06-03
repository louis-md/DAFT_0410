-- Challenge 2:
SELECT author.au_id, author.au_fname, author.au_lname, publisher.pub_name, COUNT(titles.title_id) as "Number of Titles"
FROM olist.titleauthor titles
LEFT JOIN olist.authors author 
ON author.au_id = titles.au_id
LEFT JOIN olist.titles _titles
ON titles.title_id = _titles.title_id
LEFT JOIN olist.publishers publisher
ON _titles.pub_id = publisher.pub_id

--Remove the following for solution to challenge 1:
GROUP BY author.au_id, author.au_fname, author.au_lname, publisher.pub_name
ORDER BY author.au_id DESC;
