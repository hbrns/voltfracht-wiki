# Willkommen im VoltFracht-Wiki

Willkommen im offiziellen Community- und Dokumentations-Wiki für **VoltFracht**
(auch bekannt als *VoltFracht: E-Truck Tycoon*), der europäischen
Simulationsspiel für elektrisches Logistikmanagement.

VoltFracht ist ein Indie-Logistikstrategiespiel, das von **Sebastian Giove**
entwickelt wurde. In VoltFracht schlüpfst du in die Rolle eines Spediteurs
("Disponent"), der ein emissionsfreies Elektro-LKW-Unternehmen auf realen
europäischen Transportnetzwerken aufbaut und verwaltet.

---

## 🚛 Was ist VoltFracht?

Im Gegensatz zu herkömmlichen Fahrsimulatoren versetzt dich VoltFracht direkt
ins Dispositionsbüro (**"Du bist der Chef, nicht der Fahrer"**). Deine LKWs
fahren autonom und planen ihre Routen sowie Ladestopps basierend auf realen
Infrastrukturdaten. Deine Aufgabe ist strategisch: Frachtrentabilität bewerten,
Flottenkapazität erweitern, schwankende Energiekosten steuern, Fahrzeuge handeln
und dich mit anderen Disponenten in wettbewerbsorientierten Syndikaten
absprechen.

### Hauptmerkmale

* **Plattformübergreifendes Spielen**: Spiele nahtlos in jedem modernen
  Webbrowser ([voltfracht.sgio.app](https://voltfracht.sgio.app/)) oder über
  native mobile Anwendungen für **iOS** (App Store) und **Android** (Google
  Play Store) mit einheitlichem Kontofortschritt.
* **Reale Infrastruktur**: Direkt auf Basis tatsächlicher europäischer Geografie-
  und Logistikdatenquellen aufgebaut – mit über 12'000 Ladestandorten und
  58'000 Ladepunkten in 109 Städten in 33 Ländern.
* **Echtzeit-Logistikfaktoren**: Auszahlungen und Reichweite hängen von
  täglichen Spot-Strompreisen, Live-Verkehrsfluss, Baustellen, Wetterzyklen
  und den Geländehöhenprofilen der Shuttle Radar Topography Mission (SRTM) ab.
* **Solo-Indie-Entwicklung**: Erstellt von Sebastian Giove in seiner Freizeit,
  angetrieben direkt durch Community-Feedback, wöchentliche transparente
  Release-Protokolle und Fehlerberichte.

---

## 🌐 Echtwelt-Datenintegrations-Engine

VoltFracht spiegelt reale Infrastrukturherausforderungen des elektrischen
Schwerlastverkehrs wider, indem Daten direkt von führenden Logistik- und
Geografie-APIs abgerufen werden:

| Datenquelle | Integration in VoltFracht | Auswirkungen im Spiel |
| :--- | :--- | :--- |
| **OpenChargeMap** | 12'481+ Ladestandorte / 58'598+ Ladepunkte (bis zu 600 kW) | Bestimmt die Live-Steckerverfügbarkeit, Ladegeschwindigkeit und Warteschlangen. |
| **ENTSO-E** | Tägliche Spotmarkt-Strompreise pro Land | Beeinflusst direkt die Ladekosten und Margenberechnungen pro Fahrt. |
| **HERE Technologies** | Echtzeit-Verkehrsfluss und aktive Baustellen | Modifiziert Fahrtdauern und Umwegplanung. |
| **SRTM-Höhendaten** | Hochpräzise Terrain- und Topografiedaten | Steigungen und Bergpässe erhöhen den Batteriestromverbrauch erheblich. |
| **OSRM Routing** | Benutzerdefinierte Open-Source-Straßennetz-Routing-Engine | Berechnet exakte LKW-Fahrwege in 33 europäischen Nationen. |

---

## 📚 Wiki-Navigationsstruktur

Erkunde die Wiki-Abschnitte unten, um die Disposition von Elektroflotten und
den Syndikatswettbewerb zu meistern:

=== "1. Erste Schritte & Mechaniken"

* [**Übersicht & Onboarding**](getting-started/overview.md): Wähle dein
  Startdepot, nutze Startkapital und kaufe deine ersten 7,5 t E-LKWs.
* [**Frachtenbörse & Ladung**](mechanics/freight-exchange.md): Filtere
  Aufträge nach Tonnageklassen (7,5 t bis 44 t), Standard-, Kühl-,
  Flüssig- und Gefahrgutfracht.
* [**Routing & Laden**](mechanics/routing-charging.md): Verwalte den
  Batterieladezustand, Wettereinflüsse und Steckerverfügbarkeit.

=== "2. Flotte, Markt & Wirtschaft"

* [**Depot & Halle**](fleet/depot-hall.md): Erweitere die Depotkapazität
  (Stufen 1–10) und lagere inaktive LKWs in der **Halle**, um Kilometerstand
  und Stellplätze zu schonen.
* [**Gebrauchtwagenmarkt**](fleet/marketplace.md): Regeln für den
  P2P-Fahrzeughandel, Missbrauchsschutz-Preisobergrenzen (1,2-facher
  Neupreislimit) und Stufenanforderungen.
* [**Wirtschaft & Fair-Play**](economy/fair-play.md): In-Game-Währung,
  optionales PRO-Abonnement (€4,99/Monat) und strenge
  AGB-Anti-Bot-/Anti-Cheat-Regeln.

=== "3. Syndikate & Updates"

* [**Syndikate & Herausforderungen**](syndicates/challenges.md): Schließe
  dich in Bündnissen aus 10 Unternehmen zusammen, trete in 17 Aufstiegsligen
  an und weise Rollen (*Schatzmeister*) zu.
* [**Tour durch Europa**](syndicates/tour-through-europe.md): Tägliches
  kooperatives 20-Etappen-Syndikatsevent mit Live-Kartenverfolgung und
  Stufenbelohnungen.
* [**Release-Protokoll & Roadmap**](references/changelog.md): Verfolge
  Release-Updates und zukünftige Funktionen (Fahrerschulung, Mehrfaches Depot,
  Schwertransport).

---

## ⚡ Schnellstart-Empfehlungen für neue Disponenten

!!! tip "Anfänger-Strategie"
    1. **Wähle Deutschland als dein Heimatland**: Deutschland startet mit 9
       freigeschalteten Nachbarländern, was dir die breitesten anfänglichen
       Frachtoptionen bietet, ohne frühe Grenzerweiterungsgebühren zu zahlen.
    2. **Sofort reinvestieren**: Warte nicht, bis dein erster LKW seine
       Rückfahrt beendet hat. Nutze dein Startkapital, um sofort einen zweiten
       oder dritten 7,5 t-LKW zu kaufen und den Umsatzfluss zu maximieren.
    3. **Achte auf Frachtfilter**: Wenn keine profitablen Routen angezeigt
       werden, überprüfe deine Frachtfilter. Das Freischalten zusätzlicher
       Frachtgruppen (Kühlgut, Gefahrgut, Flüssigkeiten) eröffnet deutlich mehr
       Frachtauswahl als das reine Hochstufen der Tonnageklassen.

---

## 🤝 Community & Offizielle Kanäle

* **Offizieller Discord**: :fontawesome-brands-discord:{ .discord } [Join the
  Community Server](https://discord.gg/dVH4Hj5wVM)
* **Social-Media-Kanäle**:
  :fontawesome-brands-instagram:{ .instagram }
  [Instagram](https://www.instagram.com/voltfracht) |
  :fontawesome-brands-youtube:{ .youtube }
  [YouTube](https://www.youtube.com/@VoltFracht) |
  :fontawesome-brands-tiktok:{ .tiktok }
  [TikTok](https://www.tiktok.com/@voltfracht)
