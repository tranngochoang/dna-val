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
/icsd/setGeom %MATERIAL%
/run/initialize
/gun/particle %PARTICLE%
/gun/energy %ENERGY% %ENERGY_UNIT%
/run/beamOn %NEVENTS%
```
# For version

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

# Comparison between Geant4 versions

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_icsd_electron.conf__icsd.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
