-module(hash).
-export([get/2]).

get(List, Key) ->
    {Key, Value} = lists:keyfind(Key, 1, List),
    Value.
