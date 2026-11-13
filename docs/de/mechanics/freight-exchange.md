# Frachtenbörse & Frachtsysteme

Die **Aufträge**-Frachtenbörse ist der zentrale Marktplatz, auf dem
Disponenten Logistikverträge in ganz Europa bewerten und annehmen.

---

## Auftragsmechanik & Verfügbarkeit

Jeder auf der Börse gelistete Vertrag zeigt Nutzlastanforderungen,
Frachttyp, Abfahrt, Ziel, Entfernung und finanzielle Erträge.

* **Unabhängige Auftragslisten**: Seit Update 0.17 wird ein Auftrag nach
  Annahme nur noch aus der eigenen Börsenansicht entfernt, wodurch das
  "Wegschnappen" von Aufträgen durch andere verhindert wird.
* **Anfängerauszahlungsbonus**: Neue Unternehmen erhalten einen +10 %-Bonus
  auf die Basissätze für ihre ersten 7 Tage.
* **PRO-Mitgliedervorteile**: Aktive PRO-Abonnenten erhalten einen
  +25 %-Punktebonus für abgeschlossene Fahrten.
* **Verfügbarkeitsanzeige**: Der Balken am unteren Rand eines Auftrags zeigt,
  wie lange dieser noch verfügbar bleibt; Preis, Coins und Boni stehen rechts.
* **Aktionswaren**: Event-Fracht (z. B. Halloween-Kürbisse) ist während der
  laufenden Aktion ohne Freischaltung fahrbar.

---

## Die drei Auftragsfilter

Sichtbare Aufträge in deiner Frachtenbörse werden durch drei unabhängige
Filterkriterien gesteuert:

1. **Nutzlastkapazität**: Die Tonnageklasse deines LKWs muss zum Auftrag passen.
2. **Frachtgruppenlizenz**: Du musst über die Lizenz für den Frachttyp verfügen.
3. **Länderzugriff**: Sowohl Start als auch Ziel müssen in freigeschalteten
   Nationen liegen.

---

## Tonnage-Klassen

Fahrzeuge und Frachtverträge fallen in fünf primäre Gewichtsklassen:

| Klasse | Bruttogewicht | Ideale Einsatzrolle |
| :--- | :--- | :--- |
| **7,5 t** | Leichte Distribution | Städtische Auslieferung & regionale Starterfahrten |
| **18 t** | Mittlerer Transport | Regionale Distribution & Eventtransport |
| **26 t** | Schwerer Starraufbau | Innerstädtische Logistik & mittlerer Transport |
| **40 t** | Sattelzug | Langstrecken-Grenzüberschreitende Logistik |
| **44 t** | Schwerer Sattelzug | Langstrecken-Grenzüberschreitender Schwertransport |

---

## Frachtkategorien & Lizenzen

Das Freischalten zusätzlicher Frachtlizenzen ist der effektivste Weg, um die
Anzahl verfügbarer profitabler Aufträge zu erhöhen:

* **Standardfracht**: Standardmäßig für alle Startflotten freigeschaltet.
* **Container**: Containertransport.
* **Allgemeine Fracht**: Allgemeiner Frachttransport.
* **Gefahrgut**: Spezialisierter Gefahrguttransport.
* **Flüssigfracht**: Tankwagenlogistik für Flüssigfracht.
* **Maschinen**: Maschinentransport.
* **Kühlfracht**: Temperaturkontrollierter Transport.
* **Holz**: Spezialisierter Holztransport.
* **Saisonale & Event-Fracht**: Zeitlich begrenzte Fracht wie Halloween-Kürbisse.

---

## Auftragsgarantie pro Standort (Stand: November 2026)

Der Server prüft in jedem Takt, ob an jedem Standort eines aktiven Spielers
je Nutzlastklasse eine kurze und eine weite Tour liegt — ist die Börse nicht
voll, je zwei. Fehlt etwas, legt er sofort nach.

Eine leere Auftragsliste hat daher fast immer einen der drei Filter als
Ursache, nicht den allgemeinen Pool:

* Die Garantie gilt pro Stadt und Tonnageklasse, nicht pro Spieler. Stehen
  dort mehrere LKW anderer Spieler, teilen sie sich dieselben Aufträge.
* Ab 18 t zählt jede Warengruppe als „vorhanden", auch wenn du sie noch
  nicht freigeschaltet hast — die Garantie ist dann erfüllt, deine gefilterte
  Liste bleibt aber leer.
* Kurze Touren gehen in die vier nächsten Städte; die können im Ausland
  liegen und werden gefiltert, wenn das Land nicht freigeschaltet ist.
* Gewertet wird der Ort, an dem der LKW als Nächstes frei wird (Ziel der
  laufenden Fahrt oder Ende der Tourkette). Ein LKW an einer Ladesäule hat
  keinen Standort der zählt.
* Beispiel Dänemark: nur zwei Städte im Spiel; von Kopenhagen aus sind zwei
  der vier nächsten Nachbarn schwedisch — das Freischalten Schwedens öffnet
  also die halbe Nachbarschaft und damit die fehlende Rückfracht.

---

## Verteilung der Warengruppen (Stand: 11. November 2026)

| Warengruppe | Anteil 7,5 t | Anteil ab 18 t | Anteil über alle Aufträge |
| :--- | :--- | :--- | :--- |
| Standard | 100 % | 42 % | 62,3 % |
| Stückgut | 0 % | 16 % | 10,4 % |
| Holz | 0 % | 9 % | 5,9 % |
| Container | 0 % | 8 % | 5,2 % |
| Kühlgut | 0 % | 8 % | 5,2 % |
| Flüssig | 0 % | 6 % | 3,9 % |
| Maschinen | 0 % | 6 % | 3,9 % |
| Gefahrgut | 0 % | 5 % | 3,3 % |

In der 7,5-t-Klasse gibt es nur Standardfracht, daher weichen die
Prozentsätze „über alle Aufträge" dort ab.

---

## Vergütung pro Warengruppe (Stand: Mitte November 2026)

Basissatz pro Tonnenkilometer und Coin-Multiplikator je Warengruppe:

| Warengruppe | Fahrzeugtyp | Basissatz | Coins |
| :--- | :--- | :--- | :--- |
| Standard (Planen) | 7,5 t (Einstiegsfahrzeug) | 0,52 €/t-km | ×1,0 (Basis) |
| Gefahrgut | — | 1,05 €/t-km | ×1,8 |
| Maschinen | Tieflader | 0,88 €/t-km | ×1,6 |
| Flüssig | Tanker | 0,85 €/t-km | ×1,5 |
| Kühlgut | Kühlkoffer | 0,78 €/t-km | ×1,4 |
| Container | — | 0,64 €/t-km | ×1,2 |
| Holz | — | 0,60 €/t-km | ×1,3 |
| Stückgut | Koffer | 0,58 €/t-km | ×1,1 |

---

## Börsen-Suche & Filterwerkzeuge

Disponenten können die Auftragssuche mit integrierten Filterwerkzeugen verfeinern:

* **Mehrfachauswahl-Tonnage**: Filtere Aufträge nach exakter Fahrzeugklasse.
* **Mehrfachauswahl-Frachtgruppenfilter**: Zeige mehrere freigeschaltete
  Frachttypen an.
* **Standortnähe**: Zeige Aufträge in der Nähe deines LKWs an.
* **Entfernung**: Sortiere Aufträge nach Entfernung zwischen Start und Ziel.
* **Ertrags-Rendite-Sortierung**: Sortiere Aufträge nach Auszahlungssumme.
