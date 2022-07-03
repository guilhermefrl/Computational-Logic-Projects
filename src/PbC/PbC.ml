let s = ref 0 ;;
let formula = ref true;;
 
 
let string_to_list s = 
	let l = ref [] in
	for i = 0 to String.length s - 1 do
    l := (!l) @ [Char.escaped s.[i]]
	done;
!l;;
 
  let n = read_int() in
 
     let rec func n=			
	if(n=0) 
		then ()
 
		 else
 
		 let x=read_line() in
 
		let t=(string_to_list x) in
			 s:=0;
 
			 for i=0 to ((List.length t)-1) do
 
				 if((List.nth t i)="1")
					then s:=1;
				 if((List.nth t i)="0")
					then s:=0;
			 if((List.nth t i)="~")
			  then
 
				for j=0 to ((List.length t)-1) do
 
				 	let t1=(List.nth t (j)) in
				 	let t2=(List.nth t (i)) in
 
				 	if(t1=t2)
					then s:=1;
				 done;
			done;
 
            if(!s<>1)
            	then 
            	formula := false;
 
            	func (n-1)
		            in
 
    let ()=(func n) in
 
    let fim = if !formula then "VALIDA" else "NAO E VALIDA" in
     Printf.printf "%s\n" fim