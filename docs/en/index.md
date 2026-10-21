# Welcome to the VoltFracht Wiki

Welcome to the official community and documentation Wiki for **VoltFracht**
(also known as *VoltFracht: E-Truck Tycoon*), the European electric logistics
management simulation.

VoltFracht is an indie logistics strategy game developed by **Sebastian Giove**.
In VoltFracht, you take on the role of a freight dispatcher ("Disponent")
building and managing a zero-emission electric trucking enterprise across
real-world European transport networks.

---

## 🚛 What is VoltFracht?

Unlike traditional driving simulators, VoltFracht puts you strictly in the
dispatch office (**"You're the boss, not the driver"**). Your trucks drive
autonomously, planning their own routes and charging stops based on real-world
infrastructure data. Your job is strategic: evaluating cargo profitability,
expanding fleet capacity, navigating fluctuating energy costs, trading vehicles,
and coordinating with fellow dispatchers in competitive syndicates.

### Key Highlights

* **Cross-Platform Play**: Play seamlessly in any modern web browser
  ([voltfracht.sgio.app](https://voltfracht.sgio.app/)) or via native mobile
  applications on **iOS** (App Store) and **Android** (Google Play Store) with
  unified account progression.
* **Real-World Infrastructure**: Built directly on actual European geographic
  and logistics data sources—mapping over 12'000 charging locations and 58'000
  charge points across 109 cities in 33 countries.
* **Real-Time Logistics Factors**: Payouts and range depend on real daily spot
  electricity prices, live traffic flow, roadworks, weather cycles, and
  Shuttle Radar Topography Mission (SRTM) terrain elevation profiles.
* **Solo Indie Development**: Created by Sebastian Giove in his spare time,
  driven directly by community feedback, weekly transparent release logs, and
  bug reporting.

---

## 🌐 Real-World Data Integration Engine

VoltFracht mirrors real-world electric heavy transport infrastructure challenges
by pulling data directly from leading logistics and geography APIs:

| Data Source | Integration in VoltFracht | Game Impact |
| :--- | :--- | :--- |
| **OpenChargeMap** | 12'481+ charging locations / 58'598+ charge points (up to 600 kW) | Determines live plug availability, charging speed, and waiting queues. |
| **ENTSO-E** | Daily spot market electricity prices per country | Directly affects charging costs and margin calculations per run. |
| **HERE Technologies** | Real-time traffic flow and active roadworks | Modifies trip durations and detour planning. |
| **SRTM Elevation** | High-precision terrain and topography data | Climbs and mountain passes significantly increase battery power consumption. |
| **OSRM Routing** | Custom open-source road network routing engine | Calculates exact truck driving paths across 33 European nations. |

---

## 📚 Wiki Navigation Structure

Explore the Wiki sections below to master electric fleet dispatching and
syndicate competition:

=== "1. Getting Started & Mechanics"

    * [**Overview & Onboarding**](getting-started/overview.md): Choose your home
      depot, leverage starter capital, and buy your first 7.5t e-trucks.
    * [**Freight Exchange & Cargo**](mechanics/freight-exchange.md): Filter
      orders across tonnage classes (7.5t to 44t), standard, refrigerated,
      liquid, and dangerous goods cargo.
    * [**Routing & Charging**](mechanics/routing-charging.md): Manage battery
      state-of-charge, weather impacts, and plug availability.

=== "2. Fleet, Market & Economy"

    * [**Depot & Hall**](fleet/depot-hall.md): Upgrade depot capacity (Levels
      1–10) and store inactive trucks in the **Hall** to preserve mileage and
      slot space.
    * [**Used Truck Marketplace**](fleet/marketplace.md): P2P vehicle trading
      rules, anti-abuse price caps (1.2x new price limit), and level
      requirements.
    * [**Economy & Fair-Play**](economy/fair-play.md): In-game currency,
      optional PRO subscription (€4.99/mo), and strict AGB anti-bot/anti-cheat
      rules.

=== "3. Syndicates & Updates"

    * [**Syndicates & Challenges**](syndicates/challenges.md): Team up in
      10-company alliances, compete across 17 promotion leagues, and assign
      roles (*Treasurer*).
    * [**Tour through Europa**](syndicates/tour-through-europe.md): Daily
      20-stage cooperative syndicate event with live map tracking and tier
      rewards.
    * [**Release Log & Roadmap**](references/changelog.md): Track release updates
      and future features (driver training, multi-depot, heavy transport).

---

## ⚡ Quick Start Recommendations for New Dispatchers

!!! tip "Starter Strategy"
    1. **Choose Germany as your home country**: Germany starts with 9
       neighboring countries unlocked, giving you the broadest initial freight
       options without paying early border expansion fees.
    2. **Reinvest immediately**: Do not wait for your first truck to finish its
       return trip. Use your initial starting capital to purchase a second or
       third 7.5t truck right away to maximize revenue flow.
    3. **Watch Cargo Filters**: If no profitable routes appear, check your cargo
       filters. Unlocking additional cargo groups (refrigerated, hazardous,
       liquid) opens significantly more freight choices than just upgrading
       tonnage classes alone.

---

## 🤝 Community & Official Channels

* **Official Discord**: :fontawesome-brands-discord:{ .discord } [Join the
  Community Server](https://discord.gg/dVH4Hj5wVM)
* **Social Channels**:
  :fontawesome-brands-instagram:{ .instagram }
  [Instagram](https://www.instagram.com/voltfracht) |
  :fontawesome-brands-youtube:{ .youtube }
  [YouTube](https://www.youtube.com/@VoltFracht) |
  :fontawesome-brands-tiktok:{ .tiktok }
  [TikTok](https://www.tiktok.com/@voltfracht)
