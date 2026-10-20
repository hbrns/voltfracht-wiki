# Routing & Charging Mechanics

In VoltFracht, your electric trucks navigate European road networks
autonomously once dispatched. Successful logistics dispatching relies on
understanding how battery state-of-charge (SoC), topography, weather, and
charging station availability interact along the route.

---

## 1. Autonomous Route Planning & OSRM

VoltFracht utilizes a self-hosted Open Source Routing Machine (OSRM) server
to calculate real-world truck paths across 33 European nations.

* **Turn-by-Turn Navigation**: Trucks follow real road geometry rather than
  straight-line distances.
* **Live Traffic Delays**: Real-time traffic feeds from HERE Technologies adjust
  estimated travel durations and introduce congestion delays.
* **Automatic Stop Selection**: The routing engine calculates energy demand
  and places mandatory charging stops before the vehicle's battery depletes.

---

## 2. Battery State-of-Charge & Energy Physics

A vehicle's effective driving range is dynamically calculated based on three
core physical factors:

| Factor | Primary Driver | In-Game Simulation Effect |
| :--- | :--- | :--- |
| **Payload Weight** | Cargo tonnage class (7.5t–44t) | Heavier freight increases energy consumption per kilometer. |
| **SRTM Topography** | Mountain pass elevation data | Uphill climbs drain battery power rapidly; downhill sections recuperate energy. |
| **Weather Cycle** | Daily temperature fluctuations | Extreme cold or heat increases internal battery resistance and HVAC power draw. |

### Mountain Elevation (SRTM)

Using NASA Shuttle Radar Topography Mission elevation models, driving over
mountain passes like the Alps or Pyrenees consumes up to double the normal
kWh per kilometer during climbs. Conversely, steep descents trigger
regenerative braking, feeding electricity back into the battery pack.

### Temperature & HVAC Impact

The internal weather engine simulates real European daily temperature cycles.
Low ambient temperatures reduce chemical battery efficiency and require
battery pre-heating, while hot summer days trigger high cooling demands. Both
extremes shorten the vehicle's maximum range between charges.

---

## 3. Charging Infrastructure & OpenChargeMap

VoltFracht maps over 12'000 real-world European charging locations and 58'000
charge points using OpenChargeMap infrastructure data.

### Charging Power & Speeds

Charging stations offer varying maximum power outputs ranging up to 600 kW.
A higher kilowatt output significantly reduces the time your truck remains
stationary at a charging station.

### Live Plug Status & Queueing

Every charging location tracks real-time plug occupancy:

* **Free Plugs**: The truck hooks up immediately and begins charging.
* **Occupied Plugs**: If all plugs are busy upon arrival, the truck enters a
  waiting queue with a live countdown timer until a charging bay opens.

### ENTSO-E Electricity Costs

Charging expenses are calculated dynamically based on daily spot market
electricity prices provided by ENTSO-E. Charging in countries with high
spot prices directly increases operational expenses and reduces profit
margins.

---

## 4. Low power (Map-Off Battery Saver)

To optimize your device performance and battery consumption during long game
sessions, VoltFracht features **Low power** mode.

* **Map Disabling**: Toggling low power turns off intensive 3D map rendering vs.
  map on.
* **Client Performance**: Drastically reduces GPU/CPU workload and battery
  drain on mobile devices and web browsers.
* **Background Simulation**: Trucks continue driving, charging, and earning
  revenue with full precision while low power mode is active.
