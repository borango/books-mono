# Boat Assistant Architecture

```js
digraph`

{node[ label="+" shape=circle ] AND_automation_speak_depth_on_anchor_search }

subgraph cluster_realworldtasks{ label="real world tasks" sailor navigation }
subgraph cluster_realworldfacts{ label="real world facts" labelloc=B depth location  }

subgraph cluster_p70display{ label="display" depth_datafield }

subgraph cluster_topics { label=topics KTS_LOG NMEA_SDDPT }

depth -> sounder -> Furuno -> SDDPT -> Quark -> USB -> dev_ttyACM -> nmea2mqtt_py -> NMEA_SDDPT -> sensor_nmea_dpt

smartsolar_suite -> load_output -> nmea_12v_in -> nmea_network -> SDDPT -> p70_unit -> depth_datafield -> sailor

load_output -> Quark

load_output -> pi4 -> PI_OS_pi4 -> Docker_pi4 -> HA

PI_OS_pi4 -> nmea2mqtt_py

nmea_network -> nmea_12v_out -> p70_unit

location -> gps_sensor_quark

MikroTik -> WLAN -> _10_3_4_48 -> Cerbo -> MQTT_SERVER -> NMEA_SDDPT

HA -> sensor_nmea_dpt -> { dashboard_mooring dashboard_sailing switch_boat_depth_alert AND_automation_speak_depth_on_anchor_search }

switch_boat_anchor_search -> AND_automation_speak_depth_on_anchor_search -> automation_speak_depth_on_anchor_search -> KTS_LOG

MQTT_SERVER -> KTS_LOG -> logspeaker_sh -> { logspeaker_s6 logspeaker_s9 logspeaker_accas }-> speech_output -> sailor -> navigation

Tablet_S6 -> Android_s6 -> Termux_s6 -> logspeaker_s6
Tablet_S9 -> Android_s9 -> Termux_s9 -> logspeaker_s9

Android -> { Android_s6 Android_s9 Android_atom }

Debian -> Ubuntu -> Ubuntu_accas -> logspeaker_accas
Debian -> PI_OS -> PI_OS_pi4

{Quark gps_antenna_1} -> gps_sensor_quark


`
//.then( d => d
//  .explore( 'root' )
//  .explore( 'result' )
//  .e( 'j' )
// )
```

```js 
// if you see this code on Leanpub, then at least some diagrams have not been converted to SVG images yet
import{ digraph, digraph2svg, visco } from "@kxfm/browser"
```
