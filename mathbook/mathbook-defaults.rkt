#lang scheme/base
(require scribble/core
         scribble/html-properties
         "defaults.rkt"
         "on-demand.rkt")

(provide post-process
         mathbook-doc-style)

(define (post-process doc)
  (add-defaults doc
                (scribble-file "mathbook-prefix.tex")
                (scribble-file "mathbook-style.tex")
                null
                #:html (html-defaults (scribble-file "mathbook-prefix.html")
                                      (scribble-file "mathbook-style.css")
                                      (list
                                       (scribble-file "mathbook-fonts.css")))
                #:properties (list
                              (css-style-addition
                               (scribble-file "mathbook-racket.css"))
                              (js-style-addition
                               (scribble-file "mathbook-racket.js")))
                #t))

(define-on-demand mathbook-doc-style
  (part-style (post-process (part #f null #f plain null null null))))
