#lang mathbook

@title{Mathbook}
@author{Jens Axel Søgaard}

@section{Introduction}
Documents in the @tt{mathbook} language can contain mathematical formulas.
There are two types of formulas inline and display formulas.
The scribble constructs to make formulars are called @tt{$} and @tt{$$}. 
An inline formula @${a^2+b^2=c^2} appears as part of the text and a display 
formula @$${a^2+b^2=c^2} appears centered on a line of its own.

A mathbook rendered as HTML use MathJax to render the formulas.

@$${\texttip{a^2+b^2=c^2}{Pythagoras where $C=90^\circ$}}

@$${ x +a -x = \bcancel{x}+a-\bcancel{x} = a}

@section{Reference}
This is the reference section.

The file @tt{mathbook-style.tex} contains the LaTeX definitions.
The package @tt{amsthm} is used to defined theorem like (LaTeX) environments.
@theorem{This is an important theorem}
@lemma{This lemma is not quite as important}
@remark{The lemma should have been a remark}



@(define (do-line dollar [x "x"] [y "y"]) @dollar{@y = a \cdot @x + b})
@(define (line   [x "x"] [y "y"]) (do-line  $ x y))
@(define ($$line [x "x"] [y "y"]) (do-line $$ x y))
@(define y=ax+b (line))
@(define a @${x})
@(define b @${x})
@(define x @${x})
@(define y @${y})
@(define (værdi x)   @${@x \text{-værdi}})
@(define (værdien x) @${@x \text{-værdien}})

@section{Linjer og ligninger}
En ligning af typen @y=ax+b svarer til en ikke-lodret linje.

@subsection{Betydningen af konstantleddet @${b}}

@theorem{Betydning af @${b}}
Tallet @${b} i ligningen @y=ax+b er den @værdi{y}, som hører til @værdien{x} 0.
@proof{}
Hvis @${x=0}, så er @${y=a\cdot x +b = y=a\cdot 0 +b = 0 + b = b}.

Grafisk betyder sætningen, at linjen med ligning @y=ax+b skærer @${y}-aksen i punktet@${(0,b)}.




@subsection{Fra ligning til linje}


Vi ser nu på, hvilken betydning tallene @${a} og @${b}


@subsection{Fra to punkter til linjens hældning}

@(define P @${P(x_1,y_1)}) 
@(define Q @${Q(x_2,y_2)})

@theorem{Hældningsformel}
Hvis en linje har ligningen @line{} og to punkter @P og @Q ligger på linjen, 
så er linjens hældning:
    @$${a = \frac{y_2 - y_1}{x_1 - x_1} }
@proof{}
Punktet @P ligger på linjen, så punktet @${(x_1,y_1)} passer i linjens ligning @line{}.
    @$$line["x_1" "y_1"] 
Punktet @Q ligger på linjen, så punktet @${(x_2,y_1)} passer også i linjens ligning.
    @$$line["x_2" "y_2"] 
Nu udregnes væksten i @${y}: XXX
    @$${\begin{aligned}
              y_2 - y_1 & = (a\cdot x_2 + b)  - (a\cdot x_1 +b)  \\ 
                        & =  a\cdot x_2 + b   -  a\cdot x_1 - b  \\ 
                        & =  a\cdot x_2       -  a\cdot x_1      \\
                        & =  a\cdot (x_2 - x_1 )                 \\
        \end{aligned}}
    @$$["aligned"]{
              y_2 - y_1 & = (a\cdot x_2 + b)  - (a\cdot x_1 +b)  \\ 
                        & =  a\cdot x_2 + b   -  a\cdot x_1 - b  \\ 
                        & =  a\cdot x_2       -  a\cdot x_1      \\
                        & =  a\cdot (x_2 - x_1 )                 \\}
I næstsidste linje står der @${a\cdot} i begge led. Faktoren @${a} er derfor en fælles faktor. 
I sidste linje er den fælles faktor sat uden for parentes.

Konklusionen er, at væksten i @${y} er det samme som @${a} gange væksten i @${x}.
    @$${y_2 - y_1 = a\cdot (x_2 - x_1)}

For at få isolere @${a} ombyttes venstre og højre side, og derefter divideres med væksten i @${x}.
@;    @$${\begin{align}
@;              a\cdot (x_2 - x_1) & = y_2 - y_1 \\ \\
@;              a                  & = \frac{y_2 - y_1}{x_2 - x_1} \\
@;        \end{align}}
