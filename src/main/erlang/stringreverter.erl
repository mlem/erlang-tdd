%%%-------------------------------------------------------------------
%%% @author lemansma
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Jun 2014 17:17
%%%-------------------------------------------------------------------
-module(stringreverter).
-author("lemansma").

%% API
-export([method/1 ,cutdown/2]).



method(Input) when is_list(Input)->
  lists:reverse(Input);

method(Input) ->
  Input.


cutdown([], _) ->
  [];
cutdown(String, [Char]) ->
  cutdown(String, Char);
cutdown([First | Rest], CharAsInt) ->
  if
    First == CharAsInt ->
      [First] ++ Rest;

    true ->
      cutdown(Rest, CharAsInt)
  end.