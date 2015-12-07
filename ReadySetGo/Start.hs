--Simple arithmetic
addition = 2 + 15
multiplication = 49 * 100
substraction = 18 - 1472
division = 5 / 2
--More operators can be used on one line and all precedence rules are obeyed
example1 = (50 * 100) - 4999
example2 = 50 * 100 - 4999
example3 = 50 * (100 - 4999)
--When negating numbers, use parentheses
--negativeMultiplyF = 5 * -3
negativemultiplyT = 5 * (-3)

--Boolean algebra
-- & twice means and
booland1 = True && False
booland2 = True && True
-- | twice means or
boolor = False || True
-- Not negates True and False
boolnot = not False
-- You can also use more boolean operators
boolandnot = not (True && False)
--equality
equalT = 5 == 5
equalF = 1 == 0
notequalT = 5 /= 4
notequalF = 5 /= 5
stringequal = "Hello" == "Hello"

{-We can't do 5 + "llama" because there are not of the same type
but we can 5 + 4.0 then the integer will adapt to a flaoting-point number-}
{-All of the previous exaples we have been using functions,  For instance,
is a function that takes two numbers and multiplies them. We call those functions
infix functions, but most functions in Haskell use the prefix notation-}

--This functions take anything that has a defined successor and returns that successor
successor = succ 8
{-The min and max function take two parameters and return for min the that's lesser and
max returns the one that's greater-}
lesserint = min 9 10
lesserfloat = min 3.4 3.2
greater = max 100 101
--the two statements are equivelent
combisuccmax1 = succ 9 + max 5 4 + 1
combisuccmax2 = (succ 9) + (max 5 4) + 1
--we need to use parentheses for getting the successor or otherwise we would get only the one from 9
successor2 = succ (9 * 10)
--using a function with the infix notation
infixnota = 92 `div` 10
{-We use spaces for function applications inside Haskell: function x Y instead of function(x, y).
so bar (bar 3) is bar is function that takes another bar function that takes 3 as a parameter-}