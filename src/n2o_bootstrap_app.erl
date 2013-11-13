-module(n2o_bootstrap_app).
-behaviour(application).
-export([start/2, stop/1]).

start(_,_) -> web_sup:start_link().
stop(_) -> ok.
