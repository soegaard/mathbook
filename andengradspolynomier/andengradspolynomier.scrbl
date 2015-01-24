#lang mathbook
@(current-language danish-language)

@title{Andengradspolynomier}
@author{Jens Axel Søgaard, 2015}

@section{Faktorisering af andengradspolynomium}
Andengradspolynomiet @${2x^2 - 8x + 6}  kan omskrives til  @${2 (x-1) (x-3)}.
    @$${2 x^2 - 8x + 6 = 2 (x-1) (x-3)}
Den første måde at opskrive andengradspolynomiet kaldes @def-index{led-form} og
den anden måde kaldes @def-index{faktor-form}.

Omskriver man et polynomium fra led-form til faktor-form, siger man
at man @def-index{faktoriserer} andengradspolynomiet.

Lad os gøre eksemplet færdigt ved at kontrollere at udregningen er 
korrekt. Det gøres ved at gange ind i parenteserne:
@$${2 (x-1) (x-3) = 2 (x\cdot x - 3x -1x + 1\cdot 3) = 2(x^2 - 4x + 3) = 2x^2 - 8x + 6 \textrm{ ok }}

@subsection{Omskrivning fra faktor-form til led-form}
Et andengradspolynomium på faktor-form kan omskrives til led-form ved at
gange ind i parenteserne. 
@aligned{ a (x-r) (x-s) &= a (x^2 - sx -rx + rs) \\
                        &= a(x^2 - (s+r)x + rs)  \\
                        &= ax^2 - a(s+r)x + ars}
Konklusion: Omskrives et andengradspolynomium  @${a(x-r)(x-s)} til  led-form @${ax^2 + bx + c}, 
så er:
         @$${a x^2 + b x + c = ax^2 - a(r+s)x + ars}
dvs      @aligned{b &= -a(r+s)\\ 
                  c &= ars}

Vi har nu to formler for @${b} og @${c} som kan bruges til at udregne ledformen.

@eksempel{Omskrivning fra faktor-form til led-form}
Polynomiet   @${3(x-2)(x+1)} skal omskrives fra faktor-form til led-form.
Polynomiet @${3(x-2)(x+1) = 3(x-2)(x-(-1))} skal sammenlignes med @${a (x-r) (x-s)}.
Det ses, at @${a=3}, @${r=2} og @${s=-1}. 
Koeffecienter @${b} og @${c} udregnes:
    @aligned{b &= -a(r+s) = -3(2+(-1)) = -3\cdot 1 = -3 \\
             c &= ars = 3\cdot 2\cdot (-1) = -6.}
Ledformen er derfor:
    @$${ax^2 + bx + c = 3x^2 - 3x - 6}

@eksempel{CAS - Omskrivning fra faktor-form til led-form}
Anvendes CAS kan omskrivningen foretages ved at bruge funktionen @code{expand()}.

@code{Input:   expand( 3(x-2)(x+1) )}

@code{Output:} @${3x^2 - 3x - 6}

Kommandoen @code{expand} ganger parenteserne ud. Det pudsige navn skyldes, at
man på engelsk omtaler "gange ind i parenteser" som "expansion".
Der hentydes til, at udtryk ofte bliver større af ganget parenteserne ud.


@subsection{Omskrivning fra led-form til faktor-form (faktorisering)}

Omskrivning af et andengradspolynomium fra led-form til faktor-form kaldes @emph{faktorisering}. 

Lad os først se på metoden til omskrivning fra led-formen @${ax^2 + bx + c} 
til faktor-formen @${a(x-r)(x-s)}.

@subsubsection{Metode}

@nested[#:style 'inset
  (list
   @para{1.  Find @${a}, @${b} og @${c}.}
   @para{2.  Udregn tallet @${d=b^2-4ac}}
   @para{3a. Hvis @${d<0} (negativ), så kan andengradspolynomiet ikke omskrives.}
   @para{3b. Hvis @${d=0} (nul), så er faktorformen @${a(x-r)^2}, hvor @${r = \frac{-b}{2a}}.}
   @para{3c. Hvis @${d>0} (positive), så er faktorformen @${a(x-r)(x-s)},
             hvor @$${r = \frac{-b - \sqrt{d}}{2a}
                               \textrm{ og }
                               s = \frac{-b + \sqrt{d}}{2a}.}})]

Vi ser altså, at der er 3 muligheder.

@eksempel{faktorisering, d>0}

Polynomiet @${2x^2 + 4x - 6} skal faktoriseres.

@nested[#:style 'inset
  (list
   @para{1.  @${a = 2}, @${b = 4}, @${c = -6}}
   @para{2.  @${d = b^2-4ac = 4^2 - 4\cdot 2\cdot (-6) = 16+48 = 64}}
   @para{3c. Da @${d=64>0} forsætter vi med udregne @${r} og @${s}:              
           @$${r = \frac{-b - \sqrt{d}}{2a} = \frac{-4-\sqrt{64}}{2\cdot 2} = \frac{-4-8}{4} = -3}            
           @$${s = \frac{-b + \sqrt{d}}{2a} = \frac{-4+\sqrt{64}}{2\cdot 2} = \frac{-4+8}{4} =  1}}
   @para{Faktor-formen er derfor:
         @$${a(x-r)(x-s) = 2(x-(-3))(x-1) = 2(x+3)(x-1)}})]
Konklusion: @${2x^2 + 4x - 6 = 2(x+3)(x-1)}

@eksempel{CAS - faktorisering}
I et CAS bruges kommandoen factor() til at faktorisere et udtryk.

@code{Input:  factor(2x^2 + 4x - 6)}

@code{Output:} @${2(x-1)(x+3)}

@eksempel{faktorisering, @${d=0}}
Polynomiet @${2x^2 + 4x + 2} skal faktoriseres.

@nested[#:style 'inset
  (list
   @para{1. @${a = 2}, @${b = 4}, @${c = 2}}
   @para{2. @${d = b^2 - 4ac = 4^2 - 4\cdot 2\cdot 2 = 0}}
   @para{3b. Da diskriminanten er nul, @${d=0}, udregnes r:
         @$${r = \frac{-b}{2a} = \frac{-4}{2\cdot 2} = -1}
         Faktorformen er:
         @$${a(x-r)^2 = 2(x-(-1))^2 = 2(x+1)^2}})]
Konklusion: @${2x^2 + 4x + 2  = 2(x+1)^2}

@eksempel{faktorisering, @${d<0}}
Polynomiet  @${2x^2 + 4x + 3} skal faktoriseres.
@nested[#:style 'inset
  (list 
   @para{1. @${a = 2, b = 4, c = 3}}
   @para{2. @${d = b^2 - 4ac = 4^2 - 4\cdot 2\cdot 3 = 16 - 24 = -8}}
   @para{3a. Da @${d=-8} er negativ, kan polynomiet ikke faktoriseres.})]

@section{Løsning af andengradsligninger}

@subsection{Andengradsligninger}

Ligninger, der kan omskrives til formen @${ax^2 + bx + c = 0}, 
hvor @${a}, @${b} og @${c} er tal, og @${a} ikke er nul, kaldes @def-index{andengradsligninger}.


@subsection{Standardmetoden}
@nested[#:style 'inset
  (list
   @para{1. Omskriv til standardformen @${ax^2 + bx + c = 0}}
   @para{2. Aflæs tallene @${a}, @${b} og @${c}.}
   @para{3. Udregn hjælpetallet @${d=b^2-4ac}}
   @para{4. Find fortegnet for diskriminanten @${d}.
                                              
             Hvis @${d} er @emph{positiv}, har ligningen @emph{to} løsninger.
             
             Hvis @${d} er @emph{nul},     har ligningen @emph{en} løsning.
             
             Hvis @${d} er @emph{negativ}, har ligningen @emph{nul} løsninger.}
   @para{5a. Hvis diskriminanten @${d} er positiv:

             De to løsninger er:
             @$${x_1 = \frac{-b - \sqrt{d}}{2a}}
             @$${x_2 = \frac{-b + \sqrt{d}}{2a}}}
   @para{5b. Hvis diskriminanten @${d} er nul:

        Løsningen er:
        @$${x = \frac{-b}{2a}}}
   @para{5c. Hvis diskriminanten er negativ:
         
         Der er ingen løsninger.})]


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
@${x_1\cdot x_2} være det samme som @${\frac{c}{a}}. I opgaven er @${\frac{c}{a} = \frac{2}{1} = 2},
så Georg ved, at han skal finde to tal som ganget sammen giver 2.

Der er to muligheder:
@aligned{ (-1)&\cdot (-2) &= 2 \\
            1 &\cdot   2  &= 2}

Nu kunne man afprøve første mulighed ved at sætte ind i ligningen, 
men Georg kan nemt udelukke den første mulighed. Han kender nemlig
en ting mere om løsningerne. Summen @${x_1+x_2} af løsningerne skal give @${\frac{-b}{a}}.
I denne opgave er @$${x_1+x_2 = \frac{-b}{a} = \frac{-(-3)}{1} = 3.}
Georg regner derfor summen ud:
    @aligned{ (-1)+(-2) &= -2 \\
                1 +  2  &=  3.}
Nu kan Georg se, at den rigtige mulighed er den sidste.

@subsection{Metoden}
For at gætte heltallige løsninger i en andengradsligningen kan 
følgende metode bruges:
@nested[#:style 'inset
    (list
     @para{1. Udregn hvad produktet @${x_1\cdot x_2} skal give:  @${\frac{c}{a}}}
     @para{2. Opskriv alle muligheder for @${x_1} og @${x_2}, så de ganget sammen giver @${\frac{c}{a}}.}
     @para{3. Udregn hvad summen @${x_1+x_2} skal give:     @${\frac{-b}{a}}}
     @para{4. Find den mulighed, hvor @${x_1+x_2} giver @${\frac{-b}{a}}})]

@eksempel{}
Andengradsligningen @${x^2 - 17x + 30 = 0} skal løses.

Først aflæses  @${a=1}, @${b=-17}, @${c=30}.
Da alle tallene er hele tal, er der en chance for at matematiklæreren 
har lavet en opgave med nemme løsninger. 

@nested[#:style 'inset
  (list
   @para{1. Udregning af produktet: @${\frac{c}{a} = 30/1 = 30}}
   @para{2. Muligheder:
         @aligned{ 1&\cdot30 &= 30\\
                   2&\cdot15 &= 30\\
          3&\cdot10    &= 30\\
          5&\cdot6     &= 30\\
       (-1)&\cdot(-30) &= 30\\
       (-2)&\cdot(-15) &= 30\\
       (-3)&\cdot(-10) &= 30\\
       (-5)&\cdot(-6)  &= 30}}
   @para{3. Udregning af summen: @${\frac{-b}{a} = \frac{-(-17)}{1} = 17}}
   @para{4. Summen udregnes for hver mulighed:
         @aligned{
          1&+30    &=  31\\
          2&+15    &=  17\\
          3&+10    &=  13\\
          5&+6     &=  11\\
       (-1)&+(-30) &= -31\\
       (-2)&+(-15) &= -17\\
       (-3)&+(-10) &= -13\\
       (-5)&+(-6)  &= -11}})]
Konklusion: Den rigtige muligheder @${x_1=2} og @${x_2=15}.
Når den rigtige mulighed er fundet, behøver man ikke udregne summen 
for de resterende muligheder. Der er altså ingen grund til at opskrive
de sidste 6 muligheder ovenfor.

@eksempel{}
Andengradsligningen @${2x^2 - 3x + 1 = 0} skal løses.
Tallene @${a=2}, @${b=-3} og @${c=1} aflæses.

@nested[#:style 'inset
  (list @para{1. Udregning af produktet: @${\frac{c}{a} = 1/2}})]

Produktet af de to løsninger skal give 1/2. 
Derfor kan løsningerne ikke begge være hele tal - og  derfor kan 
gættemetoden ikke bruges på denne ligning. I stedet for skal 
ligningen løses med standardmetoden (vha diskriminanten).


@eksempel{}

Andengradsligningen @${2x^2 - 5x + 2 = 0} skal løses.
Tallene @${a=2}, @${b=-5} og @${c=2} aflæses.

@nested[#:style 'inset
(list 
 @para{1. Udregning af produktet: @${\frac{c}{a} = \frac{2}{2} = 1}}
 @para{2. Muligheder:
       @aligned{   1&\cdot1    &= 1\\
                (-1)&\cdot(-1) &= 1}}
 @para{3. Udregning af summen: @${\frac{-b}{a} = \frac{-(-5)}{2} = \frac{5}{2}}})]

Da summen ikke er helt helt tal, kan gættemetoden ikke bruges til denne andengradsligning.


@subsection{Baggrund for metoden}
Lad @${ax^2 + bx + c = 0} være en andengradsligning med to løsninger @${x_1} og @${x_2}.
Da andengradsligningen har to løsninger, er diskriminanten @${d} positiv og
     @$${x_1 = \frac{-b-\sqrt{d}}{2a}}
     @$${x_2 = \frac{-b + \sqrt{d} }{2a}}

Produktet af de to løsninger er:
@aligned{
   x_1 \cdot x_2 
   &= \frac{-b-\sqrt{d}}{2a}\cdot\frac{-b + \sqrt{d}}{2a}  & \textrm{ indsæt } x_1 \textrm{ og } x_2\\
   &= \frac{(-b-\sqrt{d})\cdot(-b+\sqrt{d})}{2a\cdot 2a}   & \textrm{ produkt af brøker } \\
   &= \frac{(-b)^2 - \sqrt{d}^2}{4a^2}                     & \textrm{ 3. kvadratsætning} \\
   &                                                       &  (x-y)(x+y) = x^2-y^2 \\
   &= \frac{b^2 - d}{4a^2}                                 &  \sqrt{x}^2 = x \\
   &= \frac{b^2 - (b^2 - 4ac)}{4a^2}                       & \textrm{ indsæt } d=b^2 -4ac \\
   &= \frac{b^2 -  b^2 + 4ac}{4a^2}                        & \textrm{ ophæv minusparentes }\\
   &= \frac{4ac}{4a\cdot a}                                & \textrm{ reducer}\\
   &= \frac{c}{a}                                          & \textrm{ forkort brøk med }4a\\
}
Summen af de to løsninger er:
@aligned{
   x_1 + x_2 
   &= \frac{-b-\sqrt{d}}{2a} + \frac{-b+\sqrt{d}}{2a}      & \textrm{ indsæt } x_1 \textrm{ og } x_2\\
   &= \frac{-b-\sqrt{d} + -b + \sqrt{d} }{2a}              & \textrm{sum af brøker}\\
   &= \frac{-2b}{2a}                                       & -b-b = -2b \textrm{ og }-x+x=0\\
   &= \frac{-b}{a}                                         & \textrm{ forkort brøk med 2}\\
}
@oevelse{Teoretisk}
Kan gættemetoden bruges på en andengradsligning med en diskriminant på nul?
(Tip: Lav en andengradsligning med diskriminant 0 og forsøg at løse den vha gættemetoden)

@void{
Anvendelser: 
  - Ligningsløsning vha nul-regel
  - http://math.stackexchange.com/questions/83837/what-is-a-real-world-application-of-polynomial-factoring
}


@(index-section)
