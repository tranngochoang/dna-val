---
layout: default
title: range
nav_order: 1
parent: Physics
permalink: docs/Physics/range
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

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/alpha.conf.png" | relative_url}})
{: .text-left}

## 304_11.1.0
![range]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## 304_11.00
![range]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## 304_10.07
![range]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## dna_opt4

![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0microyz__dna_opt4.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
