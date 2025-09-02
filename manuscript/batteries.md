---
title: Batteries
---
## Batteries

On a sustainable and autonomous boat we need to [store](#pp02) energy between the time we harvest it from sun and wind, and the time when we need it (for engines, cooking, lights, instruments and you-name-it).

Propulsion by sails or cooking in a solar stove are efficient shortcuts where we use energy in the same moment when we catch it. 

Using the electric engine on a sunny day does not require energy storage between solar panels and the engine.

Storing hot water in a thermos is a simple way to store energy in the form of heat.  

In many other situations we need to store electric energy. For practical reasons I will assume that batteries [^fuel_cell_alternative] are our solution for that task.

[^fuel_cell_alternative]: a different solution would be **fuel cells**; I had only researched but never worked with them. Please contact me if you have or want more information about fuel cells.

The fact that we need batteries is a no-brainer. *How much* battery capacity we need is a tricky question. It is both complex (in the sense that there are multiple different reasons and requirements for energy storage) and speculative. For example, we can't tell in advance how much engine autonomy we will really need or for how long we will be without sunshine or without wind. There is no *right* size of batteries - only informed guesses.

Compared to energy production, which is absolutely limited by space, I find sizing the batteries not so difficult. Let us assume that space for solar panels limits your daily production at 10 kWh (that would be a lot). Batteries to store 10 kWh weigh less than 100 kg. So can easily size your batteries rather too large than too small, and enjoy plenty of [extra capacity](#pp03) most of the time.

When you convert your boat from fossil fuels to renewable energy, then you can eliminate some heavy equipment and use the saved weight for battery capacity. These 20 liter fuel canisters, the large gas bottle or the gas stove: each is equivalent in weight to 2 or 3 kWh of battery capacity. An electric engine is lighter than a petrol engine of the same power. I find that quite a good deal actually, because with electricity I can do it all (cooking and motoring and working remotely), where diesel or gas can only fuel one subsystem on the boat. If you can plan your new boat with this strategy - even better!

> Fun fact: At very slow speeds of 1-2 knots, the mileage that you get from 1 kg of Lithium battery is actually higher than that from 1 kg of petrol. This won't help you if you are in hurry or when you fight against headwind. When caught in the doldrums, however, I find that a comforting idea: assuming a daily solar energy production of 5 kWh, and the same or higher battery capacity, then you can power your engine at 200 Watt continuously.

- - -

Typical electrical devices on a sailboat use 12 Volts as their input voltage. Therefore, it makes sense to have a 12 V battery system (so-called bank) on board. 

On an all-electric boat there are typically some electrical loads which require a lot of power. Most notbably the engine(s), consuming several kW, and the inverter. The inverter in turn powers our convenient solution for cooking: the induction stove, with a max power consumption of 2 kW.

It simplifies wiring and improves efficiency if we supply those high-power loads from a higher voltage than 12 Volts. 48 Volts is a convenient voltage with a large market of batteries and appliances.

So our complete battery landscape is a combination of some 12 Volt batteries and some more 48 Volt batteries. On Love & Liberty, for example, has about 2.5 kWh in 12 Volt batteries and about 9 kWh of installed 48V battery capacity.

I am planning most of the capacity needs to be served from 48V for best efficiency, and a basic level of capacity in the 12 V battery banks. The 12 V bank should be large enough to power the boat over night (including the navigation mode, lights and autopilot).


**Voltage Conversion**

Should the 12 Volt batteries run out of energy, then I have a step-down solution in place which feeds the 12 Volt system from the 48 V batteries.

Also in the other direction we typically need to convert voltage. As much as I wanted all power generation to happen on the 48 V level, most solar panels and wind turbines deliver in 12 Volt. So we have to work with that. Step-up converters are taking care of that. In a perfect system, all electric power generation would directly feed into the 48 V system. But I have not found a complete solution for that, yet.

More on voltage conversion (12 V <-> 48 V -> 230 V) in the detailed chapter. I am mentioning it here in the battery chapter just to let you know that the 12 V batteries are not totally isolated from the 48 V batteries. You do not need to get the proportion between both banks exactly right, because we can always convert energy between them, at the expense of some conversion losses.


> A different battery architecture could use midpoint voltages not as a burden but as a chance. You could design a battery bank with 12 V batteries in serial connection, use the total of 48 V for specific loads (engines, inverter) and use the intermediate 12 V potential(s) for your 12 V bus of loads. This way, you eliminate conversion losses but you add losses from voltage drops in the diodes that you will inevitably need. All your 12 V loads (and chargers) must necessarily go through at least 2 diodes - which will add 0.6 V to 1.4 V of voltage drops - which is a lot. While certainly viable, I had decided against such a solution. Therefore I do not introduce this architecture as a solution here, because I am writing only about tested and proven solutions. But if you are interested in that option, then please contact me and we can dive deeper into this subject. Perhaps I will build a prototype.

> Yet another alternative is to operate just one 48 V battery bank, and supply your 12 V loads from a step-down converter (or better: redundant parallel converters, in order to eliminate a critical single-point-of-failure). This would also imply that all electric power generation must go to the 48 V system. If you have 12 V generators (solar panels or wind turbines), then you would step-up convert their output, just to step-down for 12 V loads. The total (system) efficiency for 12 V loads would be pretty poor. The efficiency for 48 V would not be affected. I did not choose this approach, but it is a viable one.

**Chemistry**

You have certainly heard of lithium batteries as an alternative to lead-acid batteries. For the 48 V battery bank, which you will likely install as a new one, there is no reasonable alternative to Lithium batteries. Yes in theory you could wire old (or new) 12 V lead-acid batteries in series, to produce a total of 48 V bank voltage. But then you must take care of midpoint voltages (at 12V, 24V and 36 V) and balance the batteries yourself. It is possible but unnecessarily complicated. Every quality lithium battery will take care of cell balancing internally (and very good ones will report on the internal cell voltages, for safety).

If you have sufficient capacity in your existing lead-acid 12 V batteries, then you can perfectly continue using those until their end of life. 

You can also swap them out one-by-one, or expand your existing lead-acid batteries with lithium batteries in parallel. In this case you just need to set the charging voltages (float and absorption) in your 12 V charge controller(s) to a safe level for all your existing 12 V batteries.

I advise you to invest in lithium batteries whenever you buy new ones, and to avoid complicated serial battery banks where you need to manage and balance midpoint voltages.

> When you compare the price of Lithium batteries to their usable capacity, they are not as expensive as they look at first glance. 12 V batteries are offered with a certain specified capacity but actually you can only use 50% of that without deep-discharging and permanently damaging them. With lithium chemistry, in contrast, you can use 80% of the rated enery without damage.


