let rec bubble_sort l = 
  let rec swap = function
    | [] | _::[] as l' -> l'
    | x::y::tl -> if x > y then y::swap (x::tl) else x::swap (y::tl) in
  let l' = swap l in 
  if l' <> l then bubble_sort l' else l

let rec selection_sort l = 
  let rec select x = function
    | [] -> x, []
    | hd::tl ->
      let cur_min, rest = select (min x hd) tl in
      cur_min, (max x hd)::rest
  in match l with
  | [] -> []
  | hd::tl -> 
    let cur_min, rest = select hd tl in
    cur_min::(selection_sort rest)

let rec insertion_sort l = 
  let rec insert x = function 
    | [] -> [x]
    | hd::tl -> if x <= hd then x::hd::tl else hd::insert x tl in
  match l with 
  | [] -> []
  | hd::tl -> let sorted = insertion_sort tl in
    insert hd sorted


let rec quick_sort = function
  | [] -> []
  | hd::tl -> 
    let left, right = List.partition ((>) hd) tl in
    (quick_sort left) @ hd::(quick_sort right)

let rec merge_sort l = 
  let rec halve = function
    | [] -> [], []
    | hd::tl -> 
      let left, right = halve tl in
      hd::right, left in
  let rec merge left right = match left, right with
    | [], _ -> right
    | _, [] -> left
    | x::rest_left, y::rest_right -> 
      if x < y then x::merge rest_left right
      else y::merge left rest_right in
  match l with 
  | [] | _::[] as l' -> l'
  | _ -> let left, right = halve l in
    merge (merge_sort left) (merge_sort right)