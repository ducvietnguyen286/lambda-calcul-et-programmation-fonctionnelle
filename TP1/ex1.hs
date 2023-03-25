exe1 x 
	|x<0 = error "prix negatif" 
	|x<=2 = x  
	|otherwise = x-2

exe2 x y
	|(x < 0 || y < 0)= error "NB negatif"
	|otherwise = x*10 + y*5

exe3 x y
	|(x<0||y<0||y>100)= error "mauvais entree"
	|otherwise=x*(y/100)


exe4 x y
	|(x`mod`y) ==0 = True 
	|otherwise = False
----ex 5--------------------------------------------------------------
carre x = x*x

distance a b = sqrt(carre (fst b - fst a) + carre(snd b - snd a)) 

moitie a = a/2

aire a b = carre(moitie(distance a b)) * pi

volume a b c = (aire a b)*c/3

----ex6---------------------------------------------------------------
fact n = if(n==0) then 1 else (n*fact(n-1))


fact2 n
	|n==0 = 1
	|otherwise=(n*fact2 (n-1))

fibo n = if(n==1 || n==2) then 1 else (fibo (n-1) + fibo (n-2))