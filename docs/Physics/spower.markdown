---
layout: default
title: spower
nav_order: 1
parent: Physics
permalink: docs/Physics/spower
---
Documentation for [spower example]({{"https://doi.org/10.1002/mp.13048" | relative_url}}) 

Macro file
```
/run/numberOfThreads 2
#
/spower/det/setMat G4_WATER
/spower/det/setRadius 1 m
#
/spower/phys/addPhysics  %PHYSLIST%
#
/run/initialize
#
/gun/particle %PARTICLE%
#
/gun/energy %ENERGY% %ENERGY_UNIT%
/run/beamOn %NEVENTS%
```
# For version
## MyTag

![spower]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/electron.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/electron_DNA.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/proton.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/spower/alpha.conf.png" | relative_url}})
{: .text-left}

## master

![spower]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/spower/electron.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/spower/electron_DNA.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/spower/proton.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/spower/alpha.conf.png" | relative_url}})
{: .text-left}

## G4.11.1.0
![spower]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/spower/electron.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/spower/proton.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/spower/alpha.conf.png" | relative_url}})
{: .text-left}

## G4.11.00
![spower]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/spower/electron.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/spower/proton.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/spower/alpha.conf.png" | relative_url}})
{: .text-left}

## G4.10.07
![spower]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/spower/electron.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/spower/proton.conf.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/spower/alpha.conf.png" | relative_url}})
{: .text-left}

# Comparison between Geant4 versions 
## dna_opt4

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_electron.conf__dna_stat_opt4.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_proton.conf__dna_stat_opt4.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_alpha.conf__dna_stat_opt4.png" | relative_url}})
{: .text-left}

## dna_opt2

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_electron.conf__dna_stat_opt2.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_proton.conf__dna_stat_opt2.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_alpha.conf__dna_stat_opt2.png" | relative_url}})
{: .text-left}

## dna_opt6

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_spower_electron.conf__dna_stat_opt6.png" | relative_url}})
{: .text-left}

![spower]({{"assets/OUTPUTJSON/MyTag_geant4-dev_spower_electron_DNA.conf__dna_opt6.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
