-module(problem2).
-export([solve/0]).

solve() ->
    fibonachi(1, 2, 0, 4000000).

fibonachi(_P1, P2, Sum, Max) when P2 >= Max ->
    Sum;

fibonachi(P1, P2, Sum, Max) ->
    P3 = P1 + P2,
    New_sum = sum(P2, Sum),
    fibonachi(P2, P3, New_sum, Max).

sum(N, Sum) ->
    if
        (N rem 2 =/= 0) -> Sum;
        true -> N + Sum
    end.