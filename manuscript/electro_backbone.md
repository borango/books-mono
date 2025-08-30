# Electro Backbone

Installing the more powerful electric components ("loads") on a boat are not isolated decisions but they depend on each other. Therefore I will discuss the major components in this chapter.

## Engine

Most likely a DC load. Because the choice of engine is quite strategic (see discussion at propulsion), its specification will determine the voltage and other characteristics of the whole DC system.

A 48-Volt-engine will likely lead to the choice of a 48-Volt battery bank.

A 24-Volt-engine you can still reasonably power from a 48-Volt battery bank, using a DC-DC step-down converter, but not as easy from 12 Volts. Still possible but will result in higher currents, thicker cables and more specialized step-up converters.

The maximum power of the engine will determine the corresponding Ampere rating of the battery, and of course the wiring between battery and engine. A 2 kW engine at 48 Volts will draw about 40 Amps at full power. A 6 kW engine draws 120 Amps at 48 Volts. This is what the battery bank must be able to deliver continuously.

The perfect[^perfect_engine] electric sailboat engine has following properties:

1. is reliable and well supported
1. is compatible with any battery make (no vendor lock-in) but matching voltage of course
1. has a remote controller 
1. recuperates (generates electricity) when sailing (aka *regenerative braking* in cars)
1. is powerful enough for your choices (1 kw to 50 kW ?)

For planning purposes, let us assume a 6 kW engine at 48 Volts. That is reasonably powerful for a 10 m boat[^pushes_mine] and a common power rating at many manufacturers.

[^pushes_mine]: pushes a Tiki 38 (4 tons) at a speed of 5 knots throught the water

Note that **no** engine is also an option.

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

