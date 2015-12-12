{-Haskell has a static type system, this means that the type of every expression is
know at compile time. Everything in Haskell has a type.

Haskell also has type inference. Haskell can infer the types of our functions abd
expressions on it's own.

A type is a label that every expression has. It tells us in which category of things
that expression fits.

By using the :t in ghci we can examine the types of expressions

Char is of type character
[Char] is of type string
Num is of type number
Bool is of type boolean
(True, 'a') is pair of a boolean and a character
('a','b','c') is triple of three characters

Functions also have types, so we can choose to give them an explict type declaration.
Here an example of type declaration at work:
-}

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Common types

--Int stands for integer, Int is bound to a minimum and a maximum value.

--Integer stands for integer, but this one it's not bounded.

factorial :: Integer -> Integer
factorial n = product [1..n]

--Float is a real floating point with single precision

circumference :: Float -> Float
circumference r = 2 * pi * r

--Double is real floating point with double the preicion

circumference' :: Double -> Double
circumference' r = 2 * pi * r

--Bool is a boolean type. It contains two value: True or False

--Char represents a characters. It's denoted by single quotes. A list of characters is a string

--Tuples are types but they are dependent on their length as wel as the types of their components

--An empty Tuple () is also a type which can only have a single value: ()