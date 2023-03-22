---
layout: default
title: icsd
nav_order: 1
parent: Physics
permalink: docs/Physics/icsd
---
Documentation for [icsd example]({{"" | relative_url}}) 

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

![icsd]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/icsd/electron.conf.png" | relative_url}})
{: .text-left}

## 304_11.1.0
![icsd]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/icsd/electron.conf.png" | relative_url}})
{: .text-left}

## 304_11.00
![icsd]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/icsd/electron.conf.png" | relative_url}})
{: .text-left}

## 304_10.07
![spower]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/icsd/electron.conf.png" | relative_url}})
{: .text-left}

## dna_opt4

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_spower__dna_stat_opt4.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
