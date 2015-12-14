{-
A typeclass is a sort of an interface that defines some behavior.
If a type is part of a typeclass, that means that it support and
implements the behavior the typeclass describes.
-}

--When we want the type of an infix function then we need to use parentheses

--(==) :: (Eq a) => a -> a -> Bool

{- => this symbol is called a class constraint, so we can read the previous
function as the equality function any two values that are of the same type
and returns a Bool. Eq is a typeclass and is used for testing equality.
So everything exept IO and functions are part of this typeclass.
-}

--Some basic typeclasses

--Eq is used for types that support equality testing. 
equality1 = 5 == 5
equality2 = 5 /= 5
equality3 = 'a' == 'a'
equality4 = "Ho HO" == "Ho Ho"
equality5 = 3.432 == 3.432

--Ord is for types that have ordering
ordering1 = "Abrakadabra" < "Zebra"
ordering2 = "Abrakadabra" `compare` "Zebra"
ordering3 = 5 >= 2
ordering4 = 5 `compare` 3

--Show can be presented for strings
showing1 = show 3
showing2 = show 5.334
showing3 = show True
--Read is sort of the opposite typeclass if Show
reading1 = read "True" || False
reading2 = read "8.2" + 3.8
reading3 = read "5" - 2
reading4 = read "[1,2,3,4]" ++ [3]

--type annotations
typeanno1 = read "5" :: Int
typeanno2 = read "5" :: Float
typeanno3 = (read "5" :: Float) * 4
typeanno4 = read "[1,2,3,4]" :: Int
typeanno5 = read "(3, 'a')" :: (Int, Char)

--Enum members are sequentialty ordered types i.o.w. they can be enumerated.
enumeration1 = ['a' .. 'e']
enumeration2 = [LT .. GT]
enumeration3 = [3 .. 5]
enumeration4 = succ 'B'

--Bounded members have an upper and lower bound.
boundings1 = minBound :: Int
boundings2 = maxBound :: Char
boundings3 = maxBound :: Bool
boundings4 = minBound :: Bool

--Num is a numeric typeclass. The members are being to act like numbers.
--Whole numbers are polymorphic constants. They can act like any member of Num.
numeric1 = 20 :: Int
numeric2 = 20 :: Integer
numeric3 = 20 :: Float
numeric4 = 20 :: Double
{-
Integral is also a numeric typeclass. Num includes al numbers, including real
numbers and integral numbers. In this typeclass are Int and Integer.
-}

--Floating include only floating point numbers, so Float and Double

{- A very useful function for dealing with numbers is fromIntegral. It has a
type declaration fromIntegral :: (Num b, Integral a) => a -> b. So it takes a
integral number and returns a more general number. It changes it's typeclass to Num.
Adding the lenght of a list of integer with a floating point number
-}
integraltonum1 = fromIntegral (length [1,2,3,4]) + 3.2 :: Float
integraltonum2 = fromIntegral (length [1,2,3,4]) + 3.2 :: Double