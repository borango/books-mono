---
toc: false
title: Book Architecture
---

```dot
digraph{ rankdir=BT fillcolor=whitesmoke style="rounded,filled" node[id="\\N" shape=box style="rounded,filled" fillcolor=white tooltip=" " ] edge [ id="\\T___\\H" ]


{ node[shape=none fillcolor="lightgreen" ]
pp01 [ label="1 observe"     tooltip="Observe and Interact" ]
pp02 [ label="2 catch/store" tooltip="Catch and Store Resources" ]
pp03 [ label="3 obtain"      tooltip="Obtain a Yield" ]
pp04 [ label="4 self-r"      tooltip="Apply Self-Regulation" ]
pp05 [ label="5 renewable"   tooltip="Use Renewable Resources" ]
pp06 [ label="6 no waste"    tooltip="Produce No Waste" ]
pp07 [ label="7 patterns"    tooltip="Design from Patterns to Details" ]
pp08 [ label="8 integrate"   tooltip="Integrate Rather than Segregate" ]
pp09 [ label="9 small/slow"  tooltip="Use Small and Slow Solutions" ]
pp10 [ label="10 diversity"  tooltip="Use and Value Diversity" ]
pp11 [ label="11 edges"      tooltip="Use Edges and Value the Marginal" ]
pp12 [ label="12 respond to change" tooltip="Creatively Use and Respond to Change" ]
}

{ node[shape=point label=""] iv_catch iv_store_res iv_store_food iv_renewables iv_eat }

{node [label=charge] chargebatt12 
#chargebatt48 
}
{node [label=power] batt12supply 
#batt48supply 
}

{ node[ class=type_equipment style=filled penwidth=2 ]
windpilot   [label="wind\npilot"  ]
windturbine [label="wind\nturbine"]
batt12      [label=battery]
panels12    [label="solar\npanels"]
solar_stove [label="solar\nstove"]
watermaker 
wood_stove
induction_stove [label="induction\nstove"]
inverter heaters #other_appliances
thermos immersionheater
water_tank
pot pan
siliconespoon
anchors anchor_windlass 
sails
engine
autohelm
instruments
#lights
}

{node [label="boil water"] boil_water_12 boil_water_solar }

#
# Clusters
#

subgraph cluster_electro{ label="electro backbone" 
V12 V12_consumption inverter V230 induction_stove
engine
}

subgraph cluster_drink{ label="Drink" labelloc=top
tea coffee
}

subgraph cluster_eat{ label="Eat" labelloc=top
ramen porridge falafel 
# instant_soup # taboule # pasta 
Tamago 
boiled_rice
fried_onions
boiled_potatoes -> potato_salad
{boiled_rice fried_onions } -> rice_tika_masala
seaweed_salad
tortilla_es [label="Tortilla\nEspanol"]
omelette
Sprouts
iv_eat
}

subgraph cluster_store_food { label="Store Food" node [shape=cylinder]
mung_beans
rice
onions
eggs
potatoes
iv_store_food
}

subgraph cluster_store{ label="Store (other) Resources"
{rank=same 
batt12 
thermos 
water_tank 
}

immersionheater
chargebatt12 batt12supply
#chargebatt48 batt48 batt48supply
hot_water
water_tank -> freshwater
mung_beans
rice
iv_store_res
boil_water_12
}

subgraph cluster_catch{ label="Catch Resources"
panels12
#charge_controller_12 
#panels48 charge_controller_48 
windturbine
#charge_controller_turbine
solar_stove -> boil_water_solar
sails
windpilot
collect_rainwater
watermaker -> desalinate
collect_seaweed
collect_firewood
iv_catch
}

subgraph cluster_anchoring {
shore -> anchoring
anchor_windlass -> anchors -> anchoring
lift_anchor -> anchors
}
anchoring -> autonomy
crew -> lift_anchor 
pp01 -> tides_waves -> { anchoring navigate }
crew -> keep_watch -> { sailing anchoring }
# anchoring -> rest -> crew

subgraph cluster_sailing {
navigate
propulsion
sailing
steering
control_sails
handsteer
traveling
instruments
autohelm
}

subgraph cluster_renewables {
sun wind 
seawater
rainwater
seaweed
wood
iv_renewables
}

subgraph cluster_infrastructure{ label=Infrastructure

public_sources -> top_up -> water_tank
groceries -> years -> { mung_beans rice }
}

#
# food recipes
#

rice -> boiled_rice
{boiled_rice eggs} -> Tamago
mung_beans -> Sprouts
{solar_stove potatoes}-> boiled_potatoes
{pan eggs potatoes fried_onions} -> tortilla_es
{pan onions} -> fried_onions
{pan eggs} -> omelette

seaweed -> collect_seaweed -> seaweed_salad

rainwater -> collect_rainwater -> water_tank
seawater  -> desalinate        -> water_tank


 V12 [label="DC\nproduction"]
 V12_consumption [label="DC\nconsumption"]
#V48 [label="48 V"]
V230 [label="AC"]

pp06 -> siliconespoon -> { prevent_food_waste preserve_water } -> autonomy

V12_consumption -> immersionheater -> boil_water_12 -> thermos -> hot_water
pp06 -> immersionheater

sun -> boil_water_solar
boil_water_solar -> thermos

# correct but high lod:
#freshwater -> { boil_water_12 boil_water_solar }

hot_water -> {wash_dishes wash_hair}
hot_water -> {tea coffee}
hot_water -> {
ramen porridge falafel 
#instant_soup #taboule #pasta 
boiled_rice }

 sun -> panels12 -> 
#charge_controller_12 -> 
V12
#sun -> panels48 -> charge_controller_48 -> V48

V12 -> V12_consumption

V12-> chargebatt12 -> batt12 -> batt12supply -> V12_consumption

#batt48supply -> V48-> chargebatt48
#batt48 -> { chargebatt48 batt48supply }

V12_consumption -> {
#lights 
anchor_windlass instruments}

instruments -> navigate-> sailing
crew -> navigate
crew -> control_sails -> sailing

V12_consumption ->
#stepup -> V48
#V48 ->
engine -> propulsion

#V48 
V12_consumption
-> inverter -> V230 -> {induction_stove heaters #other_appliances
}

induction_stove -> {pan pot}
wood -> collect_firewood -> wood_stove -> pan -> falafel

crew -> handsteer -> steering
wind -> windpilot -> steering   -> sailing
wind -> sails     -> propulsion -> sailing -> autonomy
wind -> windturbine ->
#charge_controller_turbine -> 
V12

V12_consumption -> autohelm -> steering


pp01 -> windspeed_direction -> control_sails
pp02 -> {iv_store_res iv_store_food } -> autonomy
pp02 -> iv_catch
pp03 -> batt12supply 
pp04 -> windpilot
pp05 -> iv_renewables
pp08 -> { shore panels12 }
pp09 -> { sailing engine solar_stove immersionheater }
pp10 -> iv_eat
pp11 -> { shore panels12 }
pp12 -> anchoring

}
```

```js 
// if you see this code on Leanpub, then at least some diagrams have not been converted to SVG images yet
import{ digraph, digraph2svg, visco } from "@kxfm/browser"
```
