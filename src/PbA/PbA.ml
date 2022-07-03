open Printf
open Scanf

let rec solve a b steps n k =
  if steps = 0 then 1

  else

    if k > 7 then 0

    else
      let dx = [|-2; -1; 1; 2; -2; -1; 1; 2|] in
      let dy = [|-1; -2; -2; -1; 1; 2; 2; 1|] in
     
      if ((dx.(k) + a) >= 0 && (dx.(k) + a) <= n - 1 && (dy.(k) + b) >= 0 && (dy.(k) + b) <= n - 1)
      then  
        (solve (dx.(k) + a) (dy.(k) + b) (steps - 1) (n) (0) ) + (solve (a) (b) (steps) (n) (k+1) )
      else
      (solve (a) (b) (steps) (n) (k+1) )

let (n,steps,a,b) = scanf "%d %d %d %d" (fun n steps a b -> (n,steps,a,b));;

let () = 
  if (n<1 || n>50 || steps<1 || steps>8 || a>=n || b>=n || a<0 || b<0) then
    printf "Valores incorretos, por favor tente de novo."
  else
    printf "%d" (solve a b steps n 0)