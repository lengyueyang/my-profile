;;; compile.el --- description -*- lexical-binding: t; -*-
(require 'org)
(org-babel-tangle-file "config.org")
(org-babel-tangle-file "xah-fly.org")
(setq byte-compile-warnings '(not free-vars unresolved noruntime lexical make-local))
