# VoltFracht Wiki — Getting Started Guide

Welcome to **VoltFracht**, an electric freight dispatching and logistics
management simulation developed by solo indie developer **Sebastian Giove**.
In VoltFracht, you act as the company dispatcher (*Disponent*). You choose the
freight, select route strategies, and manage fleet expansion across Europe while
your autonomous e-trucks handle the driving and charging navigation.

---

## 1. Platform Availability & Account System

VoltFracht is designed for seamless cross-platform play across desktop and
mobile devices:

*   **Web Browser**: Play directly at
    [voltfracht.sgio.app](https://voltfracht.sgio.app/) with no installation
    required. The web client receives instant game updates first.
*   **iOS / iPadOS**: Available on the Apple App Store for iPhone and iPad
   (requires iOS 15.0 or later).
*   **Android**: Available on the Google Play Store.
*   **Account Synchronization**: A single account (Google, Apple, or email
    login) syncs your fleet, capital, and progress seamlessly across browser
    and mobile apps. You can also start instantly as a guest without creating an
    account.
*   **Monetisation & Privacy**: VoltFracht is completely free-to-play. Progress
    is non-compulsory; optional coin packs and a PRO subscription (€4.99/month)
    are available. The game collects no personal user data from mobile clients.

---

## 2. Onboarding & Home Depot Selection

When starting your company, you select a home depot city and home country:

### The Neighboring Country Rule

In VoltFracht, unlocking any country automatically grants you operational access
to that country **plus all directly adjacent neighboring countries**.

> **Optimal Starting Location: Germany**  
> When choosing your starting home depot, **Germany (*Deutschland*) is widely
> considered the best choice**. Because Germany shares borders with **9
> neighboring countries** (Denmark, Poland, Czech Republic, Austria,
> Switzerland, France, Luxembourg, Belgium, and Netherlands), selecting a German
> home depot grants immediate access to 10 European nations from day one without
> spending coins or capital to unlock new borders.

---

## 3. First Steps & Starting Capital Strategy

### Launch Strategy: Don't Wait!

Your company begins with a single 7.5-tonner e-truck in your home depot and a
starting cash balance. 

> **Developer Recommendation**: Do not sit idle waiting for your first truck to
> finish its run! Use your starting capital immediately to purchase a 2nd or 3rd
> 7.5t truck. Having multiple vehicles active from the start accelerates cash
> flow and levels up your company much faster.

### Beginner Bonus (+10%)

All newly registered companies receive a **+10% Beginner Bonus** on the base
payout of every completed job for their **first 7 days**. This bonus is
automatically added to delivery payouts and itemized in your financial logs.

### Leveling & Depot Expansion

*   **Company Leveling**: Buying additional depot slots increases your company
    level (e.g., spending €250'000 for a 2nd depot slot levels your account up
    to Level 2).
*   **Depot Slots**: Depot capacity caps the number of active, dispatchable
    trucks. Unneeded vehicles can be stored in the **Hall** to free up depot
    slots without selling them.

---

## 4. Understanding the Dispatching Loop

```mermaid
flowchart LR
    A["Select Freight<br/>from Deals"]
    B["Autonomous Run<br/>& Auto-Charging"]
    C["Payout & Progress<br/>Money, Coins & XP"]

    A --> B --> C
```

1. **Select Cargo**: Open the **Orders**, filter by tonnage class or cargo type,
   and evaluate payout vs. route distance.
2. **Dispatch Truck**: Once assigned, the truck autonomously routes through
   real-world road networks, calculating required charging stops based on
   payload and battery capacity.
3. **Collect Payouts**: Upon arrival, your account receives the freight payout,
   Coins, and experience points. Reinvest earnings into new truck models, higher
   tonnage licenses, or depot expansions.

---

## 5. Real-World Data Engine

VoltFracht integrates **authentic European geographical, infrastructural, and
economic data streams** directly into its core gameplay loop. Every delivery
calculation, battery consumption rate, and charging cost reflects real-world
physics and real-time European infrastructure.

### Data Engine Architecture

| Data Layer | Primary Source | In-Game Simulation Effect |
| :--- | :--- | :--- |
| **Charging Network** | **OpenChargeMap** | Maps 12'481+ charging locations and 58'598+ individual charge points across 109 cities in 33 countries. |
| **Electricity Spot Prices** | **ENTSO-E** | Dynamic, daily country-specific spot prices that dictate charging cost per kWh. |
| **Road Routing** | **OSRM Server** | Self-hosted Open Source Routing Machine for accurate European road network distances. |
| **Traffic & Congestion** | **HERE Traffic** | Live European traffic feeds and roadwork delays affecting transit times. |
| **Topography & Elevation** | **SRTM Data** | Shuttle Radar Topography Mission elevation data; steep inclines drain battery range faster. |
| **Weather Cycle** | **Live Temperature** | Real daily weather cycles; extreme cold or heat reduces battery efficiency and driving range. |

### Charging Infrastructure (OpenChargeMap)

VoltFracht utilizes real-world data from **OpenChargeMap** to plot actual heavy
electric vehicle charging locations:

* **Real Locations & Power Outputs**: Includes stations delivering up to
  **600 kW** charging power.
* **Plug Availability & Queueing**: Plug status (free/occupied) updates live.
  If all plugs at a station are occupied, trucks wait with a live countdown
  timer until a plug opens.
* **Infrastructure Gaps**: In regions where real-world charging infrastructure
  is sparse, charging stops require strategic range management.

### Dynamic Electricity Costs (ENTSO-E)

Charging expenses are governed by official daily electricity market data
provided by **ENTSO-E** (European Network of Transmission System Operators
for Electricity):

* **Country-Specific Rates**: Electricity prices fluctuate daily depending on
  the country where the truck charges.
* **Margin Impact**: High electricity prices in certain countries directly
  squeeze profit margins on long-distance cross-border runs.

### Topography & Weather Physics

* **SRTM Elevation**: Driving up mountain passes or steep gradients
  significantly increases energy consumption per kilometer, while downhill
  stretches allow energy recuperation.
* **Weather Engine**: Real daily temperature cycles impact battery resistance
  and cooling demand, factored directly into automated route planning.
