# Electro Backbone

Choosing and installing electric components cannot be done in isolation (pun intended). These components depend on each other in various ways. Therefore I will discuss the major components in this chapter.

Most likey you will need 2 or 3 different voltage levels on your boat: 12 V DC[^DC], 48 V DC and 110-230 V AC[^AC]. On a simple daysailing boat, 12 V as the only voltage level (or no electricity at all) can be sufficient. Whether or not you also want 24 V, 48 V or AC depends on your habits (cooking) and choices (engine type and power).

For the sake of an example Eco setup, I will assume that you are using an induction stove for cooking and some sort of electric engine for propulsion. If you choose to cook on other fuels than electricity, and if you have no other AC loads, then you can skip the AC part. 

Without electric engine you can also skip the 48 V part. Electric engines stronger than 500 Watt are rarely available in 12 V versions. If your electric engine runs on 24 V, then you would mostly replace the number 48 with 24 in the following discussion (but not in the calculations).

Because most marine appliances require 12 V, it is unlikey that you can get away without a 12 V circuit. But you could power this 12 V circuit from 48 V, and skip the 12 V battery. More on that in the section on voltage conversion.

Some components can run on different voltage levels. Your laptop most likely has an AC power supply, as well as a 12 V "car adapter" or a USB charger. This way you can juggle a bit on which circuit you want to connect the components of your choice. One motivation could be that you try to eliminate a certain voltage level alltogether. For a minimalistic setup, you could try to run everything on 12 V DC. The other motivation is to minize conversion losses. Therefore, you should connect components to a voltage level which corresponds to their internal design. Most consumer electronics run internally on 5 V or 3.3 V. Charging them from 12 V is closer to their internal design than, say 230 V. Now for the few Watts that a smartphone draws it does not matter so much. But for a fridge or a watermaker, it is certainly worth checking their specifications and connect them in the most efficient way. We [don't want to waste](#pp06) precious energy.

Another aspect of placing a component on the 12 V, 48 V or AC circuit is availability. If they are backed by batteriesn, then you can view the 12 V and 48 V circuits as "always on". The AC circuit, on the other hand, is only available when the inverter is running.

## Engine

From an energy point of view, this engine is DC load. Because the choice of engine is quite strategic (see discussion at propulsion), its specification will determine the voltage and other characteristics of the whole DC system.

[^DC]: direct current, as opposed to AC

[^AC]: alternating current

A 48-Volt-engine will likely lead to the choice of a 48-Volt battery bank.

A 24-Volt-engine you can still reasonably power from a 48-Volt battery bank, using a DC-DC step-down converter, but not as easy from 12 Volts. Still possible but will result in higher currents, thicker cables and more specialized step-up converters.

The maximum power of the engine will determine the corresponding Ampere rating of the battery, and of course the wiring between battery and engine. A 2 kW engine at 48 Volts will draw about 40 Amps at full power. A 6 kW engine draws 120 Amps at 48 Volts. This is what the battery bank must be able to deliver continuously.

The perfect[^perfect_engine] electric sailboat engine has following properties:

1. is reliable and well supported
1. is compatible with any battery make (no vendor lock-in) 
1. has a remote controller 
1. recuperates (generates electricity) when sailing
1. is powerful enough for your choices (1 kw to 50 kW ?)

For planning purposes, let us assume a 6 kW engine at 48 Volts. That is reasonably powerful for a 10 m boat[^pushes_mine] and a common power rating at many manufacturers.

[^pushes_mine]: pushes a Tiki 38 (4 tons) at a speed of 5 knots throught the water

Consider that **no** engine is also an option.

[^perfect_engine]: At the time of this writing, I have not found the perfect engine to buy. Personally I have settled with a pair of engines that come close but do not recuperate. Others that I analyzed require their own proprietary batteries or lack remote controllers.

    My friend Ian has built his own 50 kW (??) electric inboard engine, which is likely the perfect solution, but not widely available for most sailors.

## Plan (other) DC loads

The [immersion heater](#immersion_heater) does not require much power, which makes it easy to integrate almost anywhere into the DC system. Heating 3 liters of water this way requires 300 Wh, which we note for the daily battery capacity planning.

The anchor windlass, on the other hand, requires a lot of power which we need to plan for wiring and battery output. But it does not run for a long time, so the battery capacity is not affected much.

An extreme case of maximum power requirement is the starter engine, if you have one (not an Eco Sailing recommendation, but in case that you are transitioning).


## Inverter

The inverter converts DC to AC, which is not a trivial task and involves losses. Even in stand-by, it will take its toe of about 1-2% of its maximum power. At 2000W for example, this will be at least 20 W of continuous loss. Some inverters have an "eco mode" which tries to sense when there is power needed, but that does not work well for all types of connected loads. You are better off when you can activate the inverter only when you need it, e.g. for cooking.

It is more efficient to invert 48 Volts to AC than 12 Volts, and the wire size on the input (DC) side can be smaller.

The inverter needs to be sized for your total AC loads. Therefore you need to plan your AC loads first, then come back and determine the inverter rating.

## Plan AC loads

As discussed earlier, I believe that we should run most loads on DC, and use AC only for the larger components, or for those that you could not find in DC versions, or have not replaced yet, or those which would require more massive DC wiring otherwise.

The combined power of all AC loads that you might run at the same time will determine the size of the [inverter](#inverter).

On my sailboats, the only massive AC load is the induction stove at 2 kW max.

2 kW at 48 Volts means about 40 Amps, which is manageable with cables of about 6 to 10 mm² cross section. If you had a 12-Volt system, then you would need around 160 Amps, which requires much thicker cables of 25 mm² or more.

## Induction Stove
 
Consuming 2 kW max. This is at its highest setting, which I rarely use, e.g. for boiling water quickly. For most dishes in the pan or a pot, I use one of the lowest settings that consume 800 to 1000 W.

Choosing an electric stove eliminates the need for a gas installation, which is a big plus for safety and it saves a lot of weight (gas bottle plus full-size gas stove). When you think of just the weight, you can invest that rather in a larger battery of 3 to 5 kWh additional capacity.

Therefore the induction stove for me is a no-brainer, even if will require an inverter that might be larger than what you would need otherwise.

## Plan other AC loads

In terms of power and energy consumption, I have no other routine AC loads. But a few of appliances for which I did not bother to find DC chargers for: makita battery charger, electric shaver, vacuum cleaner.

Because my AC system is sized for 2000 Watts anyway, I can easily run these other loads as well.

Even the small welding machine consumes less than 2 kW and I was surprised to learn the the soldering iron takes only 50 Watts.



## Summary

of electrical loads and energy consumption


|Component                |voltage|current|power|   usage      |  capacity |/ 10 kWh|
|----------------         | ---:| ---:| -------:|          --: |      ---: | --:    |
|Lights                   | 12 V|  4 A|  50 Watt|         12 h |   600 Wh  |   6 %  |
|Instruments              | 12 V|  2 A|  25 Watt|         24 h |   600 Wh  |   6 %  |
|Autopilot (max)          | 12 V|  8 A| 100 Watt|              |           |        |
|Autopilot (typical)      |     |     |  50 Watt|         24 h |  1200 Wh  |  12 %  |
|Immersion Heater         | 12 V| 11 A| 140 Watt|  for 3 liters|   300 Wh  |   3 %  |
|Anchor Windlass          | 12 V| 80 A|1000 Watt|          6 m |   100 Wh  |   1 %  |
|starter engine ??        | 12 V|200 A|2400 Watt|              |           |        |
| **subtotal 12 V capacity**|   |     |         |              |**2800 Wh**|**28 %**|
|Engine (max)             | 48 V|125 A|6000 Watt|              |           |        |
|Engine (typical)         |     |     |1000 Watt|          1 h |  1000 Wh  |  10 %  |
|Inverter                 | 48 V| 40 A|2000 Watt|        *see* |*AC loads* |        |
|Inverter standby loss ?? |     |     |  25 Watt|         24 h |   600 Wh  |   6 %  |
| **subtotal 48 V capacity**|   |     |         |              |**1600 Wh**|**16 %**|
|Induction Stove (max)    |230 V| 10 A|2000 Watt|              |           |        |
|Induction Stove (typical)|     |     |1000 Watt|          1 h |  1000 Wh  |  10 %  |
|makita charger           |230 V|  1 A| 240 Watt|       rarely |           |        |
|soldering iron           |230 V| <1 A|  50 Watt|       rarely |           |        |
|welding machine          |230 V|  8 A|2000 Watt|       rarely |           |        |
|cabin heater ??          |230 V|  8 A|2000 Watt|     (winter) |           |        |
| **subtotal AC consumption**|  |     |         |              |**1000 Wh**|**10 %**|
|components on 12 / 48 / 230 V|
|water heater ??          |     |     |         |for 10 l @ 60°|   500 Wh  |   5 %  |
|water maker ?            |     |     |         | for 10 liters|    50 Wh  |  <1 %  |
|fridge ?                 |     |     |  60 Watt|         24 h |  1500 Wh  |  15 %  |
| **subtotal 12 / 48 / 230 V**| |     |         |              |**2000 Wh**|**20 %**|
| **total**               |     |     |         |              |**7500 Wh**|**75 %**|
