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
* **Fleet Overview Preview (*Meine Flotte*)**: All trucks at a glance — status
  (ready, en route, charging, loading), battery level, location, destination,
  and route progress. Tapping a truck opens its route, charging plan, and
  consumption details. With PRO, actual consumption is shown as a rolling
  average of recent trips (the last few hundred kilometres weighted most);
  PRO+ adds the deviation from the model's factory spec (valid at half load,
  70 km/h, 15 °C) — green below, red above. Used trucks initially display the
  previous owner's consumption and converge to the buyer's own after roughly
  1'000 driven kilometres. Custom truck names accept letters, numbers, and
  punctuation (no symbols or emoji); the leading number (e.g. #3) remains the
  unique identifier in settlements.

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
  e-trucks, oversized cargo licences, and custom route clearances.
* **Leaderboard Titles & Badges**: Earn custom dispatcher titles, prefixes,
  and badges displayed on international leaderboards based on company
  milestones.
* **Short-Haul Rebalancing**: Ongoing economic adjustments to refine contract
  profitability ratios between short regional runs and long cross-border hauls.
* **PRO Subscription Perks**: 2 additional order-queue slots and a 20 %
  discount on all boosts for PRO subscribers.
* **Test Community**: A dedicated test environment where selected players try
  new features before release, report bugs with screenshots, complete test
  tasks, and give direct feedback.

---

## 📜 Version Release History

### Version 0.18 — European Tour & Charging Overhaul

Released 18 October 2026 across Web, with mobile builds following after web
stabilization period.

#### Core Features

| Feature Category | Major Enhancements Introduced |
| :--- | :--- |
| **Syndicate Tour** | **Tour through Europe**: Daily 20-stage cooperative expedition with live map tracking of member trucks, stage progress bars, and tiered rewards at 5, 10, 15, and 20 completed stages. Syndicate members visible on map with names and real routes. |
| **Charging Engine** | Station-swapping on active runs, minimum power filters, per-charger battery target state-of-charge, live plug queue countdowns with notifications when chargers become available, and dynamic plug availability display. |
| **Low Power Mode** | Map-off rendering mode designed to eliminate 3D GPU load, reduce device heating, and save battery during long autonomous runs. Full functionality retained for route management, charging control, and HUD. |
| **Syndicate Roles** | **Treasurer (*Kassenwart*)** role with financial management permissions, 10x community treasury expansion, single-click bulk donations, Leader crown icon (*Krone*), and automated alert banners for syndicate events. |
| **Support System** | Direct in-game developer bug responses with push notifications, plus unique itemized receipt numbers (`Belegnummer`) for financial audit tracking. |
| **Fleet Storage** | Instant vehicle sales directly from **The Hall (*Die Halle*)**, buying marketplace trucks directly into storage, custom truck naming, and storage management independent of depot slots. |
| **Weather System** | Real daylight cycle implementation with temperature effects. Cold and heat reduce vehicle range, with route planner automatically accounting for weather impacts. |
| **Fair-Play Policy** | New Terms of Service section (consent required at next login): no scripts, bots, macros, auto-clickers, or access to the game outside the provided client; no account sharing, selling, or trading. Game-action timestamps are logged for 90 days (no IP, device, or content data). Escalation order: inquiry first, then warning, then suspension. Applies only after consent, not retroactively. |

#### Patch Updates

##### 0.18.396 (30 October 2026) — Ferry Charging Planning Fix

- **Ferry Charging Planning**: The charging planner treated the ferry port as a
  destination, so before a crossing it charged only what was needed to reach
  the harbor — not the configured target state-of-charge. Root cause: the
  0.18.232 cap that limits the last charging stop before a destination to the
  actually required amount. Applies from the next route planning; ongoing tours
  keep their existing plan.
- **Harbor Leg**: The harbor stage still only requires 50 km of remaining range
  on arrival at the port. Whether this suffices in practice is being monitored
  through player feedback on ferry crossings in the coming days.

##### 0.18.394 & 0.18.395 (29 October 2026)

- **Client**: Swiss flag display corrected.
- **Planning**: Route calculation display issue reported by a player fixed,
  plus several smaller fixes noticed alongside.

##### 0.18.389 (28 October 2026) — Server Performance Overhaul

- **Routing Server**: Responses exceeded the send buffer and aborted
  mid-transmission (283 aborts in the hour before the fix; zero since). Route
  calculation time dropped from ~3.5 s to under 1 s.
- **Charging Plan Completeness**: Long tours occasionally went out with no
  charging plan at all (reported case: 4'107 km to Helsinki with zero charging
  stops). After the fix, none of 139 long tours were affected.
- **Charger Search**: Searching for charging stations along a route performed
  over 20 million unnecessary computation steps per planning run; rebuilt.
- **Finance Page**: A new booking type was not recognized by the category
  overview, sending the finance page into an error state for ~1.5 hours before
  being fixed.

##### Deal Payout Bug & Compensation (27 October 2026)

- **Bug**: Players who negotiated a deal for a long trip, dispatched the truck,
  and logged out lost the deal bonus on arrival — on re-login the deal was
  discarded as expired because the truck had already arrived.
- **Server Update**: 09:00, ~10 minute pause. Bug sealed.
- **Compensation**: 938 deliveries across 90 accounts totalling €39'951'786 in
  lost deal bonuses (smallest case €3'335, largest €124'450). Each case
  reconstructed individually; 82 cases excluded (truck already en route before
  the handshake, a second truck to the same city, or the trip started after
  the deal expired). Compensation paid as individual bookings in finances.
- **Leaderboards**: Pumpkin leaderboard unaffected (kilometre-based). Wealth
  leaderboard shifts only marginally — 0.3 % of total player wealth; 60 accounts
  change rank (largest climb +4 places, largest drop −2), top 10 unchanged.
- **Android**: Version 0.18.382 is now available on Google Play.

##### 0.18.386 (27 October 2026) — Dispatch & Deal Latency

- **Server Update**: 01:00, offline for ~15 minutes. Running tours unaffected.
- Targets delays when dispatching trucks and handling deals. Root cause not yet
  fully identified; tuning parameters included for the coming days.
- **Weather Query**: On repeated errors, now falls back to the last known value
  instead of blocking requests.
- **Routing Under Load**: The OSRM query buffer was increased. Peak load now
  exceeds 1'500 simultaneously driving trucks; since 0.18 every en-route truck
  can be replanned manually and every slider change triggers a new route
  calculation — the resulting load had been underestimated.

##### Silent Security Update (25 October 2026)

- Latest security patches applied server-side. No version change (remains
  0.18.382).

##### 0.18.382 (22 October 2026)

- **Server Update**: Scheduled for 01:00, server restart required (tours
  continue, reconnection needed)
- **Charging Stop Ownership**: User-modified stops (column swapped or
  target SoC adjusted) now display a hand icon and are preserved during
  route replanning. Planner adds intermediate stops if needed rather than
  replacing user stops.
- **Remove Stop Button**: New "Remove stop" button allows deletion of
  redundant charging stops without full route rebuild. Planner prevents
  removal only if stop is essential.
- **UI Fixes**: Dashed line reliably indicates empty trips to chargers.
  Kilometre display formatting now consistent across all views.
- **Mobile Apps**: New builds submitted to Android and iOS stores, containing
  all 0.18 features (Tour through Europe, savings pot, used truck purchase
  into The Hall, plug queue countdowns, per-category notifications, and
  complete charging planning). Release timing depends on store review.

##### 0.18.376 & 0.18.377 (21 October 2026)

- **Ferries**: Fixed ferry symbol incorrectly applying to 15 km land approach
  on each side, creating approximately 12'500 km of free travel. Now only
  actual sea crossings are zero-cost; land travel consumes energy normally.
- **Used Marketplace**: Trucks can now be purchased directly into The Hall.
  Previously blocked when depot was full despite available Hall slots. Slot
  counting now matches shop behavior: stored trucks and own listings do not
  block depot slots.
- **Charging Stops**: Reachability calculations corrected for
  station swapping.
  Zero-benefit stops (e.g., 36%→36%) now skippable.
- **Display**: Loading/unloading now shows correct status with progress
  instead of generic travel status. Menu and leaderboard stability improved.
  White tour line visibility restored.
- **Syndicate & Notifications**: Leader actions now provide explicit feedback
  on rejection reasons. All four notification categories are now accessible
  with browser toggle.
- **Android**: Google login defect fixed (app used incorrect credentials since
  launch). Requires Store update; until then, use voltfracht.sgio.app in
  browser for same account access.

##### 0.18.362 (20 October 2026)

- **Charging Stops**: Station swapping reachability and distance calculations
  fixed. "Nicht erreichbar" now correctly indicates distance issues rather
  than offline status. Plug availability updates live instead of freezing at
  first state. Wishlist stations can be further off-route.
- **Freight Exchange**: "Nur mein Standort" now correctly finds cargo near
  charging stations. Location persistence after arrival fixed, preventing
  erroneous empty leg calculations.
- **Sparmodus**: Stationary trucks can now be sent to charge (previously
  required map view). Charging panel displays target truck with switching
  capability. Trucks at chargers no longer hide the entire panel.
- **UI**: White tour chains restored on map. Boost notifications attached to
  action button. Daily goals scaled more gradually for top players.

##### 0.18.315 (18 October 2026)

- **Routes**: Fixed "truck cannot proceed" errors around Calais caused by
  boundary crossing the Channel, creating island effect for 38 chargers.
  Display distance now shows actual route distance (e.g., Split-Bari
  corrected from 272 km to 1'441 km). "Arrival 0 %" fixed for distant
  chargers.
- **Syndicate & Tour**: White tour line now appears on map regardless of prior
  syndicate access. Savings goals pay full rewards (previously at 1/10th).
  Points now visible in finances. "Fahrbar" filter no longer shows completed
  own stages. Stage acceptance pre-selects truck at location.
- **Dealmaker**: Fixed overly aggressive demand cap flattening the curve.
  Curve peaks restored.
- **UI**: Fixed windows becoming unreachable on smaller screens. Hall sales
  work again even with full depot. Navigation bar restored on Android without
  map. Map tab no longer counts stored trucks as "in transit". Charger
  occupancy now visible on open instead of requiring tap. Status messages no
  longer appear in English.
- **Notifications**: Eliminated duplicate push banners while in-game.

**Release Process**: Version 0.18 underwent 5-7 day internal testing with
community participants on test server before web release. Mobile Store builds to
follow after web stabilization and bug collection period.

---

### Version 0.17.200 — Display Fixes & Halloween Special Launch

Released 04 October 2026 across Web.

#### System Improvements

* Fixed Discord link in game settings (previous time-limited invitation expired,
  replaced with permanent link)
* Coin breakdown display now correctly itemizes: Base Coins, PRO Bonus, and
  Total Coin Credit (previously appeared as confusing additions)
* 44t truck payload bar visibility restored in dark theme (bar colour
  matched background)
* Channel addresses moved to database for centralized management without
  requiring app releases

### Halloween Special Event (03 October 2026 - 31 October 2026)

* **Pumpkin Cargo**: Special seasonal freight available only as 7.5 t and 18 t
  orders. 40 t trucks receive 18 t payout with no size advantage.
* **Spectre Trucks**: Limited Halloween edition Spectre 7.5 t 2026 and Spectre
  18 t 2026 with double points for pumpkin cargo
* **Leaderboard**: Dedicated weekly rankings with rewards for pumpkin hauling

!!! info
    Verified through analysis of 79'000+ real bookings from previous week -
    coin calculations were always correct; only display was misleading. No changes
    to actual payouts. Web-only update. Mobile apps require Store update; use
    [voltfracht.sgio.app](https://voltfracht.sgio.app) in browser for immediate
    access with same account and progress.

---

### Version 0.17 — Storage Hall & Marketplace Filters

Released 30 September 2026 across Web and Mobile stores.

* **The Hall**: Vehicle storage facility allowing dispatchers to park
  idle trucks off-slot, preserving mileage and resale value without
  selling. Trucks in Hall do not consume depot slots.
* **Freight Exchange Upgrade**:
    * Multi-select cargo group filters with collapsible filter panels
    * Location-based proximity search (*Nur mein Standort*)
    * Tonnage filtering
    * Revenue yield sorting (*Umsatz/km*)
    * Freight exchange now loads only when tab is opened, reducing mobile data
      usage and battery consumption
* **Deals Integration**:
    * Direct deal indicators on job listings
    * Quick links connecting active deals to freight exchange searches
    * Deal handshake now evaluates click rather than arrival
* **Fair-Play Rules**:
    * Removal of Coin-to-Euro currency conversions (prevented ranking
      exploitation)
    * Capping Coin-funded depot slot upgrades at Level 8
    * Coins valid only for action trucks, once per account
* **Bug Fixes**:
    * Fixed new players starting with 0 € outside 37 cities (start capital
      present but not displayed)
    * Fixed app reloading on every third new player with 10-12 second hang
    * Fixed missing kilometer markers corrupting entire tours
    * PRO bonus now displayed in settlements (was being paid but not shown)
    * "Profitability per vehicle" no longer duplicates vehicles on reload
    * Own depot now always shows correct flag

#### Patch Update

##### **0.17.198** (02 October 2026)

- Tonnage filtering in freight exchange, fleet
  info visible in syndicate leaderboard, charging screen cleanup, mobile
  temperature optimization through reduced background loading

---

### Version 0.16 — Stability & Connectivity

Released 29 September 2026.

* **Connection Stability**:
    * Fixed map loop rendering crashes on iOS hardware
    * Optimized server-client web socket reconnects
    * Reduced data transfer on connection (no longer sending all player routes,
      only user's own routes)
* **Performance**:
    * Server-side fixes for database access bottlenecks during player surges
    * Server optimizations significantly reduced response times
* **Economic Adjustments**:
    * Removed Coin-to-Euro currency conversion
    * Depot slot upgrades with Coins capped at Level 8
* **Bug Fixes**:
    * Trucks with less than 10 % battery no longer permanently stuck (fixed
      outdated charger IDs)
    * PRO bonus no longer drops to 0 % when arriving while offline
    * Fixed trucks missing from fleet overview after offline completion (display
      error only; trucks were never actually lost)
    * Delivery notifications now show correct credited amount
    * iOS: Fixed keyboard causing content to jump out of view
    * Mobile: Reduced charger icon size on Europe view to prevent map
      obstruction

---

### Version 0.15 — Used Truck Marketplace

Released early September 2026.

* **P2P Marketplace**: Player-to-player vehicle trading with customizable
  listing prices and instant depot slot release upon posting.
* **Instant Sell (*Sofortverkauf*)**: Algorithmic instant cash liquidation based
  on mileage depreciation.
* **Early Bird 7S**: 30-day limited collector e-truck with a nominal market
  value of €150'000.
* **Responsive Mobile UI**: Complete landscape layout redesign and simplified
  mobile navigation panels.
* **Bug Fixes**: Addressed connection stability issues affecting iOS users with
  version 0.15.70 (excessive data transfer causing disconnections).

---

### Version 0.14 & Earlier — Core Engine Launch

Released August 2026.

* **Simulation Foundation**: Launch of the core European logistics map spanning
  31 countries and 103 cities.
* **Data Stream Integrations**: Integration of OpenChargeMap station data,
  ENTSO-E daily spot energy pricing, OSRM routing, HERE traffic, and SRTM
  elevation profiles.
* **Vehicle Classes**: Initial deployment of 7.5 t, 18 t, 26 t, and 44 t
  electric truck classes.
