%%% Given a Roman number as a string (eg "XX") determine
%% its integer value (eg 20).
%%
%% You cannot write numerals like IM for 999.
%% Wikipedia states "Modern Roman numerals are written by
%% expressing each digit separately starting with the
%% leftmost digit and skipping any digit with a value of zero."
%%
%% Examples:
%%
%%    "I" -> 1 |    "X" -> 10 |    "C" -> 100 |    "M" -> 1000
%%   "II" -> 2 |   "XX" -> 20 |   "CC" -> 200 |   "MM" -> 2000
%%  "III" -> 3 |  "XXX" -> 30 |  "CCC" -> 300 |  "MMM" -> 3000
%%   "IV" -> 4 |   "XL" -> 40 |   "CD" -> 400 | "MMMM" -> 4000
%%    "V" -> 5 |    "L" -> 50 |    "D" -> 500 |
%%   "VI" -> 6 |   "LX" -> 60 |   "DC" -> 600 |
%%  "VII" -> 7 |  "LXX" -> 70 |  "DCC" -> 700 |
%% "VIII" -> 8 | "LXXX" -> 80 | "DCCC" -> 800 |
%%   "IX" -> 9 |   "XC" -> 90 |   "CM" -> 900 |
%%
%%  "MCMXC" -> 1990 ("M" -> 1000 + "CM" -> 900 + "XC" -> 90)
%% "MMVIII" -> 2008 ("MM" -> 2000 + "VIII" -> 8)
%%   "XCIX" -> 99   ("XC" -> 90 + "IX" -> 9)
%%  "XLVII" -> 47   ("XL" -> 40 + "VII" -> 7)

%%% Created : 03. Jun 2014 17:30
%%%-------------------------------------------------------------------
-module(romannumerals_tests).
-author("lemansma").

-include_lib("eunit/include/eunit.hrl").

-import(romannumerals, [convert/1]).

empty_string_test() ->
  ?assertEqual(0, romannumerals:convert("")).

one_string_test() ->
  ?assertEqual(1, romannumerals:convert("I")).

two_string_test() ->
  ?assertEqual(2, romannumerals:convert("II")).

three_string_test() ->
  ?assertEqual(3, romannumerals:convert("III")).

four_string_test() ->
  ?assertEqual(4, romannumerals:convert("IV")).


five_string_test() ->
  ?assertEqual(5, romannumerals:convert("V")).

six_string_test() ->
        ?assertEqual(6, romannumerals:convert("VI")).

seven_string_test() ->
  ?assertEqual(7, romannumerals:convert("VII")).

eight_string_test() ->
  ?assertEqual(8, romannumerals:convert("VIII")).

nine_string_test() ->
  ?assertEqual(9, romannumerals:convert("IX")).

ten_string_test() ->
  ?assertEqual(10, romannumerals:convert("X")).

eleven_string_test() ->
  ?assertEqual(11, romannumerals:convert("XI")).

twelve_string_test() ->
  ?assertEqual(12, romannumerals:convert("XII")).

thirteen_string_test() ->
  ?assertEqual(13, romannumerals:convert("XIII")).

fourteen_string_test() ->
  ?assertEqual(14, romannumerals:convert("XIV")).

fifteen_string_test() ->
    ?assertEqual(15, romannumerals:convert("XV")).

sixteen_string_test() ->
    ?assertEqual(16, romannumerals:convert("XVI")).

seventeen_string_test() ->
    ?assertEqual(17, romannumerals:convert("XVII")).

eighteen_string_test() ->
    ?assertEqual(18, romannumerals:convert("XVIII")).

nineteen_string_test() ->
    ?assertEqual(19, romannumerals:convert("XIX")).

twenty_string_test() ->
    ?assertEqual(20, romannumerals:convert("XX")).

thirty_string_test() ->
    ?assertEqual(30, romannumerals:convert("XXX")).

forty_string_test() ->
    ?assertEqual(40, romannumerals:convert("XL")).

fortyone_string_test() ->
    ?assertEqual(41, romannumerals:convert("XLI")).

fortysix_string_test() ->
    ?assertEqual(46, romannumerals:convert("XLVI")).

fifty_string_test() ->
    ?assertEqual(50, romannumerals:convert("L")).
sixty_string_test() ->
    ?assertEqual(60, romannumerals:convert("LX")).
seventy_string_test() ->
    ?assertEqual(70, romannumerals:convert("LXX")).
eighty_string_test() ->
    ?assertEqual(80, romannumerals:convert("LXXX")).
ninety_string_test() ->
    ?assertEqual(90, romannumerals:convert("XC")).
hundred_string_test() ->
    ?assertEqual(100, romannumerals:convert("C")).
fourhundred_string_test() ->
    ?assertEqual(400, romannumerals:convert("CD")).
fivehundred_string_test() ->
    ?assertEqual(500, romannumerals:convert("D")).
ninehundred_string_test() ->
    ?assertEqual(900, romannumerals:convert("CM")).
thousand_string_test() ->
    ?assertEqual(1000, romannumerals:convert("M")).
