#lang racket/base
(require racket/format
         racket/match
         scribble/core
         scribble/decode  ; decode-content
         scribble/manual)

(provide author
         proof
         section
         subsection
         theorem
         title
         tt
         current-language
         danish-language 
         english-language)

(define english-language #hash())
(define danish-language
  #hash( ("Theorem" . "Sætning")
         ("Proof"   . "Bevis")))

(define current-language (make-parameter #f)) ; #f = english
; (define current-language (make-parameter danish))

(define (lookup s)
  (match (current-language)
    [#f s]
    [_  (hash-ref  s (λ() s))]))
    

(define (theorem s . strs)
  (let ([ss strs])
    (paragraph plain
               (cons (make-element 'bold (~a (lookup "Theorem") " "))
                     (cons (make-element 'italic s)
                           (decode-content ss))))))

(define (proof . s)
  (make-paragraph plain
                  (cons (make-element 'bold (~a (lookup "Proof") " "))
                        (decode-content s))))

