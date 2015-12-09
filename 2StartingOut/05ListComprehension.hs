--List Comprehension
{-
A list comprehension can be split into three parts
-the output function
-the input set
-the predicate
-}
--A list comprehension in action
listcomp1 xs = [x*2 | x <- xs]
--the predicate is seperated with a comma from the input set
listcomp2 xs = [x*2 | x <- xs, x*2 >= 12]
listcomp3 xs = [x | x <- xs, x `mod` 7 == 3]
--Note that weeding out our list is also called filtering
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG" | x <- xs, odd x]
--We can include several predicates
not131519 xs = [ x | x <- xs, x /= 13, x /= 15, x /= 19]
--multiple input sets
multilist1 xs ys = [ x*y | x <- xs, y <- ys]
multilist2 xs ys = [ x*y | x <- xs, y <- ys, x*y > 50]
--list comprehension with strings
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
stringcomp = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
{-
The underscore do we use when we don't want a specific value, 
so in this example every value of that list will be replaced with a 1 and then we calculate the sum of that list
-}
length' xs = sum [1 | _ <- xs]
--Because strings are lists, we can do this
removeUppercase st = [ c | c <-st, c `elem` ['A'..'Z']]
--remove all odds without flattening the lists
xxs = [[1,3,5,2,3,1,2,4,5],
    [1,2,3,4,5,6,7,8,9],
    [1,2,4,2,1,6,3,1,3,2,3,6]]
removeodds = [ [ x | x <- xs, even x ] | xs <- xxs]
