# Release Log & Developer Roadmap

Track the version release history, major feature updates, and future
development plans for VoltFracht, the European electric logistics simulation.

---

## 🚀 Developer Roadmap

Solo developer Sebastian Giove actively develops VoltFracht in close
collaboration with the player community. Below is the current feature
roadmap:

### Upcoming Version 0.19 — Driver & Staff Management

* **Personnel System (*Personal & Fahrer*)**: Introduce a dedicated staff
  management section where dispatchers hire, train, and manage e-truck drivers.
* **Driver Skill Qualification**: Train drivers across specialized vehicle
  classes, energy-efficient driving techniques, and handling hazardous cargo.
* **Experience Progression**: Driver experience levels will influence vehicle
  battery efficiency, turnaround times, and contract bonuses.

### Upcoming Version 0.20 — Multi-Depot Fleet Expansion

* **Regional Depots**: Expand your logistics enterprise beyond your home depot
  by acquiring secondary company depots across major European cities.
* **Fleet Cap Allocation**: Active dispatchable trucks remain capped at 12
  vehicles per depot to maintain strategic dispatch depth without
  micromanagement clutter.
* **Relocation Strategy**: Secondary depots allow regional fleet staging,
  dramatically reducing costly empty repositioning runs (*Leerfahrten*).

### Future Modules — Heavy Transport & Customization

* **Heavy Transport (*Schwerlast*)**: Specialized multi-axle heavy transport
  e-trucks, oversized cargo licenses, and custom route clearances.
* **Leaderboard Titles & Badges**: Earn custom dispatcher titles, prefixes,
  and badges displayed on international leaderboards based on company
  milestones.
* **Short-Haul Rebalancing**: Ongoing economic adjustments to refine contract
  profitability ratios between short regional runs and long cross-border hauls.

---

## 📜 Version Release History

### Version 0.18 — European Tour & Charging Overhaul

Released October 2026 across Web, iOS, and Android platforms.

| Feature Category | Major Enhancements Introduced |
| :--- | :--- |
| **Syndicate Tour** | **Tour durch Europa**: Daily 20-stage cooperative expedition with live map tracking of member trucks, stage progress bars, and tiered rewards at 5, 10, 15, and 20 completed stages. |
| **Charging Engine** | Station-swapping on active runs, minimum power filters, per-charger battery target state-of-charge, live plug queue countdowns, and dynamic plug availability. |
| **Sparmodus** | Map-off rendering mode designed to eliminate 3D GPU load, reduce device heating, and save battery during long autonomous runs. |
| **Syndicate Roles** | **Treasurer (*Kassenwart*)** role, 10x community treasury expansion, single-click bulk donations, Leader crown icon (*Krone*), and automated alert banners. |
| **Support System** | Direct in-game developer bug responses with push notifications, plus unique itemized receipt numbers (`Belegnummer`) for financial audit tracking. |
| **Fleet Storage** | Instant vehicle sales directly from **The Hall (*Die Halle*)**, buying marketplace trucks directly into storage, and custom truck naming. |

### Version 0.17 — Storage Hall & Marketplace Filters

Released September 2026 across Web and Mobile stores.

* **The Hall (*Die Halle*)**: Vehicle storage facility allowing dispatchers
  to park idle trucks off-slot, preserving mileage and resale value without
  selling.
* **Freight Exchange Upgrade**: Multi-select cargo group filters,
  location-based proximity search (*Nur mein Standort*), and revenue yield
  sorting (*Umsatz/km*).
* **Deals Integration**: Direct deal indicators on job listings and quick
  links connecting active deals to freight exchange searches.
* **Fair-Play Rules**: Removal of Coin-to-Euro currency conversions and
  capping Coin-funded depot slot upgrades at Level 8.

### Version 0.16 — Stability & Connectivity

Released September 2026.

* **Connection Stability**: Fixed map loop rendering crashes on iOS hardware
  and optimized server-client web socket reconnects.
* **Seasonal Pumpkin Event**: Limited-time Halloween freight contracts and
  seasonal collector trucks (Spectre 7.5t and 18t models).

### Version 0.15 — Used Truck Marketplace

Released September 2026.

* **P2P Marketplace**: Player-to-player vehicle trading with customizable
  listing prices and instant slot release upon posting.
* **Instant Sell (*Sofortverkauf*)**: Algorithmic instant cash liquidation
  based on mileage depreciation.
* **Early Bird 7S**: 30-day limited collector e-truck with a nominal market
  value of €150,000.
* **Responsive Mobile UI**: Complete landscape layout redesign and simplified
  mobile navigation panels.

### Version 0.14 & Earlier — Core Engine Launch

Released August 2026.

* **Simulation Foundation**: Launch of the core European logistics map
  spanning 33 countries and 109 cities.
* **Data Stream Integrations**: Integration of OpenChargeMap station data,
  ENTSO-E daily spot energy pricing, OSRM routing, HERE traffic, and SRTM
  elevation profiles.
* **Vehicle Classes**: Initial deployment of 7.5t, 18t, 26t, and 44t electric
  truck classes.
