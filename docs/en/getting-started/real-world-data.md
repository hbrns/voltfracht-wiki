# Real-World Data Integration Engine

VoltFracht differentiates itself from traditional transport simulations by
replacing artificial game maps and randomized variables with **authentic
European geographical, infrastructural, and economic data streams**. The
simulation pulls directly from industry-standard APIs and geographic datasets
to model the exact physical and economic environment faced by heavy electric
freight logistics.

---

## 🌐 Overview of Integrated Data Sources

Every dispatch decision, battery consumption calculation, charging cost, and
transit time is governed by five core real-world data feeds:

| Data Layer | Primary Data Source | Scale & Coverage | In-Game Simulation Mechanics |
| :--- | :--- | :--- | :--- |
| **Charging Infrastructure** | **OpenChargeMap** | 12'481+ locations / 58'598+ plugs across 109 cities in 33 countries | Dictates charging station coordinates, plug power outputs (up to 600 kW), live plug occupancy, and queue timers. |
| **Energy Market Prices** | **ENTSO-E** | Daily spot market pricing across European bidding zones | Establishes dynamic electricity costs per kWh for each country, directly impacting trip profit margins. |
| **Road Network Routing** | **OSRM Server** | Self-hosted Open Source Routing Machine mapping 33 nations | Calculates exact road distance, highway routes, and border crossings for heavy-duty electric trucks. |
| **Live Traffic & Congestion** | **HERE Technologies** | Real-time European highway traffic & active roadworks | Dynamically adjusts transit times and introduces delay risks on heavily congested corridors. |
| **Terrain & Elevation** | **SRTM Data** | NASA Shuttle Radar Topography Mission 30-metre mesh | Applies realistic grade resistance: steep mountain climbs drain battery rapidly, while downhill slopes allow energy recuperation. |
| **Atmospheric Physics** | **Live Temperature Cycles** | Daily European weather patterns | Extreme cold or high heat increases battery internal resistance and HVAC energy draw, reducing overall driving range. |

---

## ⚡ 1. Charging Infrastructure (OpenChargeMap)

VoltFracht utilizes real-world coordinates and technical specifications provided
by **OpenChargeMap** to populate its charging network.

* **Power Classes & Charging Speed**: Stations range from standard CCS 40 kW
  chargers up to ultra-fast **600 kW Megawatt-capable chargers**. A truck's
  charging time is determined by the intersection of the truck's maximum intake
  rate and the station's plug capacity.
* **Live Plug Status & Queues**: Each charging station tracks available versus
  occupied plugs in real time. If all plugs are occupied when a truck arrives,
  the vehicle enters a waiting state with a live countdown timer until a plug
  clears.
* **Infrastructure Bottlenecks**: By mirroring actual charger density,
  VoltFracht exposes real-world infrastructure gaps. In regions like Eastern
  Europe or rural transit corridors where high-power heavy-vehicle charging is
  sparse, dispatchers must plan route buffers carefully or accept lower-power
  (e.g., 40 kW) charging stops.

---

## 💶 2. Dynamic Electricity Costs (ENTSO-E)

Energy expenses are governed by daily market updates from **ENTSO-E** (European
Network of Transmission System Operators for Electricity), reflecting real
wholesale spot market rates.

* **Country-Specific Rates**: Electricity prices fluctuate daily based on the
  national grid market where the truck recharges. 
* **Margin Pressure on Cross-Border Hauls**: A route passing through countries
  with high spot prices will incur significantly higher operational expenses.
  Strategic dispatchers factor national electricity rate differences into route
  selection and bid pricing.

---

## ⛰️ 3. Topography & Elevation Physics (SRTM Data)

To accurately simulate the energy demands of heavy electric transport (7.5t to
44t), VoltFracht integrates **SRTM (Shuttle Radar Topography Mission)**
elevation data along every road segment.

* **Climb Resistance**: Driving loaded e-trucks up steep mountain passes (such
  as the Alps, Pyrenees, or Scandinavian highlands) increases energy draw per
  kilometer substantially compared to flat highway driving.
* **Regenerative Braking**: Downhill segments allow vehicles to recuperate
  kinetic energy back into the battery, partially recovering state-of-charge on
  descent.
* **Route Planner Integration**: The automated route planner factors SRTM
  elevation profiles into its range safety margin before approving a journey.

---

## 🌡️ 4. Weather Physics & Seasonal Temperature Engine

Ambient atmospheric conditions directly impact battery chemistry and thermal
management.

* **Daily Temperature Cycles**: Real-time European weather data dictates local
  ambient temperatures along the route.
* **Range Depletion**: Cold winter temperatures increase internal battery
  resistance and require cabin/battery heating, reducing available range per
  charge. High summer temperatures demand active cooling, similarly increasing
  power draw.
* **Seasonal Events**: Special seasonal events (such as winter logistics or
  autumn Halloween freight challenges) align with weather conditions, testing
  fleet efficiency under varying environmental demands.

---

## 🛣️ 5. Road Routing & Live Traffic (OSRM & HERE)

* **OSRM Routing Engine**: All truck journeys are processed using a custom
  self-hosted Open Source Routing Machine configured specifically for European
  heavy goods vehicle corridors.
* **HERE Traffic Feeds**: Live traffic flow and active roadworks adjust speed
  profiles in real time. Congestion slows down transit, affecting delivery
  deadlines and daily syndicate challenge throughput.

---

## 🔍 Educational & Policy Impact: Mapping the Infrastructure Gap

Beyond its role as an economic simulation, VoltFracht's strict adherence to
real-world data serves a dual purpose as an **infrastructure diagnostic tool**. 

By placing hundreds of active virtual dispatchers on actual European road
networks, the simulation naturally highlights where electric heavy transport
thrives and where real-world charging deserts, low-power bottlenecks, and border
congestion still present major hurdles to the decarbonization of European
freight logistics.
