%%%-------------------------------------------------------------------
%%% @author lemansma
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Jun 2014 13:28
%%%-------------------------------------------------------------------
-module(exchanger).
-author("lemansma").

%% API
-export([exchange/1]).

exchange({0, cents}) ->
  [];
exchange({5, cents}) ->
  [[{5, pennies}],[{1, nickels}]];
exchange({X, cents}) ->
  [[{X, pennies}]];
exchange(_) ->
  [].


%%% see http://cyber-dojo.org/kata/edit/009E67?avatar=buffalo
