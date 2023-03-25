--exo1--------------------------------
fact n
	|n < 0 = error "NB negatif"
	|n==0 = 1
	|otherwise = fact (n-1) * n 

expon n
	|n < 0 = error "NB negatif"
	|n==0 = 1
	|otherwise = (1/fact n) +expon(n-1)

--exo2---------------------------------

binomiaux1 n p = fact n / (fact p * fact(n-p))

binomiaux2 n p 
	| n<0 || p<0 = error "NB negatif"
	| p == 0 = 1
	|otherwise = binomiaux2 n (p-1) *((n-p+1)/p) 

binomiaux3 n p
	| n<0 || p<0 = error "NB negatif"
	| p == 0 || p==n = 1
	| otherwise = binomiaux3 (n-1) (p-1) + binomiaux3 (n-1) p

--exo3--------------------------------------

pgcd(a,b)
	|b==0 = a
	|b/=0 && a>=b = pgcd(b, a `mod` b)
	|a<b = pgcd(b,a)
	|otherwise = error "pd calcul"

ppcm(a,b) = (a*b)`div`pgcd(a,b)

--exo4 --------------------------------------------

puissance x k
	|k==0 = 1
	|k<0 = puissance x (k+1)/x
	|k>0 = x * puissance x (k-1)

carre x =x*x 

puissanceDicho x k
	|k==0 = 1
	|(k `mod` 2) == 0 = let save = puissanceDicho x (k `div` 2) in save * save
	| otherwise = let save =  puissanceDicho x (k`div` 2) in x * save * save

-- exo 5-----------------------------------------------

proScalaire a b = (fst a * fst b) + (snd a * snd b)

norme u v = sqrt(proScalaire u u)

prodReel u k = (fst u * k, snd u * k)

soustrac u v = (fst u - fst v, snd u - snd v)

prodVertor u v = (0,0,fst u * snd v + snd u * fst v)

-- ex6--------------------------------------------


rectangle x y z = x^2==y^2+z^2 || y^2==x^2+z^2|| z^2== y^2 + x^2

isocele x y z = x==y || y==z || z==x

equilateral x y z = x==y && y==z


