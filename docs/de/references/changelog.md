# Release-Protokoll & Entwickler-Roadmap

Verfolge die Versionsverlaufshistorie, wichtige Feature-Updates und
zukünftige Entwicklungspläne für VoltFracht, die europäische
Elektro-Logistik-Simulation.

---

## 🚀 Entwickler-Roadmap

Solo-Entwickler Sebastian Giove entwickelt VoltFracht aktiv in enger
Zusammenarbeit mit der Spieler-Community. Hier ist die aktuelle Feature-Roadmap:

### Kommende Version 0.19 – Fahrer- & Personalverwaltung

* **Personalsystem (Personal & Fahrer)**: Einführung eines dedizierten
  Personalverwaltungsbereichs, in dem Disponenten E-LKW-Fahrer einstellen,
  ausbilden und verwalten.
* **Fahrerqualifikation**: Ausbildung von Fahrern in spezialisierten
  Fahrzeugklassen, energieeffizienten Fahrtechniken und dem Umgang mit
  Gefahrgut.
* **Erfahrungsstufen**: Fahrerfahrungsstufen beeinflussen die
  Batterieeffizienz der Fahrzeuge, die Umdrehzeiten und die Auftragsboni.
* **Flottenübersicht-Vorschau (*Meine Flotte*)**: Alle LKW auf einen Blick —
  Status (bereit, unterwegs, lädt, belädt), Akkustand, Standort, Ziel und
  Routenfortschritt. Antippen öffnet die Details mit Route, Ladeplanung und
  Verbrauch. Mit PRO wird der Ist-Verbrauch als gleitender Schnitt der letzten
  Fahrten angezeigt (die letzten paar hundert Kilometer zählen am meisten);
  PRO+ zeigt zusätzlich die Abweichung vom Werkswert des Modells (gültig bei
  halber Ladung, 70 km/h, 15 °C) — grün darunter, rot darüber. Gebrauchte LKW
  zeigen anfangs noch den Verbrauch des Vorbesitzers und nähern sich nach rund
  1'000 eigenen Kilometern fast ganz dem eigenen Wert an. Eigene LKW-Namen
  erlauben Buchstaben, Zahlen und Satzzeichen (keine Symbole oder Emoji); die
  Nummer davor (z. B. #3) bleibt stehen und ist die eindeutige Kennung — auch
  in der Abrechnung.

### Kommende Version 0.20 – Mehrfach-Depot-Flottenausbau

* **Regionale Depots**: Erweiterung deines Logistikunternehmens über dein
  Heimatdepot hinaus durch den Erwerb sekundärer Unternehmensdepots in
  großen europäischen Städten.
* **Flottenkapazitätslimit**: Aktive dispatchbare LKWs bleiben auf 12
  Fahrzeuge pro Depot begrenzt, um strategische Dispatching-Tiefe ohne
  Mikromanagement-Overhead zu erhalten.
* **Verlagerungsstrategie**: Sekundäre Depots ermöglichen regionale
  Flottenpositionierung, was teure Leerfahrten (*Leerfahrten*) deutlich
  reduziert.

### Zukünftige Module – Schwertransport & Anpassung

* **Schwertransport (*Schwerlast*)**: Spezialisierte Mehrachs-Schwertransport-
  E-LKWs, Sondergenehmigungen für Übermaßladung und benutzerdefinierte
  Routenfreigaben.
* **Ranglisten-Titel & Abzeichen**: Verdiene benutzerdefinierte
  Disponenten-Titel, Präfixe und Abzeichen, die in internationalen Ranglisten
  basierend auf Unternehmensmeilensteinen angezeigt werden.
* **Kurzstrecken-Neuabgleich**: Laufende wirtschaftliche Anpassungen zur
  Verfeinerung der Rentabilitätsverhältnisse zwischen kurzen regionalen
  Fahrten und langen grenzüberschreitenden Transporten.
* **PRO-Abo-Vorteile**: 2 zusätzliche Plätze in der Auftrags-Warteschlange und
  20 % Rabatt auf alle Boosts für PRO-Abonnenten.
* **Test-Community**: Eine eigene Testumgebung, in der ausgewählte Spieler
  neue Funktionen vor dem Release testen, Fehler mit Screenshots melden,
  Testaufgaben ausprobieren und direkt Feedback geben.

---

## 📜 Versionsverlaufshistorie

### Version 0.18 – Europa-Tour & Lade-Overhaul

Veröffentlicht am 18. Oktober 2026 für Web, Mobile-Builds folgen nach
Web-Stabilisierung.

#### Kernfunktionen

| Funktionskategorie | Wichtige Verbesserungen |
| :--- | :--- |
| **Syndikats-Tour** | **Tour durch Europa**: Tägliche 20-Etappen-Gemeinschaftsexpedition mit Live-Kartenverfolgung der Mitglieder-LKWs, Fortschrittsbalken und gestaffelten Belohnungen bei 5, 10, 15 und 20 abgeschlossenen Etappen. Syndikatsmitglieder auf der Karte mit Namen und echten Routen sichtbar. |
| **Ladesystem** | Säulentausch während aktiver Fahrten, minimale Leistungsfilter, pro Ladestation festgelegter Akku-Zielladezustand, Live-Stecker-Warteschlangen-Countdowns mit Benachrichtigungen, wenn Ladestationen verfügbar werden, und dynamische Steckerverfügbarkeitsanzeige. |
| **Sparmodus** | Kartenlose Rendering-Modus zur Eliminierung der 3D-GPU-Last, Reduzierung der Geräteerwärmung und Akkueinsparung während langer autonomer Fahrten. Volle Funktionalität für Routenverwaltung, Ladekontrolle und HUD. |
| **Syndikatsrollen** | **Schatzmeister (*Kassenwart*)**-Rolle mit Finanzverwaltungsberechtigungen, 10-fache Gemeinschaftskassen-Erweiterung, Ein-Klick-Massen-Spenden, Leiter-Kronen-Symbol (*Krone*) und automatisierte Warnbanner für Syndikatsevents. |
| **Supportsystem** | Direkte In-Game-Antworten des Entwicklers auf Fehlerberichte mit Push-Benachrichtigungen, plus eindeutige Belegnummern für Finanzprüfungen. |
| **Flotten-Speicher** | Sofortiger Fahrzeugverkauf direkt aus **[der Halle](../fleet/depot-hall.md)**, Kauf von Marktplatz-LKWs direkt in die Lagerung, individuelle LKW-Benennung. |
| **Wettersystem** | Echter Tagesgang mit Temperatureffekten. Kälte und Hitze reduzieren die Reichweite, Routenplaner berücksichtigt Wetterauswirkungen automatisch. |
| **Fair-Play-Richtlinie** | Neuer AGB-Abschnitt (Zustimmung beim nächsten Login erforderlich): keine Skripte, Bots, Makros, Auto-Klicker und kein Zugriff auf das Spiel außerhalb des bereitgestellten Clients; keine gemeinsame Nutzung, kein Verkauf und Tausch von Konten. Zeitstempel von Spielhandlungen werden 90 Tage protokolliert (keine IP-, Geräte- oder Inhaltsdaten). Eskalation: erst Nachfrage, dann Verwarnung, dann Sperre. Gilt erst ab der Zustimmung, nicht rückwirkend. |

#### Patch-Updates

##### 0.18.394 (31. Oktober 2026) — Fix der Ladeplanung an Fähren

- **Ladeplanung an Fähren**: Der Planer behandelte den Fährhafen wie einen
  Zielort und lud vor der Überfahrt nur den Bedarf bis zum Hafen — nicht den
  eingestellten Zielladestand. Ursache: der Deckel aus 0.18.232, der den
  letzten Ladestopp vor dem Ziel auf das tatsächlich Nötige begrenzt. Greift
  ab der nächsten Routenplanung; laufende Touren behalten ihren Plan.
- **Hafen-Etappe**: Diese verlangt weiterhin nur 50 km Restreichweite bei der
  Ankunft am Hafen. Ob das in der Praxis reicht, wird anhand der Fährfahrten
  der nächsten Tage beobachtet.

##### 0.18.396 (30. Oktober 2026)

- Versionssprung ohne sichtbare Änderungen für Spieler.

##### 0.18.394 & 0.18.395 (29. Oktober 2026)

- **Client**: Schweizer Flagge in der Anzeige korrigiert.
- **Planung**: Anzeigefehler in der Routenberechnung behoben (von einem Spieler
  gemeldet), dazu ein paar kleinere Fixes, die nebenbei aufgefallen sind.

##### 0.18.389 (28. Oktober 2026) — Server-Performance-Überholung

- **Routing-Server**: Antworten waren zu groß für den Sendepuffer und brachen
  mitten in der Übertragung ab (283 Abbrüche in der Stunde vor dem Fix; seit
  der Umstellung null). Routenberechnung von ~3,5 s auf unter 1 s gesunken.
- **Vollständigkeit der Ladeplanung**: Lange Touren gingen gelegentlich ganz
  ohne Ladeplanung raus (gemeldeter Fall: 4'107 km bis Helsinki ohne einzigen
  Ladestopp). Seit der Umstellung ist das bei 139 langen Touren kein einziges
  Mal mehr passiert.
- **Säulensuche**: Die Suche nach Ladesäulen entlang einer Route machte pro
  Planung über zwanzig Millionen überflüssige Rechenschritte; umgebaut.
- **Finanzseite**: Eine neue Buchungsart war der Kategorie-Übersicht noch nicht
  bekannt und brachte die Finanzseite für knapp eineinhalb Stunden in einen
  Fehlerzustand.

##### Deal-Auszahlungsfehler & Nachzahlung (27. Oktober 2026)

- **Fehler**: Wer einen Deal für eine längere Fahrt verhandelt, losgeschickt
  und sich abgemeldet hat, verlor den Bonus bei der Ankunft — der Deal wurde
  beim Wiedereinstieg als verfallen aussortiert, weil der LKW in genau dieser
  Sekunde schon angekommen war.
- **Server-Update**: 09:00 Uhr, ca. 10 Minuten Pause. Fehler ist dicht.
- **Nachzahlung**: 938 Lieferungen bei 90 Konten, zusammen 39'951'786 €
  entgangener Deal-Bonus (kleinster Einzelfall 3'335 €, größter 124'450 €).
  Jeder Fall einzeln rekonstruiert; 82 Fälle ausgeschlossen (LKW schon vor dem
  Handschlag unterwegs, zweiter LKW in dieselbe Stadt, Fahrt erst nach Ablauf
  des Deals gestartet). Auszahlung läuft als eigene Buchung in den Finanzen.
- **Ranglisten**: Kürbisrangliste nicht betroffen (kilometerbasiert, Geld spielt
  keine Rolle). Vermögensrangliste verschiebt sich nur geringfügig — 0,3 % des
  Gesamtvermögens aller Spieler; 60 Konten wechseln den Platz (größter Aufstieg
  +4 Plätze, größter Abstieg −2), die Top 10 bleiben unverändert.
- **Android**: Version 0.18.382 steht jetzt auf Google Play zum Download bereit.

##### 0.18.386 (27. Oktober 2026) — Verzögerungen beim Losschicken & bei Deals

- **Server-Update**: 01:00 Uhr, ca. 15 Minuten offline. Laufende Touren sind
  nicht betroffen.
- Richtet sich gegen die Verzögerungen beim Losschicken und bei den Deals.
  Die Ursache ist noch nicht zu 100 % gefunden; Justier-Parameter für die
  kommenden Tage sind mit dabei.
- **Wetterabfrage**: Fällt bei wiederholten Fehlern nun auf ihren letzten Wert
  zurück, statt die Anfragen zu blockieren.
- **Routing unter Last**: Der OSRM-Abfrage wurde mehr Puffer gegeben. In
  Spitzenzeiten fahren über 1'500 LKW gleichzeitig; seit 0.18 kann jeder
  unterwegs befindliche LKW manuell neu geplant werden und jeder Reglerzug
  löst eine neue Routenberechnung aus — die Last war tatsächlich unterschätzt
  worden.

##### Lautloses Sicherheitsupdate (25. Oktober 2026)

- Neueste Sicherheitspatches serverseitig eingespielt. Keine Versionsänderung
  (bleibt 0.18.382).

##### 0.18.382 (22. Oktober 2026)

  - **Ladestopp-Besitz**: Benutzerbearbeitete Stopps (Säulentausch oder
    Zielladestand angepasst) zeigen nun ein Handsymbol und werden beim
    Umplanen beibehalten. Der Planer fügt bei Bedarf Zwischensopps ein,
    statt Benutzerstopps zu ersetzen.
  - **Stopp entfernen**: Neuer Button "Stopp entfernen" ermöglicht das Löschen
    überflüssiger Ladestopps ohne kompletten Routenaufbau. Der Planer
    verhindert das Entfernen nur, wenn der Stopp wirklich benötigt wird.
  - **UI-Fixes**: Gestrichelte Linie zeigt zuverlässig Leerfahrten zu
    Ladestationen. Kilometerangaben sind jetzt überall gleich geschrieben.
  - **Mobile-Apps**: Neue Builds wurden an die Android- und iOS-Stores
    eingereicht. Diese enthalten alle 0.18-Funktionen (Tour durch Europa,
    Spartopf, Gebrauchtwagenkauf direkt in die Halle, Warteschlangen bei
    belegten Säulen mit Countdown, Benachrichtigungen je Kategorie sowie
    die neue Ladeplanung). Release-Zeitpunkt hängt von Store-Prüfung ab.

##### 0.18.376 & 0.18.377 (21. Oktober 2026)

  - **Fähren**: Behebung des Fähr-Symbols, das fälschlich 15 km vor und nach
    jeder Überfahrt galt (30 km reine Landstraße ohne Stromverbrauch). Ab
    jetzt zählt nur die eigentliche Überfahrt: auf dem Schiff kostet es nichts,
    auf der Straße schon. Betrifft ca. 12'500 km an Fähren-Routen.
  - **Gebrauchtmarkt**: LKWs können nun direkt in die Halle gekauft werden.
    Slotzählweise wie im Shop: eingelagerte LKWs blockieren keine Depotplätze.
  - **Ladestopps**: Unerreichbarkeitsberechnungen für Säulentausch korrigiert.
    Null-Nutzen-Stopps (z. B. 36 %→36 %) nun überspringbar.
  - **Anzeige**: Be-/Entladen zeigt nun korrekten Status mit Fortschritt.
    Menü- und Ranglistenstabilität verbessert. Weiße Tour-Linie sichtbar.
  - **Syndikat & Benachrichtigungen**: Leiter-Aktionen bieten nun explizites
    Feedback. Alle vier Benachrichtigungskategorien zugänglich.
  - **Android**: Google-Login-Defekt behoben (erfordert Store-Update).

##### 0.18.362 (20. Oktober 2026)

  - **Ladestopps umplanen**: Säulentausch-Reichweitenberechnungen korrigiert.
    Live-Steckerverfügbarkeit. Wunsch-Säulen können weiter abseits liegen.
  - **Frachtenbörse**: "Nur mein Standort" findet nun Ladestationen-Nähe.
    Standortspeicherung nach Ankunft behoben.
  - **Sparmodus**: Stationäre LKWs können nun zum Laden gesendet werden.
    Lade-Panel zeigt Ziel-LKW mit Wechselmöglichkeit.
  - **UI**: Weiße Tour-Ketten wiederhergestellt. Boost-Benachrichtigungen
    am Aktionsknopf.

##### 0.18.315 (18. Oktober 2026)

  - **Routen**: Calais-Grenze behoben (38 Säulen als Insel-Effekt).
    Anzeige der tatsächlichen Route-Distanz (Split-Bari: 272 km→1'441 km).
  - **Syndikat & Tour**: Tour-Linie unabhängig vom Syndikatszugriff sichtbar.
    Sparziele zahlen volle Prämien. Punkte in Finanzen sichtbar.
  - **Dealmaker**: Nachfragekurve-Spitzen wiederhergestellt.
  - **UI**: Mehrere Fenster-, Hallen-, Navigations-Fixes.

**Veröffentlichungsprozess**: Version 0.18 durchlief 5-7 Tage internen Test
mit Community-Teilnehmern auf dem Testserver vor Web-Release. Mobile
Store-Builds folgen nach Web-Stabilisierung und Fehlerbehebung.

---

### Version 0.17.200 – Anzeigefixes & Halloween-Special-Start

Veröffentlicht am 04. Oktober 2026 für Web.

#### Systemverbesserungen

* Discord-Link in Spieleinstellungen behoben (abgelaufene Einladung durch
  permanente ersetzt).
* Coin-Aufschlüsselung zeigt nun korrekt: Basis-Coins, PRO-Bonus und
  Gesamt-Coin-Gutschrift (zuvor als verwirrende Additionen dargestellt).
* 44t-LKW-Nutzlastbalken in dunklem Thema wieder sichtbar.
* Kanäle in Datenbank zentralisiert für einfachere Aktualisierungen.

### Halloween-Special-Event (03. Oktober 2026 – 31. Oktober 2026)

#### Kürbis-Fracht

Saisonale Fracht nur als 7,5 t und 18 t Aufträge. 40 t-LKWs erhalten
18 t-Auszahlung (kein Größenvorteil).

#### Spectre-LKWs

Limitierte Halloween-Edition Spectre 7,5 t 2026 und Spectre 18 t 2026 mit
doppelten Punkten für Kürbis-Fracht.

#### Ranglisten

Eigene wöchentliche Wertung mit Belohnungen.

!!! info
    Überprüft durch Analyse von 79'000+ echten Buchungen. Nur
    Anzeigefehler behoben; keine Änderungen an tatsächlichen Auszahlungen.
    Web-Only-Update. Mobile-Apps benötigen Store-Update.

---

### Version 0.17 – Halle & Marktplatz-Filter

Veröffentlicht am 30. September 2026 für Web und Mobile Stores.

#### Die Halle

* Fahrzeugspeichereinrichtung, die es Disponenten ermöglicht, inaktive LKWs
  einzulagern, dabei Kilometerstand und Wiederverkaufswert ohne Verkauf zu
  erhalten. LKWs in der Halle blockieren keine Depotplätze.

#### Frachtenbörsen-Upgrade

* Mehrfachauswahl-Frachtgruppenfilter mit klappbaren Filter-Panels.
* Standortbasierte Nähe-Suche (*Nur mein Standort*).
* Tonnage-Filter.
* Umsatz/km-Rendite-Sortierung.
* Frachtenbörse lädt nur bei geöffnetem Tab, reduziert mobiles Datenvolumen.

#### Deals-Integration

* Direkte Deal-Indikatoren bei Auftragslisten.
* Schnelle Links von aktiven Deals zur Frachtenbörsen-Suche.

#### Fair-Play-Regeln

* Entfernung der Coin-zu-Euro-Währungsumwandlung.
* Depot-Stellplatz-Upgrades mit Coins auf Level 8 begrenzt.
* Coins gültig nur für Aktions-LKWs, einmal pro Konto.

#### Bugfixes

* Neue Spieler mit 0 € außerhalb von 37 Städten
  (Startkapital vorhanden aber nicht angezeigt).
* PRO-Bonus nun in Abrechnungen sichtbar (wurde gezahlt aber nicht angezeigt).

#### Patch-Update:

##### 0.17.198 (02. Oktober 2026)

- Tonnage-Filter in Frachtenbörse,
- Flotteninfo in Syndikat-Ranglisten,
- Ladebildschirm-Bereinigung.

---

### Version 0.16 – Stabilität & Konnektivität

Veröffentlicht am 29. September 2026.

#### Verbindungsstabilität

* Behebung von Kartenschleifen-Rendering-Abstürzen auf iOS-Hardware.
* Optimierte Server-Client-Websocket-Neuanmeldungen.
* Reduzierte Datenübertragung bei Verbindung (nur eigene Routen, nicht alle).

#### Leistung

* Serverseitige Fixes für Datenbank-Engpässe bei Spieleranstürmen.
* Deutliche Reduzierung der Antwortzeiten.

#### Wirtschaftliche Anpassungen

* Entfernung der Coin-zu-Euro-Währungsumwandlung.
* Depot-Stellplatz-Upgrades mit Coins auf Level 8 begrenzt.

#### Bugfixes

* LKWs mit <10 % Akku bleiben nicht mehr stehen.
* PRO-Bonus fällt nicht auf 0 % bei Offline-Ankunft.
* LKWs fehlen nicht mehr in Flottenübersicht nach Offline-Abschluss.
* Lieferbenachrichtigungen zeigen korrekten Betrag.
* iOS: Tastatur überdeckt Inhalt nicht mehr.
* Mobile: Reduzierte Ladesäulen-Symbolgröße in Europa-Ansicht.

---

### Version 0.15 – Gebrauchtwagenmarktplatz

Veröffentlicht Anfang September 2026.

#### P2P-Marktplatz

* Player-to-Player-Fahrzeughandel mit anpassbaren
  Listenpreisen und sofortiger Stellplatz-Freigabe nach Listung.

#### Sofortverkauf

* Algorithmische Barliquidation basierend
  auf Kilometerstand-Abschreibung.

#### Early Bird 7S

* 30 Tage limitierter Sammler-E-LKW mit nominalem Marktwert von €150'000.

#### Responsive Mobile-UI

* Komplettes Querformat-Layout-Redign und
  vereinfachte mobile Navigationspanels.

---

### Version 0.14 & Älter – Kern-Engine-Start

Veröffentlicht August 2026.

#### Simulationsgrundlage

* Start der Kern-Europäischen Logistikkarte mit 31 Ländern und 103 Städten.

#### Datenstrom-Integration

* Integration von OpenChargeMap-Stationsdaten,
  ENTSO-E-Tages-Strompreisen, OSRM-Routing, HERE-Verkehr, und SRTM-Höhendaten.

#### Fahrzeugklassen

* Erste Bereitstellung der 7,5 t-, 18 t-, 26 t- und 44 t-Elektro-LKW-Klassen.
