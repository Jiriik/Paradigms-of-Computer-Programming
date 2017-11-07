declare
fun {FunnyFunc FunL L}
   case L of H|T then {FunL.1 H}|{FunnyFunc FunL.2 T}
   else nil
   end
end

declare
proc {Test FunL L SolL}
   {Browse {FunnyFunc FunL L} == SolL}
end

local fun {Add1 I} I+1 end fun {Add2 I} I+2 end 
in
   {Test [Add1 Add2] [1 2] [2 4]}
end