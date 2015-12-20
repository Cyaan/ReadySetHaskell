{-
Guards are used as a way of testing whether some property if severak values if them are true or false
Guards make your code more readable instead of using if-statements.
-}
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "Your're supposedly normal. Pffft, Iber you'te ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

{-
So if we entered 19 the first guard would be false and the second would turn true because the number
is between 18.5 and 19, the second string would then be returned.
Guards are indicated by pipes that follow a function's name and its parameter. They need to be indented
or else we would get a parser error.
Otherwise is always true and catches everything.
-}

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal, Pffft, I bet you're ugly!"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                   = "You're a whale, congratulations!"

--Don't place an equal sign after the function when using guards

--Guards can also be written inline
max' :: (Ord a) => a -> a -> a
max' a b | a > b = a | otherwise = b

--compare funtion using guards
mycompare :: (Ord a) => a -> a -> Ordering
a `mycompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT
--We can also define functions as infix with backticks