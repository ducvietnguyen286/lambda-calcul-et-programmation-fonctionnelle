--let ingredients = ["creme","farine","farine","lait","lait","lait","oeuf","oeuf","sucre","sucre"];
poids ing l
    | null l = 0
    | head l == ing = 50 + poids ing (tail l)
    | otherwise =  poids ing (tail l)
	

consomme ing l 
	|null l = [] 
	|null ing == False && head l == head ing = consomme (tail ing) (tail l)
	|otherwise = head l:consomme ing (tail l)

battre ing
	|null ing =[]
	|ing == "oeuf" = "neige"
	|ing == "creme" = "chantilly"
	|otherwise = ing

--fouetter l
--	| null l = []
--	| head l == "oeuf" = "neige": fouetter (tail l)
--	| head l =="creme" = "chantilly": fouetter(tail l)

fouetter l = case l of {
	[] ->[];
	t:q->  battre t:fouetter q;
}

compact :: 
    