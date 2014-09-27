#lang racket/base
(require racket/match
         scribble/core
         scribble/base
         scribble/html-properties)

(provide $ $$) ; katex$ katex$$

;;; 
;;; NOTE: The actual loading of MathJax from the CDN and 
;;;       the loading of extensions is done in defaults.rkt.
;;;

#;( ; KaTeX support DISABLED until the KaTeX project matures
   (define (katex-math start end . strs)
     (elem `(,start ,@strs ,end)
           #:style (style "katex" (list (attributes '((id . "katex1")))))))
   
   (define (katex$ . strs)  (apply katex-math "" "" strs))
   (define (katex$$ . strs) (apply katex-math "" "" (cons "\\displaystyle " strs))))

(define (mymath start end . strs)
  (make-element (make-style "relax" '(exact-chars)) `(,start ,@strs ,end)))

(define ($  . strs) (apply mymath "\\(" "\\)" strs))
(define ($$ [env #f] . strs)
  (match env
    ["aligned"          (apply mymath "\\[\\begin{aligned}" "\\end{aligned}\\]" strs)]
    [(? procedure? env) (apply mymath (list* "\\[" "\\]" (apply env strs)))]
    [#f                 (apply mymath "\\[" "\\]" strs)]
    [_                  ($$ #f (cons env strs))]))

