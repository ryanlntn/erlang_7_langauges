-module(count).
-export([len/1]).
-export([words/1]).
-export([to_ten/1]).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

words(S) ->
    W = re:split(S, "\s+"),
    len(W).

to_ten(N) when N < 10 ->
    io:write(N),
    io:fwrite("\n"),
    to_ten(N + 1);
to_ten(N) when N == 10 ->
    io:write(N),
    io:fwrite("\n").

