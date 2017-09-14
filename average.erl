-module(average).
-export([average/0]).

% average/3 %
average([], Sum, Count) -> 
    io:format("sum = ~w, Count = ~w\n", [Sum, Count]),
    Sum/Count;

average(Numbers, Sum, Count) -> 
    NewSum = Sum + hd(Numbers),
    NewCount = Count+1,
    average(tl(Numbers), NewSum, NewCount). % this line ends with a "." because the next function tho also kold average, has a diff arity (ie)
                                            % its average/1 NOT average/3
% average/1 %
average({ok, Data}) -> average(Data, 0, 0);

average({error, _}) -> "you entered shitty data!!!!!". % terminate with "." as next function is average/0 and NOT average/1

% average/0 %
average() -> 
    Numbers = io:read("list of numbers eg [1,5,7,8,9] : "),
    average(Numbers).
    
