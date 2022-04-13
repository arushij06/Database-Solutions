/*
Delete Duplicate Emails - https://leetcode.com/problems/delete-duplicate-emails/

Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.

 

Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Note that you are supposed to write a DELETE statement and not a SELECT one.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output: 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
Explanation: john@example.com is repeated two times. We keep the row with the smallest Id = 1.

*/

-- select * from person p1, person p2
-- group by email

delete from Person 
where id not in 
(
	select min(id) from person 
    group by email
);

/*Alternate solution*/
-- Delete p2 
--     FROM Person p1 JOIN Person p2
--     On p1.email = p2.email
--     AND p1.Id < p2.Id;

select * 
    FROM Person;
    
