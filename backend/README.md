# Anagrams

An anagram is a type of word play, the result of rearranging the letters of a word or
phrase to produce a new word or phrase, using all the original letters exactly once; for
example, orchestra can be rearranged into carthorse.
Implement a function def anagrams(word, possible_anagrams) that receives 2 parameters: a
string( word ) and an array of strings( possible_anagrams ); and returns an array with all the anagrams
for that word.

For example: Given 'horse' and ['heros', 'horse', 'shore', 'standard'] as arguments, the
output should be: ['heros', 'horse', 'shore']

# Frog Jump

A small frog wants to get to the other side of the road. The frog is currently located at
position X and wants to get to a position greater than or equal to Y . The small frog
always jumps a fixed distance, D .
Count the minimal number of jumps that the small frog must perform to reach its
target.

Write a function def frog_jump(x, y, d) that, given three integers X , Y and D , returns the minimal
number of jumps from position X to a position equal to or greater than Y .
For example: Given: X = 10 , Y = 85 and D = 30 , the function should return 3, because the frog will
be positioned as follows:
● After the first jump, at position 40 (10 + 30)
● After the second jump, at position 70 (10 + 30 + 30)●
● After the third jump, at position 100 (10 + 30 + 30 + 30)

Assume that: X , Y and D are integers within the range (1..1,000,000,000) and X ≤ Y .

# Department Salaries

You are given two tables, department and employee , with the following structure:

create table department (
dept_id integer not null,
dept_name varchar(30) not null,
dept_location varchar(30) not null,
unique(dept_id)
);

create table employee (
emp_id integer not null,
emp_name varchar(50) not null,
dept_id integer not null,
salary integer not null,
unique(emp_id)
);

Each record in the table department represents a department which might hire some employees.
Each record in the table employee represents an employee who works for one of the departments
from the table department.
Write an SQL query that returns a table comprising all the departments ( dept_id ) in the table
department that hire at least one employee, the number of people they employ and the sum of
salaries in each department. The table should be ordered by dept_id (in increasing order).
