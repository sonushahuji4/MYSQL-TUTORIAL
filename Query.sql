/* To see all the database in mysql */
SHOW DATABASES;

/*      output

    MariaDB [(none)]> SHOW DATABASES;
    +--------------------+
    | Database           |
    +--------------------+
    | amaclone           |
    | datademo           |
    | demo               |
    | events             |
    +--------------------+
*/

/* To select a particular database in mysql */
/* USE database_name; */

USE events;
/*      output
    MariaDB [(none)]> USE events;
    Database changed 
*/

/* To see all the tables */
SHOW TABLES;

/*          OUTPUT

    MariaDB [events]> SHOW TABLES;
    +------------------+
    | Tables_in_events |
    +------------------+
    | comments         |
    | follows          |
    | likes            |
    | posts            |
    | users            |
    +------------------+
    5 rows in set (0.00 sec)

*/

/* To get the description(information about the table) use */
DESC table_name;

/*  OUTPUT
        MariaDB [events]> desc comments;
    +------------+--------------+------+-----+---------+----------------+
    | Field      | Type         | Null | Key | Default | Extra          |
    +------------+--------------+------+-----+---------+----------------+
    | comment_id | int(11)      | NO   | PRI | NULL    | auto_increment |
    | user_id    | int(11)      | NO   | MUL | NULL    |                |
    | event_id   | int(11)      | NO   | MUL | NULL    |                |
    | comment    | varchar(255) | NO   |     | NULL    |                |
    | createdAt  | datetime     | NO   |     | NULL    |                |
    | updatedAt  | datetime     | NO   |     | NULL    |                |
    +------------+--------------+------+-----+---------+----------------+
    6 rows in set (0.01 sec)
*/

/* To see data from the table */
SELECT *FROM table_name;
/*  output
    MariaDB [events]> SELECT *FROM likes;
    +---------+---------+----------+-------------+---------------------+---------------------+
    | like_id | user_id | event_id | like_status | createdAt           | updatedAt           |
    +---------+---------+----------+-------------+---------------------+---------------------+
    |       1 |       1 |        2 | liked       | 2019-06-24 20:45:51 | 2019-06-24 20:45:51 |
    |       2 |       1 |        1 | liked       | 2019-06-24 20:46:12 | 2019-06-24 20:46:12 |
    |       3 |       1 |        4 | liked       | 2019-06-24 20:55:59 | 2019-06-24 20:55:59 |
    |       4 |       1 |        3 | liked       | 2019-06-24 21:02:53 | 2019-06-24 21:02:53 |
    |       5 |       2 |       16 | liked       | 2019-06-29 09:16:31 | 2019-06-29 09:16:31 |
    |       6 |       2 |        2 | liked       | 2019-06-29 09:16:39 | 2019-06-29 09:16:39 |
    |       7 |       1 |        9 | liked       | 2019-06-30 11:31:39 | 2019-06-30 11:31:39 |
    +---------+---------+----------+-------------+---------------------+---------------------+
    7 rows in set (0.01 sec)

        MariaDB [events]> SELECT user_id,event_id,like_status FROM likes;
    +---------+----------+-------------+
    | user_id | event_id | like_status |
    +---------+----------+-------------+
    |       1 |        2 | liked       |
    |       1 |        1 | liked       |
    |       1 |        4 | liked       |
    |       1 |        3 | liked       |
    |       2 |       16 | liked       |
    |       2 |        2 | liked       |
    |       1 |        9 | liked       |
    +---------+----------+-------------+
    7 rows in set (0.00 sec)
*/

/* To select particular attributes from the table */
SELECT field1,field2..., FROM table_name;
/*          OUTPUT

    MariaDB [events]> SELECT user_id,event_id FROM comments;
    +---------+----------+
    | user_id | event_id |
    +---------+----------+
    |       3 |       16 |
    +---------+----------+
    1 row in set (0.00 sec)
*/

/* Using Where clause */
SELECT select_list FROM table_name WHERE search_condition;
/*      OUTPUT

    MariaDB [events]> SELECT user_id,like_status FROM likes WHERE event_id = 3;
    +---------+-------------+
    | user_id | like_status |
    +---------+-------------+
    |       1 | liked       |
    +---------+-------------+
    1 row in set (0.00 sec)
*/

/* USERS DETAILS */
MariaDB [events]> select *from users;
/*
-- +---------+----------------+---------------+------------+-------------+----------------+------------------+---------------+---------------+--------------------+---------------------+---------------------+
-- | user_id | user_firstname | user_lastname | user_dob   | user_gender | user_mobile_no | user_email       | user_username | user_password | user_profile_pic   | createdAt           | updatedAt           |
-- +---------+----------------+---------------+------------+-------------+----------------+------------------+---------------+---------------+--------------------+---------------------+---------------------+
-- |       1 | Sonu           | Shahuji       | 2010-11-18 | male        | 9999999999     | sonushahuji4     | sonu          | 1234          | 1561448515801.jpg  | 2019-06-12 14:07:10 | 2019-06-25 07:41:55 |
-- |       2 | Divya          | Rile          | 1991-11-15 | female      | 7777878787     | divyarile        | divya         | 1234          | 1561557057322.jpeg | 2019-06-12 14:25:05 | 2019-06-26 13:50:57 |
-- |       3 | Shamim         | Shaik         | 1989-07-13 | female      | 56789879       | shamimshaik      | shamim        | 1234          | 1561557211311.jpg  | 2019-06-12 14:25:54 | 2019-06-26 13:53:31 |
-- |       4 | David          | Wasawa        | 1998-05-13 | male        | 8989897678     | davidwasawa      | david         | 1234          | david.jpg          | 2019-06-12 14:26:48 | 2019-06-26 11:15:16 |
-- |       9 | Franky         | Martin        | 2017-12-08 | male        | 9999876587     | franky@gmail.com | franky        | 1234          | 1561557351231.jpg  | 2019-06-23 10:24:44 | 2019-06-26 13:55:51 |
-- |      10 | Lloyd          | D'souza       | 1998-06-18 | male        | 7876534565     | lloyd@gmail.com  | lloyd         | 1234          | 1561557388506.jpg  | 2019-06-23 10:26:39 | 2019-06-26 13:56:28 |
-- +---------+----------------+---------------+------------+-------------+----------------+------------------+---------------+---------------+--------------------+---------------------+---------------------+
*/

/*      OUTPUT
    MariaDB [events]> SELECT user_id,user_firstname FROM users WHERE user_lastname ="D'souza";
    +---------+----------------+
    | user_id | user_firstname |
    +---------+----------------+
    |      10 | Lloyd          |
    +---------+----------------+
    1 row in set (0.00 sec)
*/

/* Using AND with WHERE clause */
SELECT field1,field2..., FROM table_name WHERE field = "data" AND field ="data";
/*      OUTPUT
    MariaDB [events]> SELECT user_firstname FROM users WHERE user_id = 3 AND user_gender = "female";
    +----------------+
    | user_firstname |
    +----------------+
    | Shamim         |
    +----------------+
    1 row in set (0.00 sec)
*/

/* Using OR with WHERE clause */
SELECT field1,field2..., FROM table_name WHERE field = "data" OR field ="data";
/*      OUTPUT
    MariaDB [events]> SELECT user_id,user_firstname,user_lastname FROM users WHERE user_id = 3 OR user_gender ="female";
    +---------+----------------+---------------+
    | user_id | user_firstname | user_lastname |
    +---------+----------------+---------------+
    |       2 | Divya          | Rile          |
    |       3 | Shamim         | Shaik         |
    +---------+----------------+---------------+
    2 rows in set (0.00 sec)
*/

/* Using DISTINCT operator */
/* When querying data from a table, you may get duplicate rows. In order to remove these duplicate rows, you use the DISTINCT clause in the SELECT statement.*/
SELECT DISTINCT
    columns
FROM
    table_name
WHERE
    where_conditions;

/*      Query       */
SELECT DISTINCT
    lastname
FROM
    employees
ORDER BY lastname;

/* Using ORDER BY */
SELECT column1, column2,...
FROM users
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC],...

/*      OUTPUT
    MariaDB [events]> SELECT user_firstname,user_lastname FROM users ORDER BY user_firstname;
    +----------------+---------------+
    | user_firstname | user_lastname |
    +----------------+---------------+
    | David          | Wasawa        |
    | Divya          | Rile          |
    | Franky         | Martin        |
    | Lloyd          | D'souza       |
    | Shamim         | Shaik         |
    | Sonu           | Shahuji       |
    +----------------+---------------+
    6 rows in set (0.00 sec)

    MariaDB [events]> SELECT user_firstname,user_lastname FROM users ORDER BY user_lastname;
    +----------------+---------------+
    | user_firstname | user_lastname |
    +----------------+---------------+
    | Lloyd          | D'souza       |
    | Franky         | Martin        |
    | Divya          | Rile          |
    | Sonu           | Shahuji       |
    | Shamim         | Shaik         |
    | David          | Wasawa        |
    +----------------+---------------+
    6 rows in set (0.00 sec)

    MariaDB [events]> SELECT user_id,user_firstname,user_lastname FROM users ORDER BY user_id DESC;
    +---------+----------------+---------------+
    | user_id | user_firstname | user_lastname |
    +---------+----------------+---------------+
    |      10 | Lloyd          | D'souza       |
    |       9 | Franky         | Martin        |
    |       4 | David          | Wasawa        |
    |       3 | Shamim         | Shaik         |
    |       2 | Divya          | Rile          |
    |       1 | Sonu           | Shahuji       |
    +---------+----------------+---------------+
    6 rows in set (0.00 sec)

    MariaDB [events]> SELECT user_id,user_firstname,user_lastname FROM users;
    +---------+----------------+---------------+
    | user_id | user_firstname | user_lastname |
    +---------+----------------+---------------+
    |       1 | Sonu           | Shahuji       |
    |       2 | Divya          | Rile          |
    |       3 | Shamim         | Shaik         |
    |       4 | David          | Wasawa        |
    |       9 | Franky         | Martin        |
    |      10 | Lloyd          | D'souza       |
    +---------+----------------+---------------+
    6 rows in set (0.00 sec)

    MariaDB [events]> SELECT user_id,user_firstname,user_lastname FROM users ORDER BY user_id DESC,user_firstname ASC;
    +---------+----------------+---------------+
    | user_id | user_firstname | user_lastname |
    +---------+----------------+---------------+
    |      10 | Lloyd          | D'souza       |
    |       9 | Franky         | Martin        |
    |       4 | David          | Wasawa        |
    |       3 | Shamim         | Shaik         |
    |       2 | Divya          | Rile          |
    |       1 | Sonu           | Shahuji       |
    +---------+----------------+---------------+
    6 rows in set (0.00 sec)

    MariaDB [events]> SELECT user_id,user_firstname,user_lastname FROM users ORDER BY user_firstname DESC,user_lastname ASC;
    +---------+----------------+---------------+
    | user_id | user_firstname | user_lastname |
    +---------+----------------+---------------+
    |       1 | Sonu           | Shahuji       |
    |       3 | Shamim         | Shaik         |
    |      10 | Lloyd          | D'souza       |
    |       9 | Franky         | Martin        |
    |       2 | Divya          | Rile          |
    |       4 | David          | Wasawa        |
    +---------+----------------+---------------+
    6 rows in set (0.00 sec)

*/
