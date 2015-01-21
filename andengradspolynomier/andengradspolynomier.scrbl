#lang mathbook
@(current-language danish-language)

@title{Andengradspolynomier}
@author{Jens Axel Søgaard, 2014}

@section{Faktorisering af andengradspolynomium}

Andengradspolynomiet @${2x^2 - 8x + 6}  kan omskrives til  @${2 (x-1) (x-3)}.

    @$${2 x^2 - 8x + 6 = 2 (x-1) (x-3)}

Den første måde at opskrive andengradspolynomiet kaldes led-form og
den anden måde kaldes faktor-form.

Omskriver man et polynomium fra led-form til faktor-form, siger man
at man @emph{faktoriserer} andengradspolynomiet.

Lad os gøre eksemplet færdigt ved at kontrollere at udregningen er 
korrekt. Den nemmeste kontrol er at gange ind i parenteserne:

@$${2 (x-1) (x-3) = 2 (x\cdot x - 3x -1x + 1\cdot 3) = 2(x^2 - 4x + 3) = 2x^2 - 8x + 6 \textrm{ ok }}

@subsection{Omskrivning fra faktor-form til led-form}


Et andengradspolynomium på faktor-form kan omskrives til led-form ved at
gange ind i parenteserne. 

@$${a (x-r) (x-s) = a (x^2 - sx -rx + rs) = a(x^2 - (s+r)x + rs) = ax^2 - a(s+r)x + ars}

Konklusion:
    Omskrives et andengradspolynomium  @${a(x-r)(x-s)} til  led-form @${ax^2 + bx + c},
    så er:

         @$${a (x-r) (x-s) = ax^2 - a(r+s)x + ars}

    dvs  @${b = -a(r+s)} og @${c = ars}.

@eksempel{Omskrivning fra faktor-form til led-form}

Polynomiet   @${3(x-2)(x+1)} skal omskrives fra faktor-form til led-form.

Polynomiet @${3(x-2)(x+1) = 3(x-2)(x-(-1))} skal sammenlignes med @${a (x-r) (x-s)}.
Det ses, at @${a=3}, @${r=2} og @${s=-1}. 
Koeffecienter @${b} og @${c} udregnes:
    @$${b = -a(r+s) = -3(2+(-1)) = -3\cdot 1 = -3 }
    @$${c = ars = 3\cdot 2\cdot (-1) = -6.}
Ledformen er derfor:
    @$${ax^2 + bx + c = 3x^2 - 3x - 6}

@eksempel{CAS - Omskrivning fra faktor-form til led-form}
Anvendes CAS kan omskrivningen foretages ved at bruge funktionen @code{expand()}.

@code{Input:   expand( 3(x-2)(x+1) )}

@code{Output:  3x^2 - 3x - 6}

Kommandoen @code{expand} ganger parenteserne ud. Det pudsige navn skyldes, at
man på engelsk omtaler "gange ind i parenteser" som "expansion".
Der hentydes til at udtryk ofte bliver større af ganget parenteserne ud.


@eksempel{Omskrivning fra led-form til faktor-form (faktorisering)}

Omskrivning af et andengradspolynomium fra led-form til
faktor-form kaldes @emph{faktorisering}. Faktorisering er
en smule mere besværligt end omskrivning til led-form,
for det er nemlig ikke alle andengradspolynomier, der
kan faktoriseres.

Lad os først se på metoden til omskrivning fra led-formen 
 @${ax^2 + bx + c} til faktor-formen @${a(x-r)(x-s)}.

Metode:
@nested[#:style 'inset
  @itemlist[#:style 'ordered
    (list
     @item{Find @${a}, @${b} og @${c}.}
     @item{Udregn tallet @${d=b^2-4ac}}
     @item{@itemlist[
            (list @item{Hvis @${d<0} (negativ), så kan andengradspolynomiet ikke omskrives.}
                  @item{Hvis @${d=0} (nul), så er faktorformen @${a(x-r)^2} hvor @${r = \frac{-b}{2a}}}
                  @item{Hvis @${d>0} (positive),
                             så er faktorformen @${a(x-r)(x-s)}
                             hvor @$${r = \frac{-b - \sqrt{d}}{2a}
                                               \textrm{ og }
                                      s = \frac{-b + \sqrt{d}}{2a}}})]})]]

Vi ser altså, at der er 3 muligheder.

@eksempel{faktorisering, d>0}

Polynomiet @${2x^2 + 4x - 6} skal faktoriseres.

@nested[#:style 'inset
  @itemlist[#:style 'ordered
    (list
     @item{@${a = 2}, @${b = 4}, @${c = -6}}
     @item{@${d = b^2-4ac = 4^2 - 4\cdot 2\cdot (-6) = 16+48 = 64}})]
  @para{Da @${d=64>0} forsætter vi med 3c.}
  @itemlist[#:style 'ordered
    (list
     @item{@${r = \frac{-b - \sqrt{d}}{2a} = \frac{-4-\sqrt{64}}{2\cdot 2} = \frac{-4-8}{4} = -3}
            
            @${s = \frac{-b + \sqrt{d}}{2a} = \frac{-4+\sqrt{64}}{2\cdot 2} = \frac{-4+8}{4} =  1}}
     @item{Faktor-formen er derfor:
           @$${a(x-r)(x-s) = 2(x-(-3))(x-1) = 2(x+3)(x-1)}})]]
Konklusion: @${2x^2 + 4x - 6 = 2(x+3)(x-1)}

@eksempel{CAS - faktorisering}
I et CAS bruges kommandoen factor() til at faktorisere et udtryk.

@code{Input:  factor(2x^2 + 4x - 6)}

@code{Output: 2(x-1)(x+3)}

@eksempel{faktorisering, @${d=0}}
Polynomiet @${2x^2 + 4x + 2} skal faktoriseres.

@nested[#:style 'inset
  @itemlist[#:style 'ordered
    (list
     @item{1. @${a = 2}, @${b = 4}, @${c = 2}}
     @item{2. @${d = b^2 - 4ac = 4^2 - 4\cdot 2\cdot 2 = 0}})]
  @para{Da @${d=0} forsættes med 3b.}
  @itemlist[#:style 'ordered
    (list 
     @item{3b. @${r = -b / 2a = -4 /(2\cdot 2) = -1}})]]
Faktorformen er:
       @$${a(x-r)^2 = 2(x-(-1))^2 = 2(x+1)^2}
Konklusion: @${2x^2 + 4x + 2  = 2(x+1)^2}

@eksempel{faktorisering, @${d<0}}
Polynomiet  @${2x^2 + 4x + 3} skal faktoriseres.
@nested[#:style 'inset
  @itemlist[#:style 'ordered
    (list @item{@${a = 2, b = 4, c = 3}}
          @item{@${d = b^2 - 4ac = 4^2 - 4\cdot 2\cdot 3 = 16 - 24 = -8}}
          @item{Da @${d=-8} er negativ, kan polynomiet ikke faktoriseres.})]]

@section{Løsning af andengradsligninger}

@subsection{Andengradsligninger}

Ligninger, der kan omskrives til formen @${ax^2 + bx + c = 0}, 
hvor @${a}, @${b} og @${c} er tal, og @${a} ikke er nul, kaldes andengradsligninger.


@subsection{Standardmetoden}
@verbatim{
1. Omskriv til standardformen @${ax^2 + bx + c = 0}
2. Aflæs tallene @${a}, @${b} og @${c}.
3. Udregn hjælpetallet @${d=b^2-4ac}
4. Find fortegnet for diskriminanten @${d}.
   Hvis @${d} er positiv, har ligningen to løsninger.
   Hvis @${d} er nul,     har ligningen en løsninger.
   Hvis @${d} er negativ, har ligningen nul løsninger.
5a. Hvis diskriminanten @${d} er positiv:
    De to løsninger er:
       @$${x1 = \frac{-b - \sqrt{d}}{2a}}
       @$${x2 = \frac{-b + \sqrt{d}}{2a}}
5b. Hvis diskriminanten @${d} er nul:
    Løsningen er:
       @$${x = \frac{-b}{2a}}
5c. Hvis diskriminanten er negativ:
    Der er ingen løsninger.}


@subsection{Gættemetoden}
For simple andengradsligninger kan man nogle gange gætte ligningens løsninger.

@eksempel{}

Ligningen   @${x^2 - 3x + 2 = 0}.
Eleven G. Gearløs gætter at @${x=1} og @${x=2} er løsninger.
For at kontrollere, at han har gættet rigtigt, indsætter han gættene en ad gangen i ligningen:
    @$${1^2 - 3\cdot 1 + 2 = 1 - 3 + 2 = 0}
 	 @$${2^2 - 3\cdot 2 + 2 = 4 - 6 + 2 = 0}
Georg havde altså gættet rigtigt. 

Men hvordan vidste han, at han skulle gætte på @${x=1} og @${x=2} i første omgang?

Georg vidste, at hvis en andengradsligning har to løsninger @${x_1} og @${x_2}, så skal
@${x_1\cdot x_2} være det samme som @${c/a}. I opgaven er @${\frac{c}{a} = 2/1 = 2},
så Georg ved, at han skal finde to tal som ganget sammen giver 2.

Der er to muligheder:
@$${    x1 = -1  \textrm{ og }  x2 = -2        (-1)\cdot (-2) = 2}
@$${    x1 =  1  \textrm{ og }   x2 =  2          1 \cdot   2  = 2}

Nu kunne man afprøve første mulighed ved at sætte ind i ligningen, 
men Georg kan nemt udelukke den første mulighed. Han kender nemlig
en ting mere om løsningerne. Summen @${x_1+x_2} af løsningerne skal give @${\frac{-b}{a}}.
I denne opgave er @${x_1+x_2 = -b/a = -(-3)/1 = 3}.
For de to muligheder har vi:
    @$${x1 = -1  \textrm{ og }   x2 = -2        (-1)+(-2) = -2}
    @$${x1 =  1  \textrm{ og }   x2 =  2          1 +  2  =  3}

@subsection{Metoden}
For at gætte heltallige løsninger i en andengradsligningen kan 
følgende metode bruges:
@nested[#:style 'inset
  @itemlist[
    (list
     @item{Udregn hvad produktet @${x_1\cdot x_2} skal give:  @${c/a}}
     @item{Opskriv alle muligheder for @${x_1} og @${x_2}, så de ganget sammen giver @${\frac{c}{a}}.}
     @item{Udregn hvad summen @${x_1+x_2} skal give:     @${\frac{-b}{a}}}
     @item{Find den mulighed, hvor @${x_1+x_2} giver @${\frac{-b}{a}}})]]

@eksempel{Eksempel}
Andengradsligningen @${x^2 - 17x + 30 = 0} skal løses.
Først aflæses  @${a=1}, @${b=-17}, @${c=30}.
Da alle tallene er hele tal, er der en chance for at matematiklæreren 
har lavet en opgave med nemme løsninger. 

@nested[#:style 'inset
  @itemlist[#:style 'ordered
    (list
     @item{Udregning af produktet: @${\frac{c}{a} = 30/1 = 30}}
     @item{Muligheder:
           @verbatim{
          1*30    = 30
          2*15    = 30
          3*10    = 30
          5*6     = 30
       (-1)*(-30) = 30
       (-2)*(-15) = 30
       (-3)*(-10) = 30
       (-5)*(-6)  = 30}}
     @item{Udregning af summen: @${\frac{-b}{a} = -(-17)/1 = 17}}
     @item{Summen udregnes for hver mulighed:
           @verbatim{
          1+30    =  31
          2+15    =  17
          3+10    =  13
          5+6     =  11
       (-1)+(-30) = -31
       (-2)+(-15) = -17
       (-3)+(-10) = -13
       (-5)+(-6)  = -11}})]]
Konklusion: Den rigtige muligheder @${x_1=2} og @${x_2=15}.
Når den rigtige mulighed er fundet, behøver man ikke udregne summen 
for de resterende muligheder.

@eksempel{}
Andengradsligningen @${2x^2 - 3x + 1 = 0} skal løses.
Tallene @${a=2}, @${b=-3} og @${c=1} aflæses.

@nested[#:style 'inset
  @itemlist[@item{Udregning af produktet: @${\frac{c}{a} = 1/2}}]]

Produktet af de to løsninger skal give 1/2. 
Derfor kan løsningerne ikke begge være hele tal - og  derfor kan 
gættemetoden ikke bruges på denne ligning. I stedet for skal 
ligningen løses med standardmetoden (vha diskriminanten).


@eksempel{}

Andengradsligningen @${2x^2 - 5x + 2 = 0} skal løses.
Tallene @${a=2}, @${b=-5} og @${c=2} aflæses.

@nested[#:style 'inset
@itemlist[#:style 'ordered
(list 
 @item{Udregning af produktet: @${\frac{c}{a} = \frac{2}{2} = 1}}
 @item{Muligheder:
       @verbatim{1*1       = 1
                 (-1)*(-1) = 1}}
 @item{Udregning af summen: @${\frac{-b}{a} = \frac{-(-5)}{2} = \frac{5}{2}}})]]

Da summen ikke er helt helt tal, kan gættemetoden ikke bruges til denne andengradsligning.


@subsection{Baggrund for metoden}

Lad @${ax^2 + bx + c = 0} være en andengradsligning med to løsninger @${x_1} og @${x_2}.
Da andengradsligningen har to løsninger, er diskriminanten @${d} positiv og
     @$${x_1 = ( -b - \sqrt{d} )/2a}
     @$${x_2 = ( -b + \sqrt{d} )/2a}

Produktet af de to løsninger er:
@verbatim{
     x1 * x2 = (   -b - sqrt{d} )/2a * ( -b + sqrt{d} )/2a               ; indsæt
             = ( ( -b - sqrt{d} )    * ( -b + sqrt{d} ) ) / (2a * 2a)    ; produkt af brøker
             = (  (-b)^2 - sqrt{d}^2                    ) / 4a^2         ; 3. kvadratsætning  (x-y)(x+y) = x^2-y^2
             = (    b^2 - d                             ) / 4a^2         ; sqrt(x)^2 = x
             = (    b^2 - (b^2 - 4ac)                   ) / 4a^2         ; indsæt d=b^2 -4ac
             = (    b^2 -  b^2 + 4ac                    ) / 4a^2         ; ophæv minusparentes
             = (                 4ac                    ) / 4a*a         ; reducer
             = c/a                                                       ; forkort brøk med 4a
}
Summen af de to løsninger er:
@verbatim{
     x1 + x2 = (   -b - sqrt{d} )/2a + ( -b + sqrt{d} )/2a               ; indsæt
             = (   -b - sqrt{d}      +   -b + sqrt{d} )/2a               ; sum af brøker
             = (   -2b                                )/2a               ; -b-b = -2b  , -x+x=0
             = -b/a                                                      ; forkort brøk med 2
}
@oevelse{teoretisk}
Kan gættemetoden bruges på en andengradsligning med en diskriminant på nul?
(Tip: Lav en andengradsligning med diskriminant 0 og forsøg at løse den vha gættemetoden)


@void{
Anvendelser: 
  - Ligningsløsning vha nul-regel
  - http://math.stackexchange.com/questions/83837/what-is-a-real-world-application-of-polynomial-factoring
}
