{-
Pattern matching consist of specifying patterns to which some data should conform
and then checking to see if it does and deconstructing the data according to those patterns.
When defining funtions, you can define seperate function bodies for different patterns.
You can pattern match on any data type -numbers, characters, lists, tuples, etc.
-}

--A function that checks if the number that we supplied to it is seven or not
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky x = "Sorry, you're out of luck, pal!"

{-
When you call the lucky function, the patterns will be checked from top to bottom
and when it conforms to a pattern, the corresponding function body will be used.
The last function needs to take every possible value or else we get an error for
the values that we don't define.
-}

--A Function that checks if the entered number is between 1 and 5
sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

--The factorial function defined recursively
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

--Function for adding two vectors together (without pattern matching)
addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors a b = (fst a + fst b, snd a + snd b)

--Function for adding two vectors together (without pattern matching)
addVectors' :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

--fst, snd and third functions for triples
first :: (a ,b ,c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

--The _ stands for every value that we didn't specify

--Using pattern matching on list comprehension
xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]  
addpair = [ a + b | (a,b) <- xs]

--pattern matching lists
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

last' :: [a] -> a
last' [] = error "No data found"
last' [x] = x
last' (_:xs) = last' xs

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- as patterns 
capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

--You can't use ++ in pattern matches