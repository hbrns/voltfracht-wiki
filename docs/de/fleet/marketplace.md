# Gebrauchtwagenmarkt

Der Gebrauchtwagenmarkt in VoltFracht ermöglicht den
Player-to-Player-Handel (P2P) mit Fahrzeugen. Disponenten können gebrauchte
E-LKWs zum Verkauf an andere Unternehmen anbieten oder vorkommisionierte
Flottenmodelle zu niedrigeren Kosten im Vergleich zu den Neupreisen erwerben,
um ihre Operationen auszubauen.

---

## 1. Zugangsvoraussetzungen & Stellplatzverwaltung

Der P2P-Fahrzeughandel unterliegt spezifischen Freischaltungsstufen und
Flottenstellplatz-Regeln:

* **Level-3-Zugangssperre**: Der P2P-Handel auf dem Marktplatz wird
  freigeschaltet, wenn ein Unternehmen **Level 3** erreicht. Unter Level 3
  können Spieler neue Modelle aus dem Showroom kaufen oder Sofortverkauf nutzen,
  können aber keine Fahrzeuge von anderen Spielern listen oder kaufen.
* **Stellplatz-Freigabe beim Listenvorgang**: Sobald ein Fahrzeug auf dem
  Marktplatz gelistet wird, wird dessen aktiver Depot-Stellplatz sofort
  freigegeben. Dies ermöglicht es Unternehmen, Ersatz-LKWs zu kaufen oder zu
  aktivieren, ohne auf den Verkauf des gelisteten Fahrzeugs warten zu müssen.
* **Direkter Kauf in die Halle**: Käufer können gebrauchte Fahrzeuge direkt
  in **die Halle** erwerben, wenn die aktiven Depot-Stellplätze derzeit voll
  sind.
* **Abgelaufene Listung**: Angebote bleiben 7 Tage lang auf dem Markt aktiv.
  Wenn ein Angebot ohne Verkauf abläuft, kann der Besitzer es mit einem
  angepassten Preis neu listen oder einen Sofortverkauf durchführen. Wenn die
  aktiven Depot-Stellplätze voll sind, bleibt die direkte Rückgabe des LKWs
  ins aktive Depot bis zur Kapazitätsfreigabe deaktiviert.

---

## 2. Anti-Missbrauch Preisbegrenzung & Handelslimits

Um Multi-Konto-Ausnutzung, künstliche Vermögensübertragungen und Geldwäsche
zu verhindern, setzt VoltFracht strenge Anti-Missbrauch-Parameter für alle
Marktplatz-Transaktionen durch:

| Sicherheitsregel | Mechanismus | Spielzweck |
| :--- | :--- | :--- |
| **Preisspanne** | Minimum: Aktueller Sofortverkaufswert<br>Maximum: 1,2× Neupreis | Verhindert das Listen von LKWs zu Fantasiepreisen (z. B. 10× Neupreis), um Geld zwischen Konten zu übertragen. |
| **Partner-Handelslimit** | Maximal 3 Transaktionen pro Tag zwischen denselben zwei Unternehmen | Verhindert schnelles Kauf- und Verkaufs-Zyklen zwischen Haupt- und Nebenkonten. |
| **Level-Sperre** | Unternehmen Level 3 für P2P-Marktzugang erforderlich | Verhindert, dass neu erstellte Wegwerfkonten sofort handeln können. |

---

## 3. Sofortverkauf vs. Player-zu-Player-Handel

Disponenten haben zwei verschiedene Methoden zur Liquidierung von
Flottenvermögen:

### Sofortverkauf

* **Verfügbarkeit**: Auf allen Levels direkt aus Depot oder Halle freigeschaltet.
* **Bewertung**: Auszahlung wird dynamisch basierend auf Fahrzeugkilometerstand,
  Batteriedegradation und Modellklasse berechnet.
* **Geschwindigkeit**: Sofortige Barauszahlung direkt auf das Unternehmenskonto
  ohne Listungsverzögerungen.

### P2P-Marktplatzverkauf

* **Verfügbarkeit**: Erfordert Unternehmen Level 3.
* **Bewertung**: Verkäufer setzt den Anfragepreis manuell innerhalb der
  dynamischen Preisspannen (zwischen Sofortverkaufswert und 1,2× Neupreis).
* **Flexibilität**: Nützlich für den Handel mit seltenen Sammlerfahrzeugen (wie
  zum Beispiel
  [Early Bird 7S](../vehicles/special-events.md#early-bird-7s-sammlerfahrzeug)
  oder [limitierte Event-LKWs](../vehicles/special-events.md)), deren Marktwert
  über den Standard-Abschreibungskurven liegt.
