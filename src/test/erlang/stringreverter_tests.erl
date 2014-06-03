%%%-------------------------------------------------------------------
%%% @author lemansma
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Jun 2014 17:18
%%%-------------------------------------------------------------------
-module(stringreverter_tests).
-author("lemansma").

-include_lib("eunit/include/eunit.hrl").

-import(stringreverter, [method/1]).


simple_test() ->
  ?assert(true).

an_other_test() ->
    ?assertEqual("cba", stringreverter:method("abc")).


r_test() ->
    ?assertEqual("bc", stringreverter:cutdown("abc", "b")).
