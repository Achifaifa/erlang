#!/usr/bin/escript
%%! -smp enable 

-module(main).
-include_lib("wx/include/wx.hrl").
-include_lib("wx/include/gl.hrl").
-export([main/1]).

main(_)->
  Wx=wx:new(),
  F=wxFrame:new(Wx, -1, "Hello, World!"),
  wxFrame:show(F),
  {ok, [X]} = io:fread("input : ", "~d").
