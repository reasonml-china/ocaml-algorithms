open Lib.Sort
open Alcotest

let test_sort message sort () = 
  check (list int) (message ^ "4") (sort [4;3;2;1]) [1;2;3;4];
  check (list int) (message ^ "1") (sort [9;8;7;6;5]) [5;6;7;8;9];
  check (list int) (message ^ "2") (sort [-1;8;7;6;5]) [-1;5;6;7;8];
  check (list int) (message ^ "3") (sort [9;8;0;-2;5]) [-2;0;5;8;9]

let tests = [
  "bubble_sort", `Quick, test_sort "bubble_sort" bubble_sort;
  "selection_sort", `Quick, test_sort "selection_sort" selection_sort;
  "insertion_sort", `Quick, test_sort "insertion_sort" insertion_sort;
  "quick_sort", `Quick, test_sort "quick_sort" quick_sort;
  "merge_sort", `Quick, test_sort "merge_sort" merge_sort
]