-ifndef(N2O_BOOTSTRAP_HRL).
-define(N2O_BOOTSTRAP_HRL, true).

-include("../../n2o/include/wf.hrl").

% Twitter Bootstrap Elements
-record(carousel, {?ELEMENT_BASE(element_carousel), interval=5000, pause= <<"hover">>, start=0, indicators=true, items=[], caption=[]}).
-record(accordion, {?ELEMENT_BASE(element_accordion), items=[], nav_stacked=false}).
-record(slider, {?ELEMENT_BASE(element_slider), min, max, step, orientation, value, selection, tooltip, handle, formater}).

% Synrc Elements
-record(rtable, {?ELEMENT_BASE(element_rtable), rows=[], postback}).
-record(upload_state, {cid, root=code:priv_dir(n2o), dir="", name,
  type, room=upload, data= <<>>, preview=false, size=[{200,200}], index=0, block_size=1048576}).
-record(upload, {?CTRL_BASE(element_upload), name, value, state=#upload_state{}, root, dir, delegate_query, delegate_api, post_write, img_tool, post_target, size, preview}).
-record(textboxlist, {?ELEMENT_BASE(element_textboxlist), placeholder="", postback, unique=true, values=[], autocomplete=true, queryRemote=true, onlyFromValues=true, minLenght=1}).
-record(htmlbox, {?CTRL_BASE(element_htmlbox), html, state=#upload_state{}, root, dir, delegate_query, delegate_api, post_write, img_tool, post_target, size}).

-endif.
