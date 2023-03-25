insere e l = 
 case l of {
  []->[e];
  h:t->if (h<e) then h:(insere e t) else (e:l)
}