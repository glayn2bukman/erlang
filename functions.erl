-module(functions).
-export([main/1, run/0]).

complete_tag(GetTagFunction) ->
    Tag = element(2, GetTagFunction()),
     
    if
        (Tag=="input") or (Tag==input) or (Tag=="meta") or (Tag==meta) or (Tag=="img") or (Tag==img)  ->
            io:format("<~w ... />\n", [Tag]);

        true -> 
            io:format("<~w>...</~w>\n", [Tag, Tag])
    end.

get_tag() -> io:read("tag as string/atom : "). 

main(_) -> run().

run() ->
    complete_tag(fun get_tag/0).
        % <fun get_tag/0> is passed as the GetTagFunction of <complete_tag> because in erlang, if a function is gonna be passed
        % as an argument to another function, it must have either been created with "fun" ;
        %      MyFunction = fun(*) -> *.
        %      otherFunction(MyFunction).
        %
        % or its modified with "fun" before its passed as an argument to another function;
        %      function(*) -> *.
        %      otherFunction(fun function/function_ARITY).   
