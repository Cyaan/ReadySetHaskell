{- Case expressions take a variable and then execute blocks of code for specific values of that variable
and then adding a catch-all code block in case if we didn't catch it.
In haskell they are also expressions and we can use also pattern matching with them.
-}

--These two pieces of code can be used interchangeable
head'        :: [a] -> a
head' []    =  error "No head for empty lists!"
head' (x:_) = x

head'' :: [a] -> a
head'' xs = case xs of []    -> error "No head for empty lists!"
                       (x:_) -> x

describelist    :: [a] -> String
describelist xs = "The list is " ++ case xs of []     -> "empty."
                                               [x]    -> "a singleton list."
                                               (x:xs) -> "a longer list."

--The expression is matched against the patterns, but if there not match found it throws out an error.

describelist' :: [a] -> String
describelist' xs = "The list is " ++ what xs
        where
              what []     = "empty."
              what [x]    = "a singleton list."
              what (x:xs) = "a longer list."