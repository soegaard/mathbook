#lang racket/base
(require racket/format
         racket/match
         scribble/core
         scribble/decode  ; decode-content
         scribble/manual
         (for-syntax syntax/parse racket/base))

(provide aligned
         author
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
    
#;(define sigplan-extras
  (let ([abs (lambda (s)
               (path->collects-relative
                (collection-file-path s "scribble" "sigplan")))])
    (list
     (make-css-addition (abs "sigplan.css"))
     (make-tex-addition (abs "sigplan.tex")))))

#;(define abstract-style (make-style "abstract" sigplan-extras))

#;(define (abstract . strs)
  (make-nested-flow
   abstract-style
   (decode-flow strs)))

;; ----------------------------------------
;; Theorems:
; syntax : (define-new-theorem name latex-name text)
;  defines a new theorem environment (using LaTeX slang),
;  Warning: remember to add \newtheorem{latex-name}{text} to mathbook-style.tex
(define-syntax (define-new-theorem stx)
  (syntax-parse stx
    [(new-theorem name latex-name text)
     #'(begin
         (provide name)
         (define (name . strs)
           (make-nested-flow (make-style latex-name '())
                             (decode-flow strs))))]))

(define-syntax (define-new-theorems stx)
  (syntax-parse stx
    [(define-new-theorems name ...)
     (define strs (map symbol->string (syntax->datum #'(name ...))))
     (define caps (map string-titlecase strs))
     (with-syntax ([(latex-name ...) strs]
                   [(text ...)       caps])
       #'(begin
           (define-new-theorem name latex-name text)
           ...))]))

; plain         Theorem, Lemma, Corollary, Proposition, Conjecture, Criterion, Algorithm
; definition    Definition, Condition, Problem, Example
; remark        Remark, Note, Notation, Claim, Summary, Acknowledgment, Case, Conclusion

;(define-new-theorem theorem "theorem" "Theorem")
(define-new-theorems theorem lemma corollary proposition conjecture criterion algorithm)
(define-new-theorems definition condition problem example)
(define-new-theorems remark note notation claim summart acknowledgment #;case conclusion)



#;(define theorem-style (make-style "theorem" '()))
#;(define (theorem . strs)
  (make-nested-flow theorem-style (decode-flow strs)))

#;(define (theorem s . strs)
  (let ([ss strs])
    (paragraph plain
               (cons (make-element 'theo 
               (decode-content ss))))))

#;(define (theorem s . strs)
  (let ([ss strs])
    (paragraph plain
               (cons (make-element 'bold (~a (lookup "Theorem") " "))
                     (cons (make-element 'italic s)
                           (decode-content ss))))))

;; ----------------------------------------
;; Math Environments

(define (aligned . strs) ; note only allowed in math mode
  (make-nested-flow (make-style "aligned" '()) 
                    (decode-flow strs)))

(define (proof . s)
  (make-paragraph plain
                  (cons (make-element 'bold (~a (lookup "Proof") " "))
                        (decode-content s))))

