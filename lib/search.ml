let binary_search x l = 
  let rec aux low high = 
    match low > high with
    | true -> None
    | false -> let mid = (low + high) / 2 in
      let mid_value = List.nth l mid in
      match mid_value with
      | _ when x = mid_value -> Some mid
      | _ when x < mid_value -> aux low (mid - 1)
      | _  -> aux (mid + 1) high
  in 
  aux 0 (List.length l - 1)


