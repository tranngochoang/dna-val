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

# For version
## MyTag

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/range/electron_DNA.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## master

![range]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/range/electron_DNA.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## G4.11.1.0
![range]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## G4.11.00
![range]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}

## G4.10.07
![range]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/range/electron.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/range/proton.conf.png" | relative_url}})
{: .text-left}

![range]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/range/alpha.conf.png" | relative_url}})
{: .text-left}


# Comparison between Geant4 versions

## dna_opt4
### proton
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_proton.conf__dna_opt4.png" | relative_url}})
{: .text-left}

### electron
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_electron.conf__dna_opt4.png" | relative_url}})
{: .text-left}

### alpha
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_alpha.conf__dna_opt4.png" | relative_url}})
{: .text-left}

## dna_opt2
### proton
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_proton.conf__dna_opt2.png" | relative_url}})
{: .text-left}

### electron
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_electron.conf__dna_opt2.png" | relative_url}})
{: .text-left}

### alpha
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_alpha.conf__dna_opt2.png" | relative_url}})
{: .text-left}

## dna_opt6
### electron
![range]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_range_electron.conf__dna_opt6.png" | relative_url}})
{: .text-left}




- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
