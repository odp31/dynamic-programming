/ recursive implementation;

let rec fib n = 
  match n with
  | 0 | 1 -> 1
  | n -> fib(n - 1) + fib(n -2)
;;

// iterative approach
let fib_iter n = 
  let rec aux a b i =
    if i = 0 then a
    else aux b (a + b) (i - 1)
  in
  aux 0 1 n
;;


// example usage
let () =
  let n = 10 in
  let result_recursive = fib n in 
  let result_iterative = fib_iter in n
  Printf.prinf "recursive: %d\nIterative; %d\n" result_recursive result_iterative
;;
