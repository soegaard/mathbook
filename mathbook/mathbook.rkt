#lang racket/base
(require racket/format
         racket/match
         scribble/core
         scribble/decode  ; decode-content
         scribble/manual
         (for-syntax syntax/parse racket/base))

(provide aligned
         author
         def-index 
         exercise
         proof
         section
         subsection
         theorem
         title
         translate
         tt
         current-language
         danish-language 
         english-language)

;; The various environments have names. A "language" is a hash
;; table from english names to names in the other language.
;; Send translations to jensaxel@soegaard.net or submit a pull
;; request on Github.

(define english-language #hash())
(define danish-language
  #hash( ("Theorem" . "Sætning")
         ("Proof"   . "Bevis")
         ("Example" . "Eksempel")))

(define current-language (make-parameter #f)) ; #f = english
; (define current-language (make-parameter danish))

; translate : string -> string
;   if the string s has a translation in the (current-language)
;   hash table, use that translation, otherwise return the s.
(define (translate s)
  (match (current-language)
    [#f s]
    [lang (hash-ref lang s (λ() s))]))

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
;  defines a new theorem environment (using LaTeX nomenclature),
;  Warning: remember to add \newtheorem{latex-name}{text} to mathbook-style.tex
(define-syntax (define-new-theorem stx)
  (syntax-parse stx
    [(new-theorem name latex-name text)
     #'(begin
         (provide name)
         (define (name . strs)
           (list
            #;(part-start 1             ; depth
                          #f             ; tag-prefix
                       '()            ; tags
                       (style #f '()) ; style
                       "fra new-theorem"       ; title
                       )
            (make-nested-flow 
             ; latex-name ends up as class="latex-name" in the html
             (make-style latex-name '())
             (decode-flow strs)))))]))

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
(define-new-theorems theorem lemma corollary proposition conjecture criterion algorithm 
                     exercise oevelse)
(define-new-theorems definition condition problem example eksempel)
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

(define (aligned . s)
  (make-element (make-style "relax" '(exact-chars))
                `("\\[\\begin{aligned}" 
                  ,@s
                  "\\end{aligned}\\]")))


(define (proof . s)
  (make-paragraph plain
                  (cons (make-element 'bold (~a (translate "Proof") " "))
                        (decode-content s))))



;;;
;;; INDEX
;;;

; definition-index : ...
;   emphasize the word where it appears,
;   also put the word in the index
(define (def-index . s)
  (emph (apply as-index s)))







