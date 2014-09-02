#lang racket/base
(require racket/match
         scribble/core
         scribble/html-properties)
(provide use-mathjax-cdn $ $$)

(define mathjax-source
  "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")

(define use-mathjax-cdn
  (paragraph 
   (style #f '())
   (list
    ; This loads MathJax from mathjax-source
    (element (style #f (list (alt-tag "script")
                               (attributes `((type . "text/javascript")
                                             (src . ,mathjax-source )))))
               '())
    ; This loads the given extensions. 
    ;   "action.js" contains \texttip{math}{tip} and others.
    (element (style #f (list (alt-tag "script")
                                 (attributes `((type . "text/x-mathjax-config")))))
             "MathJax.Hub.Config({ TeX: { extensions: [\"action.js\"] }});"))))

(define (mymath start end . strs)
  (make-element (make-style "relax" '(exact-chars)) `(,start ,@strs ,end)))

(define ($  . strs) (apply mymath "\\(" "\\)" strs))
(define ($$ [env #f] . strs)
  (match env
    ["aligned"          (apply mymath "\\[\\begin{aligned}" "\\end{aligned}\\]" strs)]
    [(? procedure? env) (apply mymath (list* "\\[" "\\]" (apply env strs)))]
    [#f                 (apply mymath "\\[" "\\]" strs)]
    [_                  ($$ #f (cons env strs))]))

