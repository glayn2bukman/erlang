-module(hello).
-export([start/0]).

start() -> 
    io:fwrite("hello, erlang\n").
