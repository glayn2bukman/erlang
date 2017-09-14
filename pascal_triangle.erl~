-module(pascal_triangle).
-export([main/1, draw/0]).

print_row(Row) ->
    if
        length(Row)==0 -> io:format("\n");
        true -> 
            io:format("  ~w", [hd(Row)]),
            print_row(tl(Row))
    end. 

construct_row(List, Target) ->
    H = hd(List),
    T = tl(List),
    
    if
        T == [] ->  [1] ++ Target ++ [1];
        true -> 
            NewTarget = Target ++ [H+hd(T)],
            construct_row(T, NewTarget)
    end. 

next_row(Row, CurrentRow, Stop) ->
     print_row(Row),
     
     if
        CurrentRow==Stop -> 
            NewRow = [],
            done;
        Row == [1] -> 
            NewRow = [],
            next_row([1,1], CurrentRow+1, Stop);
        true -> 
            NewRow = construct_row(Row, []),
            next_row(NewRow, CurrentRow+1, Stop)
             
     end.

draw(0, _) -> "invalid rows given!\n";

draw(Rows, ActiveRow) ->
    next_row([1], ActiveRow, Rows). % terminate this clause coz the next <draw> is draw/0 AND NOT draw/2

draw() ->
    RowsAsChars = io:get_chars("number of rows (99 maximum, 1-10 is reasonable however) : ", 2),
    
    if
        length(RowsAsChars)==0 -> Rows = 0;
        (hd(RowsAsChars)==$-) or (hd(RowsAsChars)) -> Rows = 0;
        tl(RowsAsChars) ==[$\n] -> Rows = hd(RowsAsChars) rem $0; % this logic took me a while but i got there
        true -> Rows = list_to_integer(RowsAsChars)
    end,

    draw(Rows, 1).

main(_) -> draw().
