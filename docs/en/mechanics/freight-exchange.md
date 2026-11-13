# Freight Exchange & Cargo Systems

The **Orders** Freight Exchange is the central marketplace where
dispatchers evaluate and accept logistics contracts across Europe.

---

## Order Mechanics & Availability

Every contract listed on the exchange displays payload requirements, cargo
type, departure, destination, distance, and financial yields.

* **Independent Job Lists**: Since update 0.17, accepting an order removes it
  only from your own exchange view, preventing order sniping by others.
* **Beginner Payout Boost**: New companies receive a +10% bonus on base rates
  for their first 7 days.
* **PRO Member Advantages**: Active PRO subscribers earn a +25% score bonus on
  completed runs.
* **Availability Timer**: The bar at the bottom of an order shows how long it
  stays available; price, coins and bonuses are listed on the right.
* **Seasonal Event Cargo**: Event cargo (e.g. Halloween pumpkins) can be
  hauled without a license while the event is running.

---

## The Three Order Visibility Filters

Visible orders on your freight exchange are governed by three independent
filter criteria:

1. **Tonnage Capacity**: Your truck's payload class must match the job.
2. **Cargo Group License**: You must possess the license for the cargo type.
3. **Country Access**: Both origin and destination must be in unlocked
   nations.

---

## Tonnage Classes

Vehicles and freight contracts fall into five primary weight classes:

| Class | Gross Weight | Ideal Operating Role |
| :--- | :--- | :--- |
| **7.5t** | Light Distribution | Urban delivery & regional starter runs |
| **18t** | Medium Haul | Regional distribution & event transport |
| **26t** | Heavy Rigid | Inter-city logistics & medium haulage |
| **40t** | Articulated Semi | Long-distance cross-border logistics |
| **44t** | Articulated Heavy Semi | Long-distance cross-border heavy logistics |

---

## Cargo Categories & Licenses

Unlocking additional cargo licenses is the most effective way to increase
the number of available profitable orders:

* **Standard** Cargo: Unlocked by default for all starting fleets.
* **Container**: Container transport.
* **General Cargo**: General cargo transport.
* **Hazmat**: Specialized hazardous cargo.
* **Liquid**: Tanker logistics for liquid freight.
* **Machinery**: Machinery transport.
* **Refrigerated**: Temperature-controlled transport.
* **Timber**: Specialized timber transport.
* **Seasonal & Event Cargo**: Limited-time freight like Halloween pumpkins.

---

## Per-Location Order Guarantee (as of November 2026)

The server checks every tick whether each location of an active player has
one short and one long tour per payload class — two of each if the exchange
is not full. If something is missing, it is refilled immediately.

An empty order list therefore almost always has one of the three filters as
its cause, not the general pool:

* The guarantee is per city and tonnage class, not per player. If several
  other players' trucks are parked there, you share the same orders.
* From 18 t upwards, every cargo group counts as "present", even if you have
  not unlocked it yet — the guarantee is then fulfilled, but your filtered
  list stays empty.
* Short tours go to the four nearest cities; those can be abroad and are
  filtered out if the country is not unlocked.
* What counts is the place where the truck will be free next (destination of
  the current trip or end of the tour chain). A truck at a charging station
  has no location that counts.
* Example Denmark: only two cities in the game; from Copenhagen, two of the
  four nearest neighbors are Swedish — unlocking Sweden therefore opens half
  the neighborhood and with it the missing return freight.

---

## Cargo Group Distribution (as of 11 November 2026)

| Cargo group | Share at 7.5 t | Share from 18 t | Share across all orders |
| :--- | :--- | :--- | :--- |
| Standard | 100 % | 42 % | 62.3 % |
| General cargo | 0 % | 16 % | 10.4 % |
| Timber | 0 % | 9 % | 5.9 % |
| Container | 0 % | 8 % | 5.2 % |
| Refrigerated | 0 % | 8 % | 5.2 % |
| Liquid | 0 % | 6 % | 3.9 % |
| Machinery | 0 % | 6 % | 3.9 % |
| Hazmat | 0 % | 5 % | 3.3 % |

The 7.5 t class only has Standard cargo, which is why the "across all
orders" percentages differ there.

---

## Pay per Cargo Group (as of mid-November 2026)

Base rate per ton-kilometre and coin multiplier per cargo group:

| Cargo group | Vehicle type | Base rate | Coins |
| :--- | :--- | :--- | :--- |
| Standard | 7.5 t (starter vehicle) | 0.52 €/t-km | ×1.0 (base) |
| Hazmat | — | 1.05 €/t-km | ×1.8 |
| Machinery | low-loader | 0.88 €/t-km | ×1.6 |
| Liquid | tanker | 0.85 €/t-km | ×1.5 |
| Refrigerated | refrigerated box | 0.78 €/t-km | ×1.4 |
| Container | — | 0.64 €/t-km | ×1.2 |
| Timber | — | 0.60 €/t-km | ×1.3 |
| General cargo | box | 0.58 €/t-km | ×1.1 |

---

## Exchange Search & Filtering Tools

Dispatchers can refine job searches using built-in toolbar filters:

* **Collapsible Tonnage Selector**: Filter jobs by exact vehicle class.
* **Multi-Select Cargo Group Filter**: View multiple unlocked cargo types.
* **Location Proximity**: Shows jobs near your truck.
* **Location Distance**: Sort orders by distance.
* **Revenue Yield Sorting**: Sort orders by payout.
