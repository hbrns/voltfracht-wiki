# Echtwelt-Datenintegrations-Engine

VoltFracht unterscheidet sich von traditionellen Transportsimulationen
durch den Ersatz künstlicher Spielkarten und zufälliger Variablen durch
**authentische europäische geografische, infrastrukturelle und wirtschaftliche
Datenströme**. Die Simulation greift direkt auf branchenstandardmäßige APIs
und geografische Datensätze zu, um die genaue physische und wirtschaftliche
Umgebung des schweren elektrischen Güterverkehrs zu modellieren.

---

## 🌐 Übersicht über integrierte Datenquellen

Jede Dispatching-Entscheidung, jede Batterieverbrauchsberechnung, jede
Ladekosten- und Transitzeit wird durch fünf Kern-Echtwelt-Datenfeeds gesteuert:

| Datenebene | Primäre Datenquelle | Umfang & Abdeckung | Auswirkung im Spiel |
| :--- | :--- | :--- | :--- |
| **Ladeinfrastruktur** | **OpenChargeMap** | 12'481+ Standorte / 58'598+ Stecker in 109 Städten in 33 Ländern | Bestimmt Lade Stationskoordinaten, Steckerleistungen (bis zu 600 kW), Live-Steckerbelegung und Warteschlangen-Timer. |
| **Energiemarktpreise** | **ENTSO-E** | Tägliche Spotmarktpreise über europäische Gebotszonen | Legt dynamische Stromkosten pro kWh für jedes Land fest, beeinflusst direkt die Reise-Gewinnmargen. |
| **Straßennetz-Routing** | **OSRM-Server** | Eigengehosteter Open-Source-Routing-Server für 33 Nationen | Berechnet exakte Straßendistanzen, Autobahnrouten und Grenzüberschreitungen für schwere Elektro-LKWs. |
| **Live-Verkehr & Staus** | **HERE Technologies** | Echtzeit-Europäischer Autobahnverkehr & aktive Baustellen | Passt Durchfahrtszeiten dynamisch an und führt Verzögerungsrisiken auf stark frequentierten Korridoren ein. |
| **Terrain & Höhe** | **SRTM-Daten** | NASA Shuttle Radar Topography Mission 30-Meter-Mesh | Wendet realistische Steigungswiderstände an: steile Bergpässe entleeren die Batterie schnell, Gefällestrecken ermöglichen Energierückgewinnung. |
| **Atmosphärische Physik** | **Live-Temperaturzyklen** | Tägliche europäische Wettermuster | Extreme Kälte oder Hitze erhöhen den Batterie-Innenwiderstand und den HVAC-Energiebedarf, reduzieren die Gesamtreichweite. |

---

## ⚡ 1. Ladeinfrastruktur (OpenChargeMap)

VoltFracht nutzt Echtwelt-Koordinaten und technische Spezifikationen von
**OpenChargeMap**, um sein Ladenetzwerk zu besetzen.

* **Leistungsklassen & Ladegeschwindigkeit**: Stationen reichen von
  Standard-CCS-40-kW-Ladern bis zu ultra-schnellen **600-kW-Megawatt-Ladern**.
  Die Ladezeit eines LKWs wird durch den Schnittpunkt der maximalen
  Aufnahmekapazität des LKWs und der Steckerleistung der Station bestimmt.
* **Live-Steckerstatus & Warteschlangen**: Jede Ladestation verfolgt
  verfügbare vs. belegte Stecker in Echtzeit. Wenn alle Stecker bei Ankunft
  eines LKWs belegt sind, tritt das Fahrzeug in einen Wartestatus mit einem
  Live-Countdown-Timer ein, bis ein Stecker frei wird.
* **Infrastrukturelle Engpässe**: Durch Spiegelung der tatsächlichen
  Ladedichte zeigt VoltFracht reale Infrastrukturprobleme auf. In Regionen
  wie Osteuropa oder ländlichen Transitkorridoren, wo Hochleistungs-LKW-
  Ladestationen dünn gesät sind, müssen Disponenten Reichweitenpuffer sorgfältig
  planen oder Ladestopps mit niedrigerer Leistung (z. B. 40 kW) akzeptieren.

---

## 💶 2. Dynamische Stromkosten (ENTSO-E)

Die Energieausgaben werden durch tägliche Marktupdates von **ENTSO-E**
(European Network of Transmission System Operators for Electricity) geregelt,
welche reale Großhandels-Spotmarktpreise widerspiegeln.

* **Länderspezifische Sätze**: Strompreise schwanken täglich basierend auf
  dem nationalen Stromnetzmarkt, in dem der LKW lädt.
* **Margendruck bei grenzüberschreitenden Fahrten**: Eine Route, die durch
  Länder mit hohen Spotpreisen führt, verursacht deutlich höhere
  Betriebskosten. Strategische Disponenten berücksichtigen nationale
  Strompreisdifferenzen bei der Routenauswahl und Angebotspreisgestaltung.

---

## ⛰️ 3. Topografie & Höhenphysik (SRTM-Daten)

Um den Energiebedarf des schweren Elektrotransports (7,5 t bis 44 t) genau
zu simulieren, integriert VoltFracht **SRTM (Shuttle Radar Topography
Mission)**-Höhen daten entlang jeder Straßenabschnitts.

* **Steigungswiderstand**: Das Fahren beladener E-LKWs über steile Bergpässe
  (wie z. B. die Alpen, Pyrenäen oder skandinavisches Hochland) erhöht den
  Energieverbrauch pro Kilometer erheblich im Vergleich zu flachem
  Autobahnfahren.
* **Rekuperatives Bremsen**: Gefällestrecken ermöglichen es Fahrzeugen,
  kinetische Energie zurück in die Batterie zu speichern, wodurch der
  Ladezustand teilweise wiederhergestellt wird.
* **Routing-Planer-Integration**: Der automatisierte Routing-Planer berücksichtigt
  SRTM-Höhenprofile in seiner Reichweiten-Sicherheitsmarge, bevor eine Reise
  genehmigt wird.

---

## 🌡️ 4. Wetterphysik & saisonaler Temperatur-Engine

Umgebungsatmosphärische Bedingungen beeinflussen die Batteriechemie und das
Thermomanagement direkt.

* **Tägliche Temperaturzyklen**: Echtzeit-Europäische Wetterdaten bestimmen
  lokale Umgebungstemperaturen entlang der Route.
* **Reichweitenverlust**: Kalte Wintertemperaturen erhöhen den
  Batterie-Innenwiderstand und erfordern Kabinen-/Batterieheizung, wodurch die
  verfügbare Reichweite pro Ladung verringert wird. Hohe Sommertemperaturen
  erfordern aktive Kühlung, was ähnlich den Stromverbrauch erhöht.
* **Saisonale Events**: Besondere saisonale Events (wie Winterlogistik oder
  Herbst-Halloween-Fracht-Herausforderungen) stimmen mit den Wetterbedingungen
  überein und testen die Flotteneffizienz unter verschiedenen
  Umgebungsbedingungen.

---

## 🛣️ 5. Straßenrouting & Live-Verkehr (OSRM & HERE)

* **OSRM-Routing-Engine**: Alle LKW-Fahrten werden mit einer benutzerdefinierten,
  selbstgehosteten Open-Source-Routing-Maschine verarbeitet, die speziell für
  europäische Schwergutkorridore konfiguriert ist.
* **HERE-Verkehrsfeeds**: Live-Verkehrsfluss und aktive Baustellen passen die
  Geschwindigkeitsprofile in Echtzeit an. Staus verlangsamen den Transit und
  beeinflussen Lieferfristen und den Durchsatz täglicher Syndikat-Herausforderungen.

---

## 🔍 Bildungs- & Politikauswirkung: Abbildung der Infrastrukturlücke

Über seine Rolle als Wirtschaftssimulation hinaus dient VoltFracht durch die
streng Einhaltung von Echtwelt-Daten einem doppelten Zweck als
**Infrastruktur-Diagnosewerkzeug**. 

Durch die Platzierung hunderter aktiver virtueller Disponenten auf tatsächlichen
europäischen Straßennetzwerken zeigt die Simulation natürlich auf, wo der
elektrische Schwertransport gedeiht und wo reale Ladewüsten,
Niedrigleistungs-Engpässe und Grenzstaus weiterhin große Hindernisse für die
Dekarbonisierung der europäischen Frachtlogistik darstellen.
