{-
We need an edge condition to get the function to return a value. As an example we use the maximum function to
explain recursion. The maximum function return the maximum value of a list.

The maximum function takes a polymorphic list of typeclass Ord and return polymophic type.
We define that the maximum of an empty list doesn't exist, then we say that the maximum of
a singleton list is the value of that list.
We seperate the head of the list of the tail and check if x > then the maximum of the tail.
maxTail is declared as maximum' xs which calls the maximum function again and checks again if the tail
is empty or has one value, then seperates the smaller list in a head and tail and check if that head is larger
then the tail. When all values of the list are checked with the previous index values of the list. It will return
the maximum. The recursion will stop when there is only one value left in the list because of the
Edge condition that we declared and the otherwise that calls maxTail.
-}

-- Type declaration
maximum' :: (Ord a) => [a] -> a

maximum' []     = error "maximum of an empty list"
-- Edge condition
maximum' [x]    = x
-- Recursive function with pattern matching
maximum' (x:xs)
    | x > maxTail = x
    | otherwise   = maxTail
    where
        maxTail = maximum' xs

-- Rewriting the previous funtion with the use of max
maximum'' :: (Ord a) => [a] -> a

maximum'' []    = error "maximum of an empty list"
maximum'' [x]   = x
maximum''(x:xs) = max x (maximum'' xs)