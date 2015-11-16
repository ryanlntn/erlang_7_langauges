-module(status).
-export([print/1]).

print({error, Message}) ->
    io:fwrite("error: ~p\n", [Message]);
print(success) ->
    io:fwrite("success\n").
