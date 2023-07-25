---
layout: default
title: UHDR
nav_order: 3
permalink: docs/Chemistry/UHDR
parent: Chemistry
---

Documentation for [UHDR example]({{"https://doi.org/10.3390/ijms22116023" | relative_url}})

```
/run/numberOfThreads 60
/process/dna/e-SolvationSubType Meesungnoen2002
#/process/dna/e-SolvationSubType Ritchie1994
#/process/dna/e-SolvationSubType Terrisol1990

# Set the simulation volume (half Side Length)
#/UHDR/env/volume 0.8 um # for UHDR
/UHDR/env/volume %SideLength% um # for CONV

/run/initialize

# time structure (not available)
#/UHDR/pulse/activate true

# pH and Scavenger
/UHDR/env/pH 5.5

# Oxygen concentration
/UHDR/env/scavenger O2 %OXYGEN% %

/chem/reaction/print

#/run/verbose 1
/tracking/verbose 0
/scheduler/verbose 0
/scheduler/endTime 1 s

# set false if many beamOn in medium
/scheduler/ResetScavengerForEachBeamOn true

/scorer/Gvalues/nOfTimeBins 80

/run/printProgress 100

/scorer/Dose/cutoff %DOSE% Gy
/UHDR/source/particle %PARTICLE%
/UHDR/source/energy %ENERGY% %ENERGY_UNIT%
/run/beamOn %NEVENTS%

```



# For version
## MyTag
![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/UHDR/electron.conf_TIMEOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/UHDR/electron.conf_TIMEH2O2.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/UHDR/electron.conf_TIMEe_aq.png" | relative_url}})
{: .text-left}

## master

### in time
![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/UHDR/electron.conf_TIMEOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/UHDR/electron.conf_TIMEH2O2.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/UHDR/electron.conf_TIMEe_aq.png" | relative_url}})
{: .text-left}


# Comparison between Geant4 versions
