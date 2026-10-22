# Used Truck Marketplace

The Used Truck Marketplace in VoltFracht enables  player-to-player (P2P) vehicle
trading. Dispatchers can list used e-trucks for sale to other companies or
purchase pre-owned fleet models to expand their operations at lower costs
compared to brand-new showroom prices.

---

## 1. Access Requirements & Slot Management

P2P vehicle trading is subject to specific unlock gates and fleet slot rules:

* **Level 3 Access Gate**: P2P trading on the marketplace unlocks when a 
  company reaches **Level 3**. Below Level 3, players can purchase new models 
  from the showroom or use instant sell (*Sofortverkauf*), but cannot list or 
  buy vehicles from other players.
* **Slot Liberation Upon Listing**: As soon as a vehicle is listed on the 
  marketplace, its active depot slot is immediately freed up. This allows 
  companies to purchase or activate replacement trucks without waiting for the 
  listing to sell.
* **Direct Purchase to Hall**: Buyers can purchase used vehicles directly into 
  **The Hall** if active depot slots are currently full.
* **Expired Listing Handling**: Offers remain active on the market for 7 days. 
  If an offer expires without selling, the owner can re-list it with an 
  adjusted price or execute an instant sell. If active depot slots are full, 
  returning the truck directly to the active depot remains disabled until 
  capacity opens up.

---

## 2. Anti-Abuse Price Capping & Trading Limits

To prevent multi-account exploitation, artificial wealth transfers, and cash 
funneling, VoltFracht enforces strict anti-abuse parameters on all marketplace 
transactions:

| Security Rule | Mechanism | Gameplay Purpose |
| :--- | :--- | :--- |
| **Price Range Cap** | Minimum: Current Instant-Sell Value<br>Maximum: 1.2× New Vehicle Price | Prevents listing trucks at fantasy prices (e.g., 10× new price) to transfer money between accounts. |
| **Partner Trade Cap** | Maximum 3 transactions per day between the same two companies | Prevents rapid buy-and-burn cycling between main and alt accounts. |
| **Level Gate** | Company Level 3 required for P2P market access | Prevents newly created throwaway accounts from trading immediately. |

---

## 3. Instant Sell vs. Player Trading

Dispatchers have two distinct methods for liquidating fleet assets:

### Instant Sell (*Sofortverkauf*)

* **Availability**: Unlocked at all levels directly from the Depot or Hall.
* **Valuation**: Payout is calculated dynamically based on vehicle mileage, 
  battery degradation, and model class.
* **Speed**: Instant cash settlement directly into company funds
  without listing delays.

### P2P Marketplace Sale

* **Availability**: Requires Level 3 company progression.
* **Valuation**: Seller manually sets the asking price within the dynamic 
  price bounds (between instant-sell value and 1.2× new price).
* **Flexibility**: Useful for trading rare collector vehicles (such as the
  [Early Bird 7S](../vehicles/special-events.md#early-bird-7s-collector-vehicle)
  or [limited event trucks](../vehicles/special-events.md)) whose market value
  exceeds standard depreciation curves.
