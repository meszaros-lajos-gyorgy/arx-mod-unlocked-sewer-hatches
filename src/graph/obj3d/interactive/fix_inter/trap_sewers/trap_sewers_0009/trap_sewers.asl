ON INIT {
 SET £controlledzone "SEWERS_1"
 SET §iserb_cine 0
 SET §lockpickability 100
 ACCEPT
}

ON CONTROLLEDZONE_ENTER {
 IF (^$PARAM1 != PLAYER) ACCEPT
 IF (§iserb_cine == 0) GOTO CINEMATIC
>>TELEPORT
 SENDEVENT CUSTOM LIGHT_DOOR_0025 "COL"
 TELEPORT -NAL 180 11 MARKER_0326
 ACCEPT
}

>>CINEMATIC
 SET §iserb_cine 1
 PLAYANIM ACTION2
 SET §open 0
 WORLDFADE OUT 1000 0 0 0
 SPEAK -p [Iserbius_call_ylside] SPEAK -p [Iserbius_call_ylside_2] GOTO TELEPORT
 ACCEPT

ON GAME_READY {
 SET_INTERACTIVITY YES

 if (§lockpickability == 0) {
  set §lockpickability 100
 }

 REFUSE
}