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

--Ord is for types that have ordering

--Show can be presented for strings

--Read is sort of the opposite typeclass if Show
	
--Enum members are sequentialty ordered types i.o.w. they can be enumerated.

--Bounded members have an upper and lower bound.

--Num is a numeric typeclass. The members are being to act like numbers.
--Whole numbers are polymorphic constants. They can act like any member of Num.

{-
Integral is also a numeric typeclass. Num includes al numbers, including real
numbers and integral numbers. In this typeclass are Int and Integer.
-}

--Floating include only floating point numbers, so Float and Double

{- A very useful function for dealing with numbers is fromIntegral. It has a
type declaration fromIntegral :: (Num b, Integral a) => a -> b. So it takes a
integral number and returns a more general number. It changes it's typeclass to Num.
