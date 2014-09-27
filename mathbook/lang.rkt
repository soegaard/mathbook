#lang racket/base
;;; This exports of this file define the available constructs in the #lang mathbook language.

(require scribble/base
         scribble/doclang
         scribble/manual
         "mathbook.rkt"
         scribble/html-properties
         "mathbook-defaults.rkt"
         "mathjax.rkt")
(provide (all-from-out scribble/base)
         (except-out (all-from-out scribble/doclang) #%module-begin)
         (all-from-out "mathbook.rkt" "mathjax.rkt")
         ; (all-from-out scribble/manual)
         (rename-out [module-begin #%module-begin])
         ; manual-doc-style
         ;;; From scribble/manual :
         indexed-racket
         codeblock codeblock0 code  
          racket
         )


(define-syntax-rule (module-begin id . body)
  (#%module-begin id post-process () #;use-mathjax-cdn . body))
