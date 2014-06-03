%%%-------------------------------------------------------------------
%%% @author lemansma
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Jun 2014 17:30
%%%-------------------------------------------------------------------
-module(romannumerals).
-author("lemansma").

%% API
-export([convert/1]).

convert("I") ->
  1;
convert("IV") ->
  4;
convert("V") ->
  5;
convert("IX") ->
  9;
convert("X") ->
  10;
convert("XL") ->
  40;
convert("L") ->
  50;
convert("XC") ->
  90;
convert("C") ->
  100;
convert("CD") ->
  400;
convert("D") ->
  500;
convert("CM") ->
  900;
convert("M") ->
  1000;
convert([First, Second]) ->
  convert([First]) + convert([Second]);

convert([First | Rest]) ->
  FirstConverted = convert([First]),
  RestConverted = convert(Rest),
  if FirstConverted >= RestConverted ->
    FirstConverted + RestConverted;
    true ->
      [Second | OtherRest] = Rest,
      SecondConverted = convert([Second]),
      if
        FirstConverted == SecondConverted ->
          FirstConverted + SecondConverted + convert(OtherRest);
        true ->
          SecondConverted - FirstConverted + convert(OtherRest)
      end
  end;
convert([First, Second | Rest]) ->
  FirstConverted = convert([First]),
  SecondConverted = convert([Second]),
  if FirstConverted >= SecondConverted ->
    FirstConverted + SecondConverted + convert(Rest);
    true ->
      SecondConverted - FirstConverted + convert(Rest)
  end;
convert(_) ->
  0.