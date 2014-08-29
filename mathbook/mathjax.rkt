#lang racket/base
(require scribble/core
         scribble/html-properties)
(provide use-mathjax-cdn $ $$)

(define mathjax-source
  "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")

(define use-mathjax-cdn
  (paragraph (style #f (list (alt-tag "script")
                             (attributes `((type . "text/javascript")
                                           (src . ,mathjax-source )))))
             '()))

(define (mymath start end . strs)
  (make-element (make-style "relax" '(exact-chars)) `(,start ,@strs ,end)))

(define ($  . strs) (apply mymath "\\(" "\\)" strs))
(define ($$ . strs) (apply mymath "\\[" "\\]" strs))
