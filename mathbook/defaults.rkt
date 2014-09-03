#lang scheme/base
(require scribble/core
         scribble/latex-properties
         scribble/html-properties
         setup/collects)

(provide scribble-file
         downloaded-file
         add-defaults)

(define (add-property properties pred new)
  (if (ormap pred properties)
      properties
      (cons new properties)))

(define (scribble-file s)
  (path->collects-relative (collection-file-path s "mathbook")))

(define (downloaded-file s)
  (build-path (find-system-path 'addon-dir) s))

(define mathjax-source
  "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")
(define extentions
  "MathJax.Hub.Config({ TeX: {extensions: [\"action.js\",\"cancel.js\"] }});")

(define (add-defaults doc pfx styl extras version?
                      #:html [html #f]
                      #:properties [properties null])
  (displayln doc)
  (struct-copy 
   part doc 
   [style (make-style (style-name (part-style doc))
                      (append
                       ; Add <script>...</script> to the <head>...</head> portion of html.
                       (list (head-extra 
                              ; This loads MathJax from mathjax-source
                              `(script ([type "text/javascript"] [src  ,mathjax-source])))
                             (head-extra 
                              ; This loads the given extensions. 
                              ;   "action.js" contains \texttip{math}{tip} and others.
                              ;   "cancel.js" contains \cancel{math} and others
                              `(script ([type "text/x-mathjax-config"]) extentions)))
                       ((if version? add-property (lambda (x y z) x))
                        (add-property
                         ((if html add-property (lambda (x y z) x))
                          (append (style-properties (part-style doc)) properties)
                          html-defaults?
                          html)
                         latex-defaults?
                         (make-latex-defaults pfx styl extras))
                        document-version?
                        (make-document-version (version)))))]))
