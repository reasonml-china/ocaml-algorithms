open Tests

let test_suites: unit Alcotest.test list = [
  "search", Search_test.tests;
  "sort", Sort_test.tests;
  "euclidean", Euclidean_test.tests
]

let () = Alcotest.run "" test_suites