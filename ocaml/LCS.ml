let lcs str1 str2 =
  let m = String.length str1 in
  let n = String.length str2 in 
  let dp = Array.make_matrix (m + 1) (n + 1) 0 in

  for i = 1 to m do
    for j = 1 to n do
      if String.get str1 (i - 1) = String.get str2 (j - 1) then
        dp.(i).(j) <- dp.(i - 1).(j-1) + 1
      else
        dp.(i).(j) <- max dp.(i-1).(j) dp.(i).(j-1)
    done
  done
  dp.(m).(n)

let () = 
  let str1 = "AGGTAB" in 
  let str2 = "GXTXAYB" in
  let lcs_length = lcs str1 str2 in
  Printf.printf "Length of LCS is %d\n" lcs_length 
