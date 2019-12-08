# Installation
Copy the `chemicalDetector.sqf` file into the root of you mission.

# Usage
[object, maxDistance, minDistance, condition] execVM "chemicalDetector.sqf";

| Parameter | Required? | Type | Description |
| --- | --- | --- | --- |
| object | Yes | Object | The object that the chemical detector is tracking. |
| maxDistance | Yes | Number | The maximum distance from the object that this detector will detect the object. At this distance and beyond, the detector will read a threat level of 0. |
| minDistance | No | Number | The minimum distance from the object where this detector will detect a threat level of 1. The default is 0. |
| condition | No | Code | The code to execute to determine if it should continue to update the threat level. The default it `{true}`. |
