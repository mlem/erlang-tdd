-module(stringcalc).
-author("Martin").

-export([add/1]).


add([]) ->
  0;
add([First]) ->
  First;
add([First | Rest]) ->
  First + add(Rest).
