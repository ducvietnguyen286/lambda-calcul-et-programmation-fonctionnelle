reduce op a l =
	case l of{
	[]->a;
	t:q-> op t (reduce op a q);
}

map2 f l1 l2 = 
	case (l1, l2) of {
	([],_)->[];
	(_,[])->[];
	(h1:t1, h2:t2) -> f h1 h2 : map2(f t1 t2);
}