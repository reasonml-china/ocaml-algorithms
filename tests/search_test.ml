open Lib
open Alcotest

let test_binary_search () = 
  check (option int) "binary_search 1" (Search.binary_search 2 [1;2;3]) (Some 1);
  check (option int) "binary_search 2" (Search.binary_search 5 [1;2;3]) None;
  check (option int) "binary_search 3" (Search.binary_search 1 [1;2;3]) (Some 0);
  check (option int) "binary_search 4" (Search.binary_search "a" ["a";"b";"c"]) (Some 0)

let tests = [
  "binary_search", `Quick, test_binary_search;
]