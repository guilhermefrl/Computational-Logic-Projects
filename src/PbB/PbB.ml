let()=

	let c = ref 0 in
	let s = ref 1 in	
	let d = ref 0 in
	let e = ref 0 in
	let resposta=ref true in
				
  let n = read_int() in
	let rec func n = 
		 if(n=0) then ()
		 
		 else
    let l = read_line() in
		if l ="(" then d:=!d+1;
    if l=")" then e:=!e+1;
		if (l=")" && !s=1) then resposta:=false;
		if (l="(" && !s=0) then resposta:=false;
		if !e > !d then resposta:=false;
    if ((l="&"||l="|"||l="->"||l="<->")&&(!c>0 || !s=1)) then resposta:=false;
	  if (l="&"|| l="|"|| l="->" || l="<->") then s:=1;
		if l="!" then c:=!c+1;
    if (l<>"->" && l<>"<->" && l<>"(" && l<>"&" && l<>"|" && l<>"!" && l<>")" && !s=0) then resposta:=false;
	  if (l<>"->" && l<>"<->" && l<>"(" && l<>"&" && l<>"|" && l<>"!" && l<>")") then s:=0;
    if (l<>"->" && l<>"<->" && l<>"(" && l<>"&" && l<>"|" && l<>"!" && l<>")" && !c>0) then c:=0;
		            (func (n-1)) in
							
	let()=(func n) in
	 if !d <> !e then resposta:=false;
	 if !s=1 then resposta:=false;
	 if !c>0 then resposta:=false;
	
	let fim = if !resposta  then "YES" else "NO"  in
	Printf.printf "%s\n" fim