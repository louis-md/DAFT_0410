-- Number of Customers per Zip Code
SELECT count(customer_id) as "Number of Customers", customer_zip_code_prefix FROM customers
GROUP BY customer_zip_code_prefix;

-- City with the most customers
SELECT count(customer_id) as "Number of Customers", customer_city FROM customers
GROUP BY customer_city

-- Number of business segments
SELECT count(distinct business_segment) as "Number of Business Segments" FROM closed_deals;

-- Sum of declared revenue of duplicates:
SELECT COUNT(business_segment), SUM(declared_monthly_revenue)
FROM closed_deals
GROUP BY business_segment, declared_monthly_revenue
HAVING COUNT(business_segment) > 1

-- 3 business segments with highest declared revenue
SELECT business_segment, SUM(declared_monthly_revenue) as "Total Revenue"
FROM closed_deals
GROUP BY business_segment
ORDER BY SUM(declared_monthly_revenue) DESC
LIMIT 3;

-- Total number of disctinct review score values
SELECT DISTINCT review_score, COUNT(review_score) FROM order_reviews
GROUP BY review_score;
