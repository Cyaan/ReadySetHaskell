{-Lists are a homogenous data structure, 
it's stores serveral elements of the same type-}

--Use let to define in ghci
--The add operator for adding lists to eachother
lostNumbers = [4,8,15,16,23,42]
addlistoperator1 = [1,2,3,4] ++ [9,10,11,12]
addlistoperator2 = "Hello" ++ " World!"
addlistoperator3 = ['w','o'] ++ ['o','t']
--the cons operator for adding numbers or characters to lists
conslistoperator1 = 'A' : " SMALL CAT"
conslistoperator2 = 5 : [1,2,3,4,5]
--Taking an element out of the list by index, the indices start at 0
indexstring =  "Steve Buscemi" !! 6
indexnumbers = [9.4,33.2,96.2,11.2,23.25] !! 1
--list can contain list
b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
c = b ++ [[1,1,1,1]]
d = [6,6,6] : b
e = b !! 2
--Comparing Lists
checklist1 = [3,2,1] > [2,1,0]
checklist2 = [3,2,1] > [2,1,100]
checklist3 = [3,2,4] > [3,4]
checklist4 = [3,4,2] > [2,4]
checklist5 = [3,4,2] == [3,4,2]
--basic functions for lists
basicf1 = head [5,4,3,2,1]
basicf2 = tail [5,4,3,2,1]
basicf3 = last [5,4,3,2,1]
basicf4 = init [5,4,3,2,1]
amount = length [5,4,3,2,1]
empty1 = null [1,2,3]
empty2 = null []
backwards = reverse [5,4,3,2,1]
mine1 = take 3 [5,4,3,2,1]
mine2 = take 1 [3,9,3]
mine3 = take 5 [1,2]
mine4 = take 0 [6,6,6]
yours1 = drop 3 [8,4,2,1,5,6]
yours2 = drop 6 [1,2,3,4]
yours3 = drop 100 [1,2,3,4]
maxi = maximum [8,4,2,1,5,6]
minim = minimum [1,9,2,3,4]
addition = sum [5,2,1,6,3,2,5,7]
multiplication1 = product [6,2,1,2]
multiplication2 = product [1,2,5,6,9,2,0]
checkelem1 = 4 `elem` [3,4,5,6]
checkelem2 = 10 `elem` [3,4,5,6]