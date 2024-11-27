let rec edit_distance s1 s2 =
  let m = String.length s1 in
  let n = String.length s2 in
  let rec aux i j =
    if i = m || j = n then
      max i j
    else if s1.[i] = s2.[j] then
      aux (i + 1) (j + 1)
    else
      1 + min(aux (i + 1) j) (aux i (j + 1)) (aux(i +1) (j + 1))
  in
  aux 0 0
  ;;
