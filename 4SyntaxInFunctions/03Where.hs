{-
Don't repeat yourself, so why don't bind the expression of the previous bmiTell
example to name. We can use the name then instead if repeating the expression.
-}

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell height weight
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 90.0 = "You're fat! Lose someweight, fatty!"
    | otherwise   = "You're whale, congratulations!"
    where bmi = weight / height ^ 2

{-
We put the keyword where after the guards, these names are visible across
the guards and helps us to not repeat ourselves. It also helps us to improve
our performance because we only have to calculate our bmi once.
-}

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' height weight
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat    = "You're fat! Lose someweight, fatty!"
    | otherwise     = "You're whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat    = 30.0

{-
Our names we define in that function are only visible to that function, so we don't have to worry about them
polluting the namespace of other functions. We also need to align names properly, our else we would get a
compiler error.
-}

--We could also use pattern matching for defining the names in a function
bmiTell'' :: (RealFloat a) => a -> a -> String
bmiTell'' height weight
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat = "You're fat! Lose someweight, fatty!"
    | otherwise   = "You're whale, congratulations!"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

--We can also define function after where
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

--Where can also be nested, we can define a function with a helper function that also has it's own helper function.