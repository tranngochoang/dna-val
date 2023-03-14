---
layout: default
title: spower
nav_order: 1
parent: Physics
permalink: docs/Physics/spower
---
Documentation for [range example]({{"https://doi.org/10.1002/mp.13048" | relative_url}}) 

Macro file
```
#/run/numberOfThreads 2
#
/range/det/setMat G4_WATER
/range/det/setRadius 1 m
#
/range/phys/addPhysics  %PHYSLIST%
#
/run/initialize
#
/gun/particle %PARTICLE%
#
/gun/energy %ENERGY% %ENERGY_UNIT%
/run/beamOn %NEVENTS%
```

## MyTag

![spower]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower.png" | relative_url}})
{: .text-left}

## G4.11.1.0
![spower]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/spower.png" | relative_url}})
{: .text-left}

## dna_opt4

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_spower__dna_stat_opt4.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
