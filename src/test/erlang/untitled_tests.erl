%%% Prime Factors Kata
%%% 1 => []
%%% 2 => [2]
%%% 3 => [3]
%%% 4 => [2,2]
%%% 5 => [5]
%%% 6 => [2,3]
%%% 7 => [7]
%%% 8 => [2,2,2]
%%% 9 => [3,3]
%%% 2*3*5*7*11*13 => [2,3,5,7,11,13]
%%% 8191*131071 => [8191,131071]
%%% 2**100 => [2]*100
%%% 2**19-1 => [2**19-1]
%%% 2**31-1 => [2**31-1]

-module(untitled_tests).
-include_lib("eunit/include/eunit.hrl").
-import(untitled, [answer/0]).

answer_one_test() ->
  ?assertEqual([], untitled:answer(1)).

answer_two_test() ->
  ?assertEqual([2], untitled:answer(2)).

answer_three_test() ->
  ?assertEqual([3], untitled:answer(3)).

answer_four_test() ->
  ?assertEqual([2, 2], untitled:answer(4)).

answer_five_test() ->
  ?assertEqual([5], untitled:answer(5)).

answer_six_test() ->
  ?assertEqual([2, 3], untitled:answer(6)).

answer_seven_test() ->
  ?assertEqual([7], untitled:answer(7)).

answer_eight_test() ->
  ?assertEqual([2, 2, 2], untitled:answer(8)).

answer_nine_test() ->
  ?assertEqual([3, 3], untitled:answer(9)).

answer_many_primes_test() ->
  ?assertEqual([2,3,5,7,11,13], untitled:answer(2 * 3 * 5 * 7 * 11 * 13)).

answer_two_big_primes_test() ->
  ?assertEqual([8191,131071], untitled:answer(8191*131071)).

%%%2**19 = 524288
%%%524287 = 1111111111111111111

answer_big_test() ->
  ?assertEqual([524287], untitled:answer(524287)).

answer_bigger_test() ->
  ?assertEqual([2147483647], untitled:answer(2147483647)).
