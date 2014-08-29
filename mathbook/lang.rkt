#lang racket/base
(require scribble/doclang
         ; scribble/manual
         "mathbook.rkt"
         scribble/html-properties
         "mathbook-defaults.rkt"
         "mathjax.rkt")
(provide (except-out (all-from-out scribble/doclang) #%module-begin)
         (all-from-out "mathbook.rkt" "mathjax.rkt")
         ; (all-from-out scribble/manual)
         (rename-out [module-begin #%module-begin])
         ; manual-doc-style
         )


(define-syntax-rule (module-begin id . body)
  (#%module-begin id post-process () use-mathjax-cdn . body))
