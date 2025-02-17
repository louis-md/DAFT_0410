![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | MySQL Select

## Introduction

 In this lab, we will practice selecting and projecting data. You can finish all questions with only these clauses:
- `SELECT`
- `SELECT DISTINCT`
- `COUNT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `SUM`
- `LIMIT`

The Sql script is here: https://drive.google.com/file/d/1tT1OTdIgkI5tkeeXIsnZwMC5SxI1FE9m/view
Please submit your solutions in a text file `solutions.sql`.

#### 1. From the `order_items` table, find the price of the highest priced order and lowest price order.

Highest: 810
Lowest: 12.99

#### 2. From the `order_items` table, what is range of the shipping_limit_date of the orders?

From 2017-02-13 14:57:51 to 2018-08-17 14:15:10

#### 3. From the `customers` table, find the states with the greatest number of customers.

"customer_zip_code_prefix": 13212
"Number of Customers": "95",

#### 4. From the `customers` table, within the state with the greatest number of customers, find the cities with the greatest number of customers.

"customer_city": "guaratingueta"
"Number of Customers": "98",

#### 5. From the `closed_deals` table, how many distinct business segments are there (not including null)?

33

#### 6. From the `closed_deals` table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).

200000;
construction_tools_house_garden, phone_mobile, home_decor

#### 7. From the `order_reviews` table, find the total number of distinct review score values.

5

#### 8. In the `order_reviews` table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.



#### 9. From the `order_reviews` table, find the review value occurring most frequently and how many times it occurs.

"review_score": 1,
"COUNT(review_score)": "11858"

