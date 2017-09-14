-module(factorial).
-export([main/1, start/1]).

get_factorial(0) -> 1;
get_factorial(1) -> 1;
get_factorial(N) when N > 0 -> N * get_factorial(N-1).

start(N) -> get_factorial(N).

% main/1 is the entry function when *erl files(raw code) are run with escript
main(_) -> io:fwrite("factorial of ~p is  ~p\n", [7, start(7)]).
