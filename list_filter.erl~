% this module provides an interface that is the re-implementation of lists:all/2, lists:any/2 and lists:partition/2
%
% lists:all/2;
%       F = fun(N) -> (N rem 2)==0.
%       lists:all(F, [1,2,3,4,5,6]). ----> returns false as not all numbers provided are even
%
% lists:any/2;
%       F = fun(N) -> (N rem 2)==0.
%       lists:any(F, [1,2,3,4,5,6]). ----> returns true there is ALTEAST ONE even number in the list provided
%
% lists:partition/2;
%       F = fun(N) -> (N rem 2)==0.
%       lists:partition(F, [1,2,3,4,5,6]). ----> returns {[2,4,6], [1,3,5]} ie a tuple of 2 lists; the list with values that return true when applied to <F>
%                                                                              and a list of the values that return false when applied to <F>
%
% the target of this module is to re-implement these three lists:* functions into one function(without using the :lists: module ofcourse...)
% a sample usage would be eg;
%       filter(List, MapFunction, MapAll, ReturnBool-Or-Values);
%           if 
%               ReturnBool-Or-Values -> implement lists:partition/2;
%               MapAll -> implement lists:all/2;
%               true -> implement lists:any/2 % MapAll is false
%           end.


-module(list_filter).
-export([main/1, filter/0]).


filter() -> 
    done.


main(_) -> filter().
