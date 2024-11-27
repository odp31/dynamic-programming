let knapsack_dp items capacity = 
  let n = Array.length items in
  let dp = Array.make_matrix (n + 1) (capacity + 1) 0 in
  for i = 1 to n do
    for w = 1 to capacity do
      let weight, value = items.(i - 1) in
      if weight <= w then
        dp.(i).(w) <- max(dp.(i-1).(w)) (dp.(i-1).(w-weight) + value)
      else
        dp.(i).(w) <- dp.(i - 1).(w)
    done
  done;
  dp.(n).(capacity)


let rec print_knapsack items dp n capacity = 
  if n = 0 || capacity = 0 then
    ()
  else if dp.(n).(capacity) = dp.(n-1).(capacity) then
    print_knapsack items dp (n - 1) capacity
  else
    let weight, value = items.(n -1) in
    print_endline(string_of_int value ^ " " ^ string_of_int weight);
    print_knapsack items dp (n - 1) (capacity - weight) 


let () =
  let items = [|(10, 60); (20, 100); (30, 120) |] in
  let capacity = 50 in
  let max_value = knapsack_dp items capacity in 
  Printf.printf" "maximum value: %d\n" max_value;
  print_knapsack items(knapsack_dp items capacity) (Array.length items) capacity 
