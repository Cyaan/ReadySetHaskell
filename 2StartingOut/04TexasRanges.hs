--Ranges are list with arithmetic sequences of elements that can be enumerated
--This can be used for numbers and characters

--Examples of ranges
onetotwenty = [1..20]
atoz = ['a'..'z']
ktoz = ['K'..'Z']

--Ranges with specific steps
stepsbytwo = [2,4..20]
stepsbythree = [3,6..20]

--You can only specify by one step and steps are arithmetic
--When we want a list that counts down, we always need to specify a step
countdown = [20,19..1]

--Watch out when using floating point numbers in ranges, they are not completely precise
--Use space between the .. because the compiler reads it as a floating point
floatranges = [0.1,0.3 .. 1]
--So because they are not that precise, it's better not to use them

--We can also make infinite lists by not specifying the upper limit
infinitelist = take 24 [13,26..]
{-Because Haskell is a lazy programming language, it won't try to evaluate the infinite list immediately
but only take the first 24 elements out the list-}

--Functions that can produce infinite lists

--cycle
funcinfinite1 = take 10 (cycle [1,2,3])
funcinfinite2 = take 10 (cycle "LOL ")

--repeat
funcinfinite3 = take 10 (repeat 5)
--But we could use the function "replicate" instead
funcinfinite4 = replicate 3 1