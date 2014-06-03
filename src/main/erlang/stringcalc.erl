-module(stringcalc).
-author("Martin").

-export([add/1]).

add([]) ->
  0;
add([Last]) ->
  getResult(string:to_integer([Last]));
add(All) ->
  Tokens = string:tokens(All, ","),
  addTokens(Tokens).


addTokens([Last]) ->
  getResult(string:to_integer([Last]));
addTokens([First | Rest]) ->
  FirstResult = getResult(string:to_integer([First])),
  addInts(FirstResult, addTokens(Rest)).

addInts(Number1, Number2) ->
  Number1 + Number2.

getResult({Result, _}) ->
  Result.