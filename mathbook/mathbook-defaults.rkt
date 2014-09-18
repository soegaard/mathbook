#lang scheme/base
(require scribble/core
         scribble/html-properties
         "defaults.rkt"
         "on-demand.rkt")

(provide post-process
         mathbook-doc-style)

(define (post-process doc)
  (add-defaults doc
                (mathbook-file "mathbook-prefix.tex")
                (mathbook-file "mathbook-style.tex")
                null
                #:html (html-defaults (mathbook-file "mathbook-prefix.html")
                                      (mathbook-file "mathbook-style.css")
                                      (list (mathbook-file "mathbook-fonts.css")))
                #:properties (list
                              (css-style-addition
                               (mathbook-file "mathbook-racket.css"))
                              (js-style-addition
                               (mathbook-file "mathbook-racket.js")))
                #f)) ; #f => no version info

(define-on-demand mathbook-doc-style
  (part-style (post-process (part #f null #f plain null null null))))
