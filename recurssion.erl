-module(recurssion).
-export([main/1, start/1]).

recurse(N) ->
    
    if 
        N>0 -> io:format("N = ~w\n", [N]);  
        true -> zero % dont terminate this(.) and dont "or" it(;) as its the last statement b4 end
    end,
    
    if
        N==0 -> "end of loop!";

        % in erlang "if - end" conditions, "true -> ***" acts as the "else" in languages like python
        true -> recurse(N-1)
    end.


start(N) -> recurse(N).

main(_) -> recurse(5).
    
