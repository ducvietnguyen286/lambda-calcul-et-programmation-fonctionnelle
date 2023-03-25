mylast l = 
	case l of {
	[]-> error "list est vide!";
	[x]-> x;
	t:q -> mylast q
	}

myLast2 l
	| null l = error "list est vide!"
	| null (tail l) = head l
	|otherwise = myButLast (tail l)

-----------------------------------------------------------------
myButLast l =
	case l of {
	[] -> error "list est vide";
	[x] -> error " pas assez des element";
	[x,y] -> x;
	t:q -> myButLast q;
	}

-----------------------------------------------------------------
elementAt l i=
	case l of {
		[] -> error "list vide";
		q:t -> if i==1 then q else (elementAt t (i-1));
	}

-------------------------------------------------------------------

myLength l =
	case l of {
		[] -> 0;
		t:q -> 1 + myLength q;
	}

----------------------------------------------------------------------

myReverse l = 
	case l of {
		[]-> [];
		_ -> mylast l : myReverse(init l);
	}

-------------------------------------------------------------------------

isPalindrome l =
	case l of {
		[] -> True;
		[x] -> True;	
		t:q ->  if t == mylast q then isPalindrome(init q) else False;
	}

------------------------------------------------------------
myConcat l n =
	case l of {
		[]->n;
		t:q -> t:myConcat q n;
	}

---------------------------------------------------------------------
compress l =
	case l of {
		[]->[];
		[x]->[x];
		t:m:q -> if t==m then compress(m:q) else t:compress(m:q);
	}

---------------------------------------------------------------------
pack l = 
	case l of {
		[]->[];
		[x]->[[x]];
	--	t:m:q -> let 
	}