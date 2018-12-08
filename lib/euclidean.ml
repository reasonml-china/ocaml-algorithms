let rec euclidean x y =
  if x > y 
  then euclidean y x
  else match x, y with
    | 0, _ -> y
    | _,_ -> euclidean (y mod x) x
