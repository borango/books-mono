# Sailing

For the purpose of this book's structure, I discuss everything related to actively moving the boat as *sailing*.

## Propulsion

For moving the boat we typically have two options: [sails](#sails) and the [engine](#engine), both discussed in their own chapters.

Here I want to compara and connect these propulsion options with the strategy and tactics of navigation.

Eco Sailing limits the engine options effectively to an electric one, by [choice](#choices).
While you can get them at any power that you desire, the autonomy of an electric engine is limited by the installed battery capacity. Practically that means that you cannot go as fast or as far with an electric engine, compared to a combustion engine.

For a longer sailing trip (one or multiple days), my cruising speed on engine is between 1 and 2 knots. It is barely better than standing still.

This implies that I will use the sails whenever they accelerate the boat to 2 knots or above. 

> **Eco Sailing shifts propulsion priority to sails over engine**

I appreciate my electric engine in these situations:
1. approaching or leaving a coast that blocks offshore wind
1. maneuvering in an anchorage (or marina) with little space or no wind
1. keep going at least slowly, in a calm

My current electric engines have 3kW combined power, for a boat of 5 tons displacement. Many would call that underpowered. It certainly rules out the engine to solve following problems:

1. going somewhere fast, without wind
1. going straight into strong headwind
1. going against strong current, without wind
1. using the engine for simplicity in strong wind
1. ... in particular on harbour entry

How do you solve these problems with little or no engine power?

Similar to "the old days" of sailing, the answers are simple:

1. wait for wind
1. tack, or (anchor and) wait for wind from a more favourable direction, or change your route
1. (anchor and) wait for current to turn, or change your route
1. reef the sails, or (anchor and) wait for wind to calm down. Practice sailing in strong wind to improve your technical skills and mental confidence.
1. ... in particular on harbour entry; enter under sail or anchor outside or keep sailing

> **Eco Sailing shifts the problem solving strategies to [anchoring](#anchoring), waiting and active sailing**

Eco Sailing works better when you are not on a schedule, when you are not bound by time or "deadlines" (what a terrible word). It works perfectly for me, living on the boat full time, cruising slowly whenever I want but never in a hurry.


## Navigation

By navigation I mean the strategy and tactics of sailing. This includes route planning, weather routing, using charts and instruments - all the theoretical aspects. I separate it from steering and sail handling, which are practical consequences of navigation decisions. Navigation depends on current and forecasted conditions. Because conditions change, navigation is a continuous process.

Mostly because of the propulsion facts and choices, 

> **Eco Sailing shifts navigation options to using the weather over the engine**

Using the weather requires you to be more patient to rest, or to be more [flexible](#pp12) to use prevailing conditions.

**strategies in low wind**

When your battery-electric engine does not offer long voyages at higher speeds, then you can just as well sail no matter how low the windspeed. When the boat's speed drops below 2 knots then I activate the electric engine, which carries my boat for 24 hours or longer at this speed - but not at 3 or 4 knots. The electric [autohelm](#autohelm) usually works fine in a calm at 1-2 knots STW. I enjoy the smooth ride and the fact that the boat is moving at all, for free.

If you have low wind from behind, absolutely no obstacle on your course and don't want to bother with sail management and steering, then you can heave to and let the boat drift.


> TODO
>
> according to [Design from Patterns to Details](#pp07):
>
> Use tides for drying out and simple repairs; 
>
> wait for tidal currents until they work for your advantage; 
>
> Plan sailing routes also based on availability of usable moorings in the destination area.


## **Steering**

Obviously a fundamental part of sailing. Why is it special in Eco Sailing? Because we tend to sail longer distances at slower speeds, resulting in longer hours at the helm, increasing the desire or need to automate it. That's why I want to look into the options for steering.

## Hand Steering

The default, and the only option in hard weather. 

Keeps one person almost shackled to the tiller or wheel, which can be fine for a few hours. On longer voyages you probably want to [automate](#pp04) steering in one way or the other. Even if automated, the boat benefits from a well-balanced trim so that there is a minimum of force on the rudder. Achieving such a trim is a good reason for me to hand-steer after a tack, after a significant change in the rig (reef), change of course or changing wind.

Once the skipper has a good understanding of weather conditions, planned course and the boat's trim, it could be time to hand the steering over to a machine. Freeing up a crew member is another way of [saving](#pp06) mental and physical resources. If it makes a difference whether or not you can sail a particular leg, then automated steering increases your autonomy and freedom.

It is a tricky balance between the comfort of hands-free travelling, and the risks of failed automatic steering and a boat out of control. It helps to remind yourself that hand-steering is the norm, and automated steering is a luxury. Always be ready to reclaim the helm if conditions require it!

## Sheet-to-Tiller

Sheet-to-tiller systems are the simplest way automated steering. Low-tech and self-regulating by design, but works only in a limited range of wind angles (or requires adjustment for different angles). 

Don't hesitate to experiment with all possible ways of connecting some sail to your tiller. It is fun.

## Windvane

A more advanced type of self-regulating steering. Mechanical and "analog" by design, not necessarily simple or low-tech.

Always keeps the chosen wind angle. Course over ground will change with changes in local wind direction, so be careful with the windvane in proximity to islands or capes, or cose to shore and obstacles in general.

Typically has a limited range of rudder angles, which is more then good enough for its purpose. You don't use the windvance for a quick tacking maneuver.

Requires a minimum windspeed for reliable input.

## Autohelm

The electric and noisy alternative to a windvane. Typically easier to fit on a boat than a windvane. Exists for tiller- and for wheel steering.

It consumes [electricity](#electro-backbone) but that is typically not a problem on an eco sailboat, thanks to the relatively large battery capacity. In fact you might appreciate the benefits of an autohelm so much that it is reason enough to size the batteries for 24 hours of autohelm operation, or to install a wind turbine.

The autohelm keeps the boat's heading or wind angle (depending on your choice and connected instruments), so the actual course over ground can be more reliable than with a windvane. In digital versions can even be used for steering to a defined waypoint, or completing a sequence of waypoints. In this context we need to be aware that it still is a rather dumb type of automation with no capability to assess the full situation. That is why I do not like the term "auto pilot", because the autohelm on a boat does not even attempt to recognize exceptional situation, like potential collissions with other boats or floating objects in the water.

Inputs (determining boat's heading or true wind direction via other instruments) are quite reliable. The mechanics for actually controlling the rudder can fail in similar ways as the windvane.


## Sail Handling

1. setting sails
1. trimming sails
1. reefing sails
1. dropping sails
