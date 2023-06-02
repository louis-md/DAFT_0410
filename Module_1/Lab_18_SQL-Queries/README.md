![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | My first queries

Please, download the file applestore.csv.
Install MySQL/Postgresql on your computer.
Create a database
Upload the file as a new table of your database

Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**

'Games'
'Productivity'
'Weather'
'Shopping'
'Reference'
'Finance'
'Music'
'Utilities'
'Travel'
'Social Networking'
'Sports'
'Business'
'Photo & Video'
'Navigation'
'Entertainment'
'Education'
'Lifestyle'
'Food & Drink'
'News'
'Health & Fitness'
'Medical'
'Book'


**2. Which is the genre with the most apps rated?**

SELECT COUNT(id), rating_count_tot, prime_genre FROM applestore.mytable
GROUP BY prime_genre, rating_count_tot
ORDER BY COUNT(id) DESC

'Social Networking' with 2974676 apps rated

**3. Which is the genre with most apps?**

SELECT COUNT(id), prime_genre FROM applestore.mytable
GROUP BY prime_genre

'Games' with 168 apps

**4. Which is the one with least?**

'Medical' with 1

**5. Find the top 10 apps most rated.**

SELECT track_name FROM applestore.mytable
ORDER BY rating_count_tot DESC
LIMIT 10;

Facebook
Pandora - Music & Radio
Pinterest
Bible
Angry Birds
Fruit Ninja Classic
Solitaire
PAC-MAN
Calorie Counter & Diet Tracker by MyFitnessPal
The Weather Channel: Forecast,Radar & Alerts

**6. Find the top 10 apps best rated by users.**

SELECT track_name FROM applestore.mytable
ORDER BY user_rating DESC
LIMIT 10;

Plants vs. Zombies
Kurumaki Calendar -month scroll calendar-
Learn to Speak Spanish Fast With MosaLingua
The Photographer's Ephemeris
Sudoku +
TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF
J&J Official 7 Minute Workout
Domino's Pizza USA
Plants vs. Zombies HD
:) Sudoku +

**7. Take a look at the data you retrieved in question 5. Give some insights.**

Best rated apps are not the most rated apps.

**8. Take a look at the data you retrieved in question 6. Give some insights.**

Best rated apps are not the most rated apps.

**9. Now compare the data from questions 5 and 6. What do you see?**

Best rated apps are not the most rated apps.

**10. How could you take the top 3 regarding both user ratings and number of votes?**

SELECT track_name, user_rating, rating_count_tot FROM applestore.mytable
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

No they don't

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
