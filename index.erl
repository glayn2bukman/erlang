-module(index).
-export([main/1]).

index(List, Target, SearchAll, Count, Matches) ->
    
    if
        (length(List)>0) and (hd(List) == Target) ->  
            io:format(">> match found at index ~w(~w for C-like indices)\n", [Count+1, Count]),
            
            if
                SearchAll==true -> index(tl(List), Target, SearchAll, Count+1, Matches+1);
                true -> "end of search! (only searched for first occurance)\n"
            end;

        length(List)==0 -> io:format("\nend of search. total matches=~w, total characters=~w", [Matches, Count]);

        true -> index(tl(List), Target, SearchAll, Count+1, Matches)

    end.


main(_) -> 
    List = io:read("list/string of numbers eg [1,2,3,4]. or \"1234\". : "),
    Target = io:get_chars("target number/xter: ", 1), % when in terminal, dont reminate this input with a dot(.)
    SearchAll = io:read("get all occurances? true/false : "), % true->get all occurances, false->get only irst occrance

    io:format("\n"),

    index(element(2, List), hd(Target), element(2, SearchAll), 0, 0).
