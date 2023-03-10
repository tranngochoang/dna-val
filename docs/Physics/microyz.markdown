---
layout: default
title: microyz
nav_order: 1
parent: Physics
permalink: docs/Physics/microyz
---
## Table of contents
{: .no_toc .text-delta }
1. TOC
{:toc}

macro file
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

## G4.11.1.0
![y-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/microyz.png" | relative_url}})
{: .text-left}


