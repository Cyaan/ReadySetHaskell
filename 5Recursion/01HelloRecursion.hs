{-
Recursion is actuallty a way if defining functions in which the function applied inside its own definition.
For terminating a recursive function we need an edge condition, this is a definition that is part of the recursive
function.
Recursion is important in Haskell because unlike imperative languages, you do computations in Haskell by
declaring what something is instead of declaring how you get it. That's why there aren't while loops and for loops
in Haskell. 
-}

-- Recursion example

-- Type declaration
fib   :: (Integral a) => a -> a
-- Edge condition
fib 0 = 0
fib 1 = 1
-- Recursive function
fib n = fib (n - 1) + fib (n - 2)