-module(untitled).
-export([answer/1]).

-define(is_divisor(V, D), (V rem D == 0)).
-define(has_primes(V), (is_number(V) andalso V > 1)).

answer(1) ->
  [];
answer(Input) when ?has_primes(Input) ->
  answer(Input, 2).

answer(Input, Div) when ?is_divisor(Input, Div) ->
  lists:append([Div], answer(trunc(Input / Div)));
answer(Input, Div) ->
  case Div > math:sqrt(Input) of
    false -> answer(Input, Div + 1);
    true -> answer(Input, Input)
  end.