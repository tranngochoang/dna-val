---
layout: default
title: TestEm12
nav_order: 1
parent: Physics
permalink: docs/Physics/TestEm12
---
Documentation for [TestEm12 example]({{"" | relative_url}}) 

Macro file
```
/control/cout/ignoreThreadsExcept 0
/control/verbose 2
/run/verbose 2
#
/testem/det/setMat %MATERIAL%
/testem/det/setRadius  100 nm
#
/testem/phys/addPhysics  %PHYSLIST%
#
/run/initialize
#
/gun/particle %PARTICLE%
/gun/energy %ENERGY% %ENERGY_UNIT%
#
/analysis/setFileName dna
/analysis/h1/set 1 50  0.   100 nm	#edep profile
/analysis/h1/set 3 50  0.   300 nm	#true track length
#
/testem/applyAutomaticStepMax true
#
/run/printProgress 1000
/run/beamOn %NEVENTS%
```
# For version

## MyTag

![icsd]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/TestEm12/electron.conf.png" | relative_url}})
{: .text-left}

## master

![icsd]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/TestEm12/electron.conf.png" | relative_url}})
{: .text-left}

## 304_11.1.0
![icsd]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/TestEm12/electron.conf.png" | relative_url}})
{: .text-left}

## 304_11.00
![icsd]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/TestEm12/electron.conf.png" | relative_url}})
{: .text-left}

## 304_10.07
![spower]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/TestEm12/electron.conf.png" | relative_url}})
{: .text-left}

# Comparison between Geant4 versions

![spower]({{"assets/OUTPUTJSON/MyTag_304_11.1.0_304_11.00_304_10.07_TestEm12_electron.conf__icsd.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
