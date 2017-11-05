declare
fun {Fact N}
   fun {FactList N L}        
      if N == 0 then L
      else {FactList N-1 {Factorial N 1}|L}
      end
   end
   fun {Factorial N Acc}
      if (N == 1) then Acc
	 else {Factorial N-1 Acc*N}
	 end 
   end
in
   {FactList N nil}
end

{Browse {Fact 5}}
