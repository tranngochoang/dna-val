---
layout: default
title: microyz
nav_order: 1
parent: Physics
permalink: docs/Physics/microyz
---
Documentation for [microyz example]({{"https://doi.org/10.1063/1.4992076" | relative_url}}) 

Macro file
```
#/run/numberOfThreads 2
#
/tracking/verbose 0
#
/microyz/phys/addPhysics  %PHYSLIST%              
#
/microyz/det/Radius 2 nm
/run/initialize
#
/process/em/fluo true
/process/em/auger true
/process/em/augerCascade true
/process/em/pixe true
/process/em/deexcitationIgnoreCut true 
#
/gun/particle %PARTICLE%
#
/gun/energy %ENERGY% %ENERGY_UNIT%
#
/run/printProgress 100
#
/process/inactivate e-_G4DNAVibExcitation %G4DNAVibExcitationOFF% 
/process/inactivate e-_G4DNAAttachment    %G4DNAAttachmentOFF%
#
/run/beamOn %NEVENTS%
```

## MyTag

![y-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/microyz.png" | relative_url}})
{: .text-left}

## 304_11.1.0
![y-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/microyz.png" | relative_url}})
{: .text-left}

## 304_11.00
![y-value]({{"assets/OUTPUTJSON/geant4/304_11.00/x86_64/microyz.png" | relative_url}})
{: .text-left}

## 304_10.07
![y-value]({{"assets/OUTPUTJSON/geant4/304_10.07/x86_64/microyz.png" | relative_url}})
{: .text-left}

## dna_opt4

![y-value]({{"assets/OUTPUTJSON/MyTag_304_11.1.0microyz__dna_opt4.png" | relative_url}})
{: .text-left}

- 303_11.1.0 4 : dna_opt4 in version G4.11.1.0

- MyTag 2 : dna_opt2 in version MyTag
