# Book Architecture

```js
digraph`

V12 [label="12 V"]
V48 [label="48 V"]
V230 [label="230 V"]

siliconespoon -> prevent_food_waste -> pp06
siliconespoon -> preserve_water     -> pp06
preserve_water -> autonomy

V12 -> immersionheater -> boil_water_12 -> pp06
thermos -> boil_water_12 -> keep_hot_water
thermos -> keep_hot_water -> pp02

sun -> boil_water_solar -> pp02
boil_water_solar -> keep_hot_water -> hot_water

hot_water -> {wash_dishes wash_hair}
hot_water -> {tea coffee} -> drink
hot_water -> {instant_soup ramen porridge falafel taboule pasta rice potatoes} -> eat

sun -> panels12 -> charge_controller_12 -> V12

V12 -> batt12 [label=   charging]
batt12 -> V12 [label=discharging]
{rank=same V12 batt12 }

panels12 -> pp02

sun -> panels48 -> charge_controller_48 -> V48
panels48 -> pp02

V12 -> {lights anchor_windlass instruments}


V12 -> stepup -> V48
V48 -> batt48 [label=   charging]
batt48 -> V48 [label=discharging]
{rank=same V48 batt48 }

V48 -> engines -> propulsion -> sailing


V48 -> inverter -> V230 -> {induction_stove appliances}

induction_stove -> {pan pot}

# {pan eggs potatoes onions} -> tortilla_es -> eat

{pan eggs} -> omelette -> eat


wind -> sails -> propulsion
sails -> {pp01 pp02 pp04 pp05 pp09}

# windpilot -> {steering pp05}

# {wind sun} -> pp05


`
```

```js 
// if you see this code on Leanpub, then at least some diagrams have not been converted to SVG images yet
import{ digraph, digraph2svg, visco } from "@kxfm/browser"
```
