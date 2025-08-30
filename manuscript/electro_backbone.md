# Electro Backbone

Choosing and installing electric components cannot be done in isolation (pun intended). These components depend on each other in various ways. Therefore I will discuss the major components in this chapter.

Most likey you will need 2 or 3 different voltage levels on your boat: 12 V DC[^DC], 48 V DC and 110-230 V AC[^AC]. On a simple daysailing boat, 12 V as the only voltage level (or no electricity at all) can be sufficient. Whether or not you also want 24 V, 48 V or AC depends on your habits (cooking) and choices (engine type and power).

For the sake of an example Eco setup, I will assume that you are using an induction stove for cooking and some sort of electric engine for propulsion. If you choose to cook on other fuels than electricity, and if you have no other AC loads, then you can skip the AC part. 

Without electric engine you can also skip the 48 V part. Electric engines stronger than 500 Watt are rarely available in 12 V versions. If your electric engine runs on 24 V, then you would mostly replace the number 48 with 24 in the following discussion (but not in the calculations).

Because most marine appliances require 12 V, it is unlikey that you can get away without a 12 V circuit. But you could power this 12 V circuit from 48 V, and skip the 12 V battery. More on that in the section on voltage conversion.

Some components can run on different voltage levels. Your laptop most likely has an AC power supply, as well as a 12 V "car adapter" or a USB charger. This way you can juggle a bit on which circuit you want to connect the components of your choice. One motivation could be that you try to eliminate a certain voltage level alltogether. For a minimalistic setup, you could try to run everything on 12 V DC. The other motivation is to minize conversion losses. Therefore, you should connect components to a voltage level which corresponds to their internal design. Most consumer electronics run internally on 5 V or 3.3 V. Charging them from 12 V is closer to their internal design than, say 230 V. Now for the few Watts that a smartphone draws it does not matter so much. But for a fridge or a watermaker, it is certainly worth checking their specifications and connect them in the most efficient way. We [don't want to waste](#pp06) precious energy.

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

## Plan AC loads

As discussed earlier, I believe that we should run all smaller loads on DC, and use AC only for the larger components, or for those that you could not find in DC versions, or have not replaced yet.

The combined power of all AC loads that you might run at the same time will determine the size of the [inverter](#inverter).

On my sailboats, the only noteworthy AC load is the induction stove at 2 kW max.

## Plan other AC loads


2 kW at 48 Volts means about 40 Amps, which is manageable with cables of about 6 to 10 mm² cross section. If you had a 12-Volt system, then you would need around 160 Amps, which requires much thicker cables of 25 mm² or more.



## Induction Stove
 
Consuming 2 kW max. This is at its highest setting, which I rarely use, e.g. for boiling water quickly. For most dishes in the pan or a pot, I use one of the lowest settings that consume 800 to 1000 W.

## Inverter

