--Function that takes a parameter
doubleMe x = x + x
--Funtcion with Functions
doubleUs x y = doubleMe x + doubleMe y
--if, then, else are expressions
doubleSmallNumber x = if x > 100 then x else x * 2
--Functions can not start with an uppercase letter but can use ' in our funcion names
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
--Functions without parameters are defined as defintions
it'sMario = "It's a-me, Mario"