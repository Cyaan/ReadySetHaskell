{- A type variable is type that can be of any type. In Haskell it's much more powerfull
because it allows us to easilty write very general functions if they don't use any specific
behavior of the types in them. Functions with type variables are called polymorphic Functions.
Type variables don't start with a capital case.

The head function has a list that contains a type variable and the returns a type variable.
head :: [a] -> a

The function fst has a pair that contains two type variables and returns the element of the 
same type as the pair's list.
fst :: (a, b) -> a
-}