{-
Let bindings are similiar to the where bindings but whereas you can only use where at the end
of a function, the let bindings can be used anywhere in the function and are expression themself.
Let bindings are very local so we can't you them with guards.
-}

--Example function that gives us a cylinder's surface area based on its height and radius
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in  sideArea + 2 * topArea

--Let <bindings> in <expression>, so everything you define in let can only be used for the in part.

--The difference between where and let is that let bindings are expression themselves and where bindings are just contructs

--We can use if else statements almost everywhere and it's also an expression
woobar = [if 5 > 3 then "Woo" else "Boo", if 'a' > 'b' then "Foo" else "bar"]

--We could also do that with let bindings
letin = 4 * (let a = 9 in a + 1) + 2

--They can also be used to introduce functions in a local scope
letsquare = [let square x = x * x in (square 5, square 3, square 2)]

--Defining variables inline with semicolons
defineinline = (let a = 100; b = 200; c = 300 in a*b*c, let foo = "Hey "; bar = "there!" in foo ++ bar)

--Pattern matching with let bindings
letpattern = (let (a,b,c) = (1,2,3) in a+b+c) * 100

--Let bindings in list comprehension
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

--Let bindings are visible for the output function and the all the predicates that after it
calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]

--We can't use the function we defined with let in the input function of the list comprehension
--We could also use let bindings for lony to use in the predicate of the list comprehension.
--When defining inside GHCi we can use those functions and definitions for the whole GHCi session.