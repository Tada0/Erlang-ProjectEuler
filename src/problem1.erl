-module(problem1).
-export([solve/0]).

solve() ->
    sum(999, 0).
sum(0, NN) ->
    NN;
sum(N, NN) ->
    if
	((N rem 3) =:= 0) -> sum(N-1, NN+N);
        ((N rem 5) =:= 0) -> sum(N-1, NN+N);
        true -> sum(N-1, NN)
    end.