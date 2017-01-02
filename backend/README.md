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
