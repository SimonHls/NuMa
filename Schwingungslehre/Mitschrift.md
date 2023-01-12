# 1. Einführung

## **1.1 Arbeitsgebiete der Maschinendynamik**

Die Maschinendynamik behandelt die Bewegungen und Beanspruchungen von Maschinen oder Maschinenteilen infolge zeitabhängiger mechanischer Belastungen. Oft sind das sich zeitlich periodisch wiederholende Vorgänge, manchmal auch zufällige Vorgänge. Bei letzterem ist nur eine statistische Beschreiibung möglich.

![Betrachtung von Kräften in der Statik und in der Schwingungslehre](G/GF1.jpeg)

**=> Die zeitabhängigen Vorgänge werden als Schwingungen bezeichnet.**  
Diese können in fast allen Maschinen auftreten. Die Bewertung dieser Problemstellungen erfordert ein Grundverständnis der wesentlichen Phänomene, z.B. Eigenfrequenzen, Resonanzen, usw. sowie einen Überblick über Methoden der Modellierung, Bezeichnung und Simulation (analytisch und numerisch).  
Die Aufgaben der Maschinendynamik umfassen u.a. die Gestaltung von Maschinen in der Art, dass:

- unerwünscht Schwingungen klein bleiben
- erwünschte Schwingungen die geforderten Eigenschaften haben
- nicht vermeidbare Schwingungen nicht zu Schäden führen

Ferner umfassen die Aufgaben die Überwachung, Schadensfrüherkennung und Schadensdiagnose.

**Beispiele für erwünschte Schwingungen:**

- Siebanlage
- Rüttelförderer
- Rüttelplatte

Für den Entwickler ist es hilfreich, Maschinendynamische Untersuchungen möglichst früh im Enwicklungsprozess durchzuführen, da sich zu diesem Zeitpunkt das Schwingungsverhalten konstruktiv noch kostengünstig optimieren öässt.

Mit steigeneder Arbeitsgeschwindigkeit und höherer Materialausnutzung (Leichtbau) nimmt die Schwingungsanfälligkeit von Maschinen zu.

Moderne Maschinen besitzen oft Regelungen oder Steuerungen, die dafür sorgen, dass gewünschte Betriebszustände erreicht und aufrecht erhalten werden. Das Verhalten wird dabei in hohem Maße durch die nichtmechanischen Komponenten bestimmt, z.B. Industrieroboter, Verkehrsflugzeug, usw.

## **1.2 Ursachen für Schwingungen am Beispiel Kraftfahrzeug**

Die Ursachen für Schwingungen sind vielfältig, oft kann es schwer sein, überhaupt den Grund herauszufinden.

### **Antriebsstrang**

- Motor: Verbrennungsvorgänge
- Getriebe
- Antriebswellen (rotierende Teile)

### **Äußere Einflüsse**

- Kopfsteinpflaster, Bodenwellen, ...
- aufwendige Musikausstattung
- Füllstand z.B. im Tank
- Windeinflüsst, z.B. offenes Fenster
- aktive Fahrwerke
- dünnwandige Abdeckungen, Motorhauben
- Windkräfte, Seitenwind
- Beladungszustand, Anhänger
- ABS
- Unfall

## **1.3 Mechanische Schwingungen**

=> Schwingungen sind Vorgänge bei denen sich physikalische Größen zeitabhängig ändern.  
Jedes mechansiche System, dass eine stabile Gleichgewichtslage besitzt, ist ein schwingungsfähiges System. Die Gleichgewischtslage heißt stabil, wenn bei einer Störung des Gleichgewichts Kräfte geweckt werden, die das System in seine Gleichgewichtslage zurücktreiben.

![Pendel in Ruhelage und Gleichgewichtslage](G/GF2.jpeg)

Bei realen Systemen erfolgt der Austausch von potentieller und kinetischer Energie nicht verlustfrei. *=> z.B. Wärmeenergie, die dabei enststeht*.

![Gedämpfte und angefachte Schwingung](G/GF3.jpeg)

Die Abnahme der Schwingungsenergie einer freien Schwingung (Energiedissipation) wird als Dämpfung bezeichnet, der umgekehrte Fall(Energie für Schwingungen wird zugeführt) als angefachte Schwingung.  
Die Stabile Gleichgewichtslage muss nicht unbedingt eine statische Ruhelage des Systems sein. Es kann sich auch um eine stationäre Bewegung mit einem ausgeglichenen Kräfte- bzw. Momentenhaushalt handeln.

## **1.4 Verfahren zur Lösung Maschinendynamischer Aufgaben**

>**Vorüberlegung:** Verfahren und damit einhergehender Aufwand in abhängigkeit von Problemstellung wählen, z.B.:
>
>- Vordimensionierung
>- Protoyp / Kleinserie
>- Serienbauteil

Früher wurden in der Regel Zeit- und Kostenaufwendige Prototypentests durchgeführt, die seit einiegen Jahren zunehmend von modernen Berechnungs- und Simulationsmethoden abgelöst wurden.

### **Rechnerische Verfahren (numerische / analytische Verfahren)**

|Vorteile|Nachteile|
| --- | --- |
|Schnell viele Varianten analysierbar|viele Annahmen zur Modellbildung, die mitunter zu Abweichungen zwischen Theorie und Praxis führen|
|günstiger und unabhägiger z.B. von experimentellen Ressourcen||
|kein reales Modell nötig||
|erweiterte Anlysemöglichkeiten, um z.B. Zusamenhänge erkennen zu können.||
|

Anwendung:

- Vorrausberechnung oder Optimierung
- Parameterstudien
- Auslegung und Sicherhetsnachweise
- Schadensdiagnose

### **Messtechnische Verfahren (reale Struktur, physikalische Modelle)**

|Vorteile|Nachteile|
|---|---|
|Alle wesentlichen Einflüsse können erfasst werden|Reale Struktur oder physikalisches Modell muss verfügbr sein|
|genaue Ergebnisse bis auf Messfehler|Parametereinflüsse oft schwierig erkennbar|
||nur direkt messbare Antwortgrößen erfassbar|
|

Anwendung:

- Schwingungsüberwachung
- Schadensfrüherkennung / -diagnose
- Verifikation rechnerischer Ergebnisse
- Feinabstimmung

### **Hybride Verfahren (Berechnung + Messung)**

Ziel ist die Eliminierung der spezifischen Nachteile von Berechnung (insbesondere Modellbildung) bzw. Messung (Messfehler).

Anwendung:

- Parameteridentifikation
- Schadensfrüherkennung / -diagnose
- Qualitätskontolle
- HIL-Anwendungen *(Hardware-in-the-loop)*

## **1.5 Grundsätzliche Vorgehensweisen ("Kochrezept")**

Allgemein:

1. Modellbildung z.B. auf Basis der Konstruktionsunterlagen
2. Lösung des Modells mithilfe verschiedener Methoden, z.B. ei einfachen Problemen per Hand, bei mittleren mittels MatLab und bei komplexeren (mit vielen freiheitsgraden) mittels FEM
3. Rückübersetzung und Interpretation der Ergebnisse (z.B. Kontrolle der Modellbildung/-ergebnisse, Korrektur des Modells)

Konkret:

1. Bewegungsgrößen und Koordinaten einführen
2. Positiv auslenken und freischneiden, alle Kräfte und Momente eintragen (auch z.B. Lagerreaktionen)
3. Gleichgewichtsbedingungen (vgl. TM-Statik)
4. Zusätzliche Gleichungen aufschreiben, z.B.:
   - kinematische Beziehungen
   - Reibgesetz $F_r = \mu *F_n$
   - Hook'sches Gesetz
5. Gleichungssystem lösen
6. Lösung deuten

Beispiel:

![Beispiel Auslenkung](G/GF4.jpeg)

## **2. Modellbildung**

### **2.1 Grundbegriffe**

Zur Beschreibung von SChwingungen werden Ersatzsysteme (Modelle) verwendet, die vereinfachungen und Idealisierungen der Wirklichkeit enthalten. Die Modelle sollen alles wesentlichenEigenschaften der realen Struktur im Hinblick auf die untersuchte Fragestellung enthalten, d.h. ein System kann je nach Fragestellung durch unterschiedliche Ersatzsysteme beschrieben werden.

Beispiel: Sattelit

![Beispiel Sattelit](G/GF5.jpeg)

Modelle bestehen aus einzelnen, berechenbaren Elementen, die durch (System-)parameter (Abmessungen, Steifigkeit, Masse, ...) gekennzeichnet sind.

Der Zustand wird durch Zustandsgrößen (Geschwindigkeit, Druck, Verschiebung beschrieben. Durch Anwendung physikalischer Gesetzmäßigkeiten ergeben sich die Zusammenhänge, nach denen sich die Zustandsgrößen ändern.

### **2.2 Vorgehen bei der Modellierung**

![Vorgehen bei der Modellierung](G/GF6.jpeg)

### **2.3 Typen von Ersatzmodellen**

- kontinuierliche Ersatzmodelle => typischerweise FEM-Modelle  
  - Bspw. Fahrzeugkarosserie
- Nicht-parametrische Ersatzmodelle
  - =>Bescheibung auf Basis der Beziehung von Eingangs- und Ausgangsgrößen eines technischen Systems

![Blackbox-Prinzip](G/GF7.jpeg)

- Diskrete Erstazmodelle
  - Die diskreten Ersatzmodelle der MD haben häufig die Form von gewöhnlichen Differentialgleichungen. Man erhält sie, wenn man die mechanischen Eigenschaften Masse, Nachiebigkeit und Dämpfung (gedanklich) trennt und durch
    - Starre, massenbehaftete Elemente (Massenpunkt, Starrkörper
    - nachgiebige, masselose Elemente (Federn)
    - energiezerstreuende Elemente (Dämpfer) idealisiert  
**=> Diskrete Modelle**

![Beispielsystem PKW-Fahrwerk](G/GF8.jpeg)
*Beispiel für ein Diskretes Modell*

### **2.4 Elemente diskreter Ersatzmodelle**

Feder

- Erzeugt eine rücktreibende Kraft und setzt einer Auslenkung einen Widerstand entgegen
- Träger einer potentiellen Energie
- Kraftgesetz typischerweise linear angenommen: $F_c = -c*x$
- Analog bei Drehbewegungen: $M = -C_\theta*\theta$

![Federauslenkung](G/GF9.jpeg)

![Arten von Federkraftverläufen](G/GF10.jpeg)

Feder als masselose Ersatzmodelle kontinuierlicher Systeme.

![Federn vs Balken](G/GF11.jpeg)

$$F_c = c*x$$

![Federn vs Balken vertikale Belastung](G/GF12.jpeg)

Weitere Beispiele:

- Balken mit Pinktlast, I, L, E => $\frac{3*E*I}{L^3}$
- Torsionsstab mit kreisförmigem Querschnitt, $I_p$, L, G => $C_p=\frac{G*I_p}{L}$

#### **Dämpfer**

- Hemmt Schwingungen und setzt Bewegung einen Widerstand entgegen
- Er wandelt Energie in Wäre um
- Verschiedene Kraftgesetze / Werkstoffmodelle

![Viskose Dämpfung](G/GF13.jpeg)

=> Die viskose Dämpfung tritt auf beim Gleiten auf geschmierten Kontaktflächen, Bewegungen in zäher Flüssigkeit bei laminarer Strömung oder bei viskoelastischem Materialverhalten.  
=> Coulomb'sche Reibung: $F_R = -\mu*F_N$

- Basiert auf Reubung in den Kontaktflächen
- Stärke ist unabhängig von der Geschwindigkeit
- wirkt entgegengesetzt zur Bewegungsrichtung

![Dämpfung Abbildung](G/GF14.jpeg)

Nur bei Gleiten auf trockenen Kontaktflächen.

=> Luftwiderstands-Dämpfung $F=C_W*\frac{\rho}{2}*A*x^2$ mit $c_w$:Luftwiderstands-beiwert, $A$: Projektionsfläche

#### **Masse**

- Größe mit Trägheit, setzt der Beschleunigung eien Widerstand entgegen
- Träger kinetischer Energie
- Zusammenfassung aller relevanten Massen ein einem oder mehrere Punkten
- Bei Drehbewegungen Trägheitsmoment $J$

#### **Beispiele für einfache schwingende Systeme**

![Beispiel gedämpfte / ungedämpfte Schwingung](G/GF15.jpeg)
