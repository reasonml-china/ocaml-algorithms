open Lib
open Alcotest

let test_euclidean () = 
  check (int) "euclidean 1" (Euclidean.euclidean 0 3) 3;
  check (int) "euclidean 2" (Euclidean.euclidean 3 6) 3;
  check (int) "euclidean 3" (Euclidean.euclidean 3 5) 1;
  check (int) "euclidean 4" (Euclidean.euclidean 14 28) 14

let tests = [
  "euclidean algorithm", `Quick, test_euclidean;
]