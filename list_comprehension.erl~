-module(list_comprehension).
-export([main/1, lc/0]).


lc() -> 
    List = element(2, io:read("enter list of numbers(5-20 numbers) : ")),
    
    Square = [N*N || N <- List],
    Even = [N || N <- List, (N rem 2) == 0],
    Odd = [N || N <- List, (N rem 2) == 1],
    EvenGT5 = [N || N <- List, ((N rem 2) == 0), N>5],
    OddGT5 = [N || N <- List, ((N rem 2) == 1), N>5],
    
    io:format("\nSquare of the numbers: ~w\nEven numbers: ~w\nOdd numbers: ~w\nEven numbers > 5: ~w\nOdd numbers > 5: ~w\n\n", [Square, Even, Odd, EvenGT5, OddGT5]),
    
    done.

main(_) -> lc().
