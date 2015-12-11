{-Tuples are a way to store several values into a single value,
tuples are used when you know the amount of values that you want to store and
for when you need to store different types
A tuple of size two is its own type, which means we can have a triple and pair
in a list, because they are of a different type.-}
--Function that operate for pairs
pairfst1 = fst (8,11)
pairfst2 = fst ("Wow", False)

pairsnd1 = snd (8,11)
pairsnd2 = snd ("Wow", False)

--zip is a function that take two lists and produces a list of pairsnd2
zipper1 = zip [1,2,3,4,5] [5,5,5,5,5]
--zip can take two lists that contain different types and zip them up
zipper2 = zip [1..5] ["one","two","three","four","five"]
--Haskell cuts the longer list off to match the lenght of the shorter one
zipper3 = zip [5,3,2,6,7,2,5,4,6,6] ["I'm","a","turtle"]
--It also works on infinite lists
zipper4 = zip [1..] ["Apple","Orange","Cherry","Mango"]

--Tuples and list comprehension
triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
righttriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2 ]
righttriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24 ]
