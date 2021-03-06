#lang mathbook
@(current-language danish-language)

@title{Eksamensopgaver HF B December 2009}
@author{Jens Axel Søgaard, 2015}


@section{Uden Hjælpemidler}

@subsection{Opgave 1}

a) Udtrykket @${3b - 4a - (2b + a)} skal reduceres.


   Minusparentesen hæves ved at ændre fortegn i hvert led:
@aligned{3b - 4a - (2b + a) &= 3b - 4a - 2b - a \\
                            &= -5a + b}

    Konklusion: @$${3b - 4a - (2b + a) = -5a + b}

b) Udtrykket @${(2x+3)^2 + 6(1-2x)} skal reduceres.
   Udregningen deles op i to mellemregninger.
   Første led udregnes:
       @$${(2x+3)^2  = (2x+3)\cdot (2x+3) = 2x\cdot 2x +2x\cdot 3 + 3\cdot 2x +3\cdot 3 = 4x^2 + 12x + 9}
   Man kunne også bruge første kvadratsætning i udregningen:
       @$${(2x+3)^2 = (2x)^2 + 3^2 + 2\cdot 2x\cdot 3 = 4x^2 + 9 + 12x}

   Andet led udregnes:
       @$${6(1-2x) = 6\cdot 1 - 6\cdot 2x = 6-12x}

   Det oprindelige udtryk reduceres ved at bruge de to mellemregninger:
       @aligned{(2x+3)^2 + 6(1-2x) &= 4x^2 + 12x + 9 + 6 - 12x \\
                                   &= 4x^2 + 15}

   Konklusion: @$${(2x+3)^2 + 6(1-2x) = 4x^2 + 15}

@subsection{Opgave 2}
 Funktionerne  @${f(x) = x^3 + 4x}  og  @${g(x) = e^x} er givne.

a)  @aligned{f'(x) &= (x^3 + 4x)' = (x^3)' + (4x)' = 3x^2 + 4\cdot 1 = 3x^2 + 4 \\
             g'(x) &= (e^x)' = e^x}

@subsection{Opgave 3}

 Om en lineær funktion @${y = ax+b} oplyses det, at grafen går gennem punktet @${(1,5)},
 og at @${y}-værdien vokser med 6, når @${x}-værdien øges med 2.

 a) Tallene @${a} og @${b} bestemmes.

    Grafen går gennem punktet @${(1,5)}. 
    Når @${x}-værdien øges med 2, vokser @${y} med 6.
    Derfor går grafen også gennem punktet @${(1+2, 5+6) = (3,11)}.
 
    Nu kendes to punkter, så to-punktsformlen for en linje kan bruges.

    @aligned{a &= \frac{y_2 - y_1}{x_2 - x_1} = \frac{11-5}{3-1} = \frac{6}{2} = 3 \\
             b &= y_1 - a\cdot x_1 = 5 - 3\cdot 1 = 2}

    Konklusion: @${a = 3} og @${b=2}

    Alternativ løsningsmetode:

    Sammenhængen mellem en @${x}-tilvækst @${Δx} og en @${y}-tilvækst @${Δy} er  

          @$${a \cdot  Δx = Δy    \text{ dvs } a = Δy/Δx }

    Der oplyses i opgaven at @${Δx=2} hører sammen med @${Δy=6}, så

          @$${a = Δy / Δx = 6/2 = 3}

    Tallet @${b} kan udregnes på samme måde som før.

@subsection{Opgave 4}

a) Det ubestemte integral @${\int(2x+6x^2)dx} skal bestemmes.
   @aligned{x^2                  &\text{ er stamfunktion til } 2x \\
            6\cdot 1/3x^3 = 2x^3 &\text{ er stamfunktion til } 6x^2}
   Derfor er
       @${x^2 + 2x^3} en stamfunktion til @${2x+6x^2}

   Konklusion: @${\int (2x+6x^2) dx = x^2 + 2x^3}

@subsection{Opgave 5}

Figuren viser en graf for @${f}. Grafen går gennem punktet @${(6,7)}.

       @image["figur-opg5.png"]

a) Hvilken af følgende tre muligheder kan være den rigtige?
   @nested[#:style 'inset
   (list
    @aligned{\text{1) } &f'(6) &=  7 \\
             \text{2) } &f'(6) &=  0 \\
             \text{3) } &f'(6) &= -4 })]

   Udtrykket @${f'(6)} er hældningen for den tangent til grafen, der går gennem @${(6,f(6))}.
   Det er oplyst, at grafen går gennem punktet @${(6,7)}.
   Med lineal tegnes en tangent på grafen gennem @${(6,7)}.
   Det ses at hældningen på den indtegnede tangent er negativ.
   Derfor er 3) @${f'(6) = -4} den rigtige mulighed.

@section{Med Hjælpemidler}

@subsection{Opgave 6}

Tabellen viser sammenhængen mellem mængden af stabilgrus og den samlede pris inklusiv kørskel.
@verbatim{
    Stabilgrus (m^3)      4     6     8    10    12    14
    Pris (kr)          2275  2788  3300  3813  4325  4838
    }

Det oplyses, at sammenhængen mellem prisen og mængden af stabilgrus med god tilnærmelse
kan beskrives ved:
                    @$${y = ax + b}
hvor @${x} er mængden af stabilgrus (@${m^3}) og @${y} er den samlede pris (kr).

a) Bestem tallene @${a} og @${b}

    Der er 6 datapunkter i tabellen. For at udregne tallene @${a} og @${b} benyttes lineær regression.
    Tallene indtastes i regneark i NSpire, og statistikværktøjet lineær regression anvendes.
    Resultatet ses her:

       @image["figur-opg6.png"]

    Konklusion: @${a = 256.271}  og  @${b = 1250.06}

b) Hvad fortæller tallet @${a} om prisen for stabilgrus?

   I en lineær udvikling angiver @${a} hvor meget @${y} (her prisen) vokser 
   når @${x} (her mængden) øges med 1 (@${m^3}).
   I denne opgaver fortæller tallet @${a = 256.271} kr pr @${m^3} at prisen 
   for en kubikmeter stabilgrus er 256.271 uden kørsel.

Hos en anden vognmand koster stabilgrus 300 kr pr. @${m^3}. Desusen skal man betale 750 kr for kørsel.

c) Hvor mange @${m^3} grus skal man købe før den første vognmand er billigst?

   Prisen hos den anden vognmand kan beskrives ved:

       @$${y = 300 x + 750}
   
   De to vognmænd er lige dyre, når 

      @$${256.271 x + 1250.06 = 300 x + 750}

   Ligningen løses i NSpire:

      @$${solve(256.271 x + 1250.06 = 300 x + 750, x)}
      @$${x = 11.4354}

   Konklusion: Når der købes mere end 11.44 @${m^3} grus, er den første vognmand billigst.


@subsection{Opgave 7}

En funktion @${f} er bestemt ved @${f(x) = -x^3 + 4x^2 + 1}.

a) Bestem integralet @${\int_0^3f(x)dx}, og giv en fortolkning af resultatet.

   Integralet bestemmes vha. NSpire.
   Først defineres funktionen:

          @$${f(x) := -x^3 + 4x^2 +1}

   Dernæst indtastes:

   @verbatim{
       Input:  @${\int_0^3}(f(x))dx
       Output: 75/4}

   For at fortolke resultatet tegnes grafen for i intervallet [0,3].

   Det ses at grafen for f ligger over @${x}-aksen i hele intervallet.
   Derfor er 75/4=18.75 arealet for området mellem grafen for @${f} og @${x}-aksen i intervallet [0,3].

 @subsection{Opgave 8}
     
    @image["figur-opg8.png"]

 a) Bestem @${|AC|} og @${|AF|}

    På figur 2 ses, at @${AC} er katete i den retvinklede trekant @${ACB} hvor @${C=90^\circ}.
    På figuren ses, at @${|AB| = 79}m og at vinkel @${A = 50^\circ}.

    Med udgangspunkt i vinkel @${A} ved vi at:

        @$${A=50^\circ , \text{ hos } = |AC|  , \text{ hyp } = 79}

    I en retvinklet trekant gælder:

    @aligned{\text{hos} &= \text{hyp} \cdot \cos( \text{vinkel} ) \\
                   |AC| &= 79  \cdot \cos ( 50^\circ ) \\
                   |AC| & ≈ 50.7802 }

    Siden @${|AF|} kan deles op ved @${C}. Derfor er:

        @$${|AF| = |AC| + |CF|}

    Vi har lige udregnet @${AC}, så:

        @$${|AF| = 50.7802 + |CF|}

    Siden @${|CF| = |BE|}, så vi udregner @${|BE|} i stedet for.
    Trekant @${BED} er retvinklet. Med udgangspunkt i vinkel @${B} kan vi bruge:
    @aligned{ \text{hos}  &= \text{hyp} \cdot \cos( \text{vinkel} ) \\
                     |BE| &= 17  \cdot \cos( 15^\circ ) \\ 
                     |BE| &≈ 16.4207}

    Det vil sige:

        @$${|AF| ≈ 50.7802 + |CF| ≈ 50.7802 + 16.4207 = 67.2009}

    Konklusion: Siden @${AC} er 50.8m og siden @${AF} er 67.2 meter.

b) Bestem @${|AD|}

   Siden @${AD} er den ene side i trekant @${ABD}.

   I trekant @${ABD} kendes @${|AB| = 79} og @${BD = 17}.
   For at udregne @${AD} regnes vinkel @${B} ud først.
   @aligned{\angle B &= \angle ABD &= \angle ABC + \angle CBD + \angle EBD  \\
               &=  40^\circ +  90^\circ +  15^\circ \\
               &=  145^\circ}

   Nu kendes to sider og en vinkel i trekant @${ABD}.
   Derfor bruges cosinusrelationen til at udregne den sidste side:
   @aligned{
     |AD|^2 &= |AB|^2 + |BD|^2 - 2 |AB| |BD| \cos(B) \\
     |AD|^2 &= 79^2   + 17^2   - 2 \cdot  79 \cdot  17 \cdot \cos(145^\circ) \\
     |AD|^2 &= 8730.24 \\
     |AD|   &= \sqrt{8730.24} \\
     |AD|   &= 93.4358 }

   Konklusion: Siden @${AD} er 93.4 meter.


@subsection{Opgave 9}

I 1968 blev der fanget 4000 tons ål i Danmark.
Efter 1968 er fangsten af ål med god tilnærmelse faldet med 5.2% pr år.

a) Opstil en model, der beskriver fangsten af ål som funktion af antal år efter 1968.

   Jeg bruger disse betegnelser:
   @aligned{
       x &= \text{antal år efter 1968}\\
       y &= \text{antal tons fanget }x\text{ år efter 1968}}

   Man får at vide, at fangsten (@${y}) aftager med en fast procent,
   når @${x} forøges med 1. Derfor er @${y} en eksponentielt aftagende udvikling.

       @$${y = b \cdot  a^x}

   Man får at vide, at når @${x=0}, så er @${y=4000}. Derfor er @${b=4000}.

       @$${y = 4000 \cdot  a^x}

   Fremskrivningsfaktoren @${a} er 1 større end vækstraten.

       @$${a = 1 + r}

   Vækstraten @${r} er -5.2% for fangsten falder.

       @$${a = 1 + (-5.2\%) = 1-0.052 = 0.948}

   Konklusion: En model, der beskriver fangsten som en funktion af antal år efter 1968

                   @$${y = 4000 \cdot  0.948^x,}

                hvor @${x} = antal år efter 1968
                og   @${y} = fangsten i tons.

b) Hvor mange procent aftager fangsten i en 5 års periode?

   Fremskrivningsfaktoren som hører til en 5 års-periode er:

        @$${F = 0.948^5 = 0.76567}

    Den tilhørende vækstrate er:

        @$${r = F - 1 = 0.76567 - 1 = -0.23433 = -23.433%}

    I en 5 års-periode er der derfor et fald på 23.4%.


@subsection{Opgave 10}

En funktion @${f} er bestemt ved 

    @$${f(x) = 6 \sqrt{x} - 2x , x>0}

a) Bestem @${f'(x)}


   NSpire benyttes til at differentiere @${f}.
   Først defineres funktionen:

       @$${f(x) := 6 \sqrt{x} - 2x}

   Dernæst differentieres den:

      @$${\frac{d}{dx}(f(x)) = \frac{3}{\sqrt{x}} -2}
   
   Konklusion: @${f'(x) = \frac{3}{\sqrt{x}} -2}

b) Benyt differentialregning til at argumentere for grafens forløb.

   Funktionens monotoniintervaller bestemmes vha NSpire.
   Først defineres @${f'(x)}.

        @$${fm(x) := \frac{3}{\sqrt{x}} -2}

   Så undersøges det, hvor @${f'(x)} er positiv, nul og negativ:
   @verbatim{
        Input:  solve( fm(x)>0, x)
        Output: 0<x<9/4

        Input: solve( fm(x)=0, x)
        Output: x=9/4

        Input: solve( fm(x)<0, x)
        Output: x>9/4}
   
   Heraf ses, at grafen for @${f} er voksende i intervallet @${]0,9/4]}
           og at grafen for @${f} er aftagende i intervallet @${[9/4,∞[}
   Det betyder, at funktionen har et maksimum ved @${x=9/4}.
   Maksimumsværdien er @${f(9/4) = 9/2}

   Kontrol: Grafen tegnes på NSpire og maksimumspunktet sættes på.


@subsection{Opgave 11}

Rumfanget af en diskokugle kan med god tilnærmelse bestemmes vha. formlen

  @$${y = 0.52 x^3,}

hvor @${x} er diskokuglens diameter (cm), og @${y} er dens rumfang (@${cm^3}).

Bemærk at @${y} som funktion af @${x} er en potensudvikling.

a) Bestem diameteren af en diskokugle med rumfanget 6000 @${cm^3}.

   At rumfanget er 6000 @${cm^3} betyder at @${y=6000}. 
   Vi skal bestemme diameteren (@${x}).

   Ligningen  @${6000 = 0.52 x^3} løses vha NSpire:
   @verbatim{
       Input:  solve(6000 = 0.52 x^3, x)
       Output: x = 22.5969}

   Konklusion: En diskokugle med et rumfang på 6000 @${cm^3} har en diameter på 22.6cm.


En stor diskokugle har en diameter, der er 23% større end diameteren på en
lille diskokugle.

b) Hvor mange procent er rumfanget af den store diskokugle større end 
   rumfanget af den lille diskokugle?

   Sammenhængen mellem vækstraten for @${x} og @${y} er ved en potensudvikling:

      @$${1 + r_y = (1+r_x)^a}

   Det vides at vækstraten for diameteren @${x} er 23%, så

      @$${1 + r_y = (1+0.23)^3}

   Denne ligning løses på NSpire:
   @verbatim{
   Input:  solve(1 + r_y = (1+0.23)^3, r_y)
   Output: r_y=0.860867}

   Konklusion: Den store diskokugle har et rumfang, der er 86% større end den lille.

@subsection{Opgave 12b}

En funktion @${f} er givet ved  @${f(x) = x^2 - 5x + 4}.

a) Bestem en ligning for tangenten @${t} til grafen for @${f} i punktet @${P(3, f(3))}.

   Der er to måder at regne opgaven på.

   @subsubsection{Første måde (ved NSpire)}

   Funktionen i NSpire:

       @$${f(x) := x^2 - 5x + 4}

   Grafen tegnes.

   Der sættes et punkt på grafen med @${x=3}.
   Dernæst sættes en tangent på og dens ligning vises.

   Indsæt graf med tangent.

   Konklusion: Tangentens ligning er: @${y=x-4}.


   @subsubsection{Anden måde (ved beregning)}

   Funktionen i NSpire:

       @verbatim{f(x) := x^2 - 5x + 4}

   Denæst udregnes punktets @${y}-værdi:
   @verbatim{
      Input:  f(3) 
      Output: -2}

   Vi ved nu, at tangentens røringspunkt er @${(3,-2)}.

   Nu differentieres funktionen:

      @verbatim{fm(x) := @${\frac{d}{dx}} (f(x))}

   Tangentens hældning udregnes:
   @verbatim{
      Input: fm(3)
      Output: 1}

   Tangenten er en linje, der går gennem @${(3,-2)} og har hældningen 1.
   @aligned{
       y &= a(x - x0) + y0 \\

       y &= 1(x - 2)  + (-2)\\

       y &= x -2 -2\\

       y &= x - 4}

    Kontrol: Tegn graf i NSpire og sæt tangenten på.

b) Gør rede for at @${t} også er tangent til grafen for @${g(x) = -2x^2 + 13x - 23}.

   Tegn grafen for @${g}.
   Tegn tangent @${y = x-4}.
   Find deres skæringspunkt.

   Udregn @${g'(x_{\text{skæring}})}.
