-ifndef(N2O_BOOTSTRAP_HRL).
-define(N2O_BOOTSTRAP_HRL, true).

-record(htmledit, {?ELEMENT_BASE(element_htmledit),
                root = code:priv_dir(n2o),
                dir = "",
                delegate_api,
                post_write,
                img_tool,
                post_target,
                size=[{200, 200}]}).

-endif.
