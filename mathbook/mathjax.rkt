#lang racket/base
(require racket/match
         scribble/core
         scribble/html-properties)

(provide $ $$)

;;; 
;;; NOTE: The actual loading of MathJax from the CDN and 
;;;       the loading of extensions is done in defaults.rkt.
;;;

(define (mymath start end . strs)
  (make-element (make-style "relax" '(exact-chars)) `(,start ,@strs ,end)))

(define ($  . strs) (apply mymath "\\(" "\\)" strs))
(define ($$ [env #f] . strs)
  (match env
    ["aligned"          (apply mymath "\\[\\begin{aligned}" "\\end{aligned}\\]" strs)]
    [(? procedure? env) (apply mymath (list* "\\[" "\\]" (apply env strs)))]
    [#f                 (apply mymath "\\[" "\\]" strs)]
    [_                  ($$ #f (cons env strs))]))

