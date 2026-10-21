# Routing & Lademechanik

In VoltFracht navigieren deine elektrischen LKWs europäische Straßennetze
autonom, sobald sie entsandt werden. Erfolgreiches Logistik-Dispatching basiert
darauf, wie Ladezustand (SoC), Topografie, Wetter und Ladesäulenverfügbarkeit
entlang der Route interagieren.

---

## 1. Autonomes Routenplanung & OSRM

VoltFracht nutzt einen selbstgehosteten Open-Source-Routing-Server (OSRM),
um reale LKW-Pfade über 33 europäische Nationen zu berechnen.

* **Kurvengenaue Navigation**: LKWs folgen der realen Straßengeometrie und
  nicht Luftlinienentfernungen.
* **Live-Verkehrsverzögerungen**: Echtzeit-Verkehrsfeeds von HERE Technologies
  passen die geschätzten Fahrtdauern an und führen Stauverzögerungen ein.
* **Automatische Stopauswahl**: Die Routing-Engine berechnet den Energiebedarf
  und platziert zwingende Ladestopps, bevor die Batterie des Fahrzeugs erschöpft
  ist.

---

## 2. Batterieladezustand & Energiephysik

Die effektive Fahrreichweite eines Fahrzeugs wird dynamisch basierend auf
drei Kerneinflussfaktoren berechnet:

| Faktor | Primärer Antrieb | Auswirkung im Spiel |
| :--- | :--- | :--- |
| **Nutzlastgewicht** | Tonnageklasse (7,5 t–44 t) | Schwere Fracht erhöht den Energieverbrauch pro Kilometer. |
| **SRTM-Topografie** | Bergpass-Höhendaten | Bergauffahrten entleeren die Batterie schnell; Bergabfahrten ermöglichen Energierückgewinnung. |
| **Wetterzyklus** | Tägliche Temperaturschwankungen | Extreme Kälte oder Hitze erhöhen den Batterie-Innenwiderstand und den HVAC-Stromverbrauch. |

### Berg-Höhen (SRTM)

Unter Verwendung von NASA Shuttle Radar Topography Mission-Höhenmodellen
verbraucht das Fahren über Bergpässe wie die Alpen oder Pyrenäen bis zum
Doppelten der normalen kWh pro Kilometer bei Steigungen. Umgekehrt lösen
steile Gefälle die Rekuperationsbremse aus und speisen Elektrizität zurück
in den Akku.

### Temperatur & HVAC-Auswirkung

Die interne Wetter-Engine simuliert reale tägliche europäische Temperaturzyklen.
Niedrige Umgebungstemperaturen verringern die chemische Batterieeffizienz und
erfordern Batterie-Vorwärmung, während heiße Sommertage hohen Kühlbedarf
auslösen. Beide Extreme verkürzen die maximale Reichweite des Fahrzeugs
zwischen den Ladungen.

---

## 3. Ladeinfrastruktur & OpenChargeMap

VoltFracht kartiert über 12'000 reale europäische Ladestandorte und 58'000
Ladepunkte mit OpenChargeMap-Infrastrukturdaten.

### Ladeleistung & -geschwindigkeiten

Ladestationen bieten unterschiedliche maximale Leistungsabgaben von bis zu
600 kW. Eine höhere Kilowatt-Leistung verkürzt die Zeit, die dein LKW an einer
Ladestation steht, deutlich.

### Live-Steckerstatus & Warteschlangen

Jeder Ladestandort verfolgt die Echtzeit-Steckerbelegung:

* **Freie Stecker**: Der LKW schaltet sich sofort an und beginnt mit dem Laden.
* **Belegte Stecker**: Wenn alle Stecker bei Ankunft belegt sind, tritt der LKW
  in eine Warteschlange mit einem Live-Countdown-Timer ein, bis ein Ladeplatz
  frei wird.

### ENTSO-E-Stromkosten

Die Ladekosten werden dynamisch basierend auf den täglichen Spotmarkt-
Strompreisen von ENTSO-E berechnet. Das Laden in Ländern mit hohen
Spotpreisen erhöht die Betriebskosten direkt und verringert die Gewinnmargen.

---

## 4. Sparmodus (Karte aus / Akku-Sparmodus)

Um die Geräteleistung und den Akkuverbrauch während langer Spielsitzungen
zu optimieren, verfügt VoltFracht über den **Sparmodus**.

* **Kartendeaktivierung**: Das Umschalten in den Sparmodus schaltet die
  intensivere 3D-Kartenrendering aus vs. Karte an.
* **Client-Leistung**: Reduziert die GPU-/CPU-Auslastung und den Akkuverbrauch
  auf Mobilgeräten und Webbrowsern deutlich.
* **Hintergrundsimulation**: LKWs fahren weiter, laden und verdienen Einnahmen
  mit voller Präzision, während der Sparmodus aktiv ist.
