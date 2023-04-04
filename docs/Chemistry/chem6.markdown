---
layout: default
title: chem6
nav_order: 3
permalink: docs/Chemistry/chem6
parent: Chemistry
---

Documentation for [chem6 example]({{"https://doi.org/10.1063/1.5107511" | relative_url}})

##LET
```
/run/numberOfThreads 20
/process/dna/e-SolvationSubType Meesungnoen2002
#/process/dna/e-SolvationSubType Ritchie1994
#/process/dna/e-SolvationSubType Terrisol1990

# use Step-by-Step (SBS), independent reaction time (IRT)
# or synchronized IRT (IRT_syn),
# SBS ( is only for TDC, set 0 )
#/chem6/TimeStepModel IRT
#/chem6/TimeStepModel IRT_syn
#/chem6/TimeStepModel SBS
/chem6/TimeStepModel %TIMESTEPMODEL%

/run/initialize

# species definition
# username [ molecule | charge | D(m2/s) | Radius(nm) ]
/chem/species O2 [ O2 | 0 | 2.4e-9 | 0.17 ]

/chem/PrintSpeciesTable

# reset reaction table
/chem/reaction/UI
# totally diffusion-controlled (TDC)                | Fix |  reactionRate[dm3/(mol*s)] | TDC (0)
/chem/reaction/add H + H -> H2                      | Fix |  0.503e10 | 0
/chem/reaction/add e_aq + H -> H2 + OHm             | Fix |  2.50e10  | 0
/chem/reaction/add e_aq + e_aq -> H2 + OHm + OHm    | Fix |  0.636e10 | 0
/chem/reaction/add H3Op + OHm -> H2O                | Fix |  1.13e11  | 0

# partially diffusion-controlled (PDC)              | Fix |  reactionRate[dm3/(mol*s)] | PDC (1)
/chem/reaction/add OH + H -> H2O                    | Fix |  1.55e10 | %REACTIONTYPE%
/chem/reaction/add OH + OH -> H2O2                  | Fix |  0.55e10 | %REACTIONTYPE%
/chem/reaction/add e_aq + OH -> OHm                 | Fix |  2.95e10 | %REACTIONTYPE%
/chem/reaction/add e_aq + H2O2 -> OHm + OH          | Fix |  1.10e10 | %REACTIONTYPE%
/chem/reaction/add e_aq + H3Op -> H + H2O           | Fix |  2.11e10 | %REACTIONTYPE%

/chem/reaction/print

/primaryKiller/setSize %SIZE% %SIZE% %SIZE% %SIZE_UNIT%
/gun/position  0 0 %POSITION% um
/gun/direction 0 0 1
/gun/particle %PARTICLE%

/scorer/species/nOfTimeBins 50

/tracking/verbose 0
/scheduler/verbose 0
/scheduler/endTime 1 microsecond

/run/printProgress 100

/primaryKiller/eLossMin 1.2 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 1.212 keV # event is aborted if deposited E is greated than this value
/gun/energy 2 keV
/run/beamOn %NEVENTS%

/primaryKiller/eLossMin 1.6 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 1.616 keV # event is aborted if deposited E is greated than this value
/gun/energy 3.5 keV
/run/beamOn %NEVENTS%

/primaryKiller/eLossMin 2.3 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 2.323 keV # event is aborted if deposited E is greated than this value
/gun/energy 7.5 keV
/run/beamOn %NEVENTS%

/primaryKiller/eLossMin 3.8 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 3.838 keV # event is aborted if deposited E is greated than this value
/gun/energy 12.5 keV
/run/beamOn %NEVENTS%

/primaryKiller/eLossMin 6.0 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 6.06 keV # event is aborted if deposited E is greated than this value
/gun/energy 30 keV
/run/beamOn %NEVENTS%

/primaryKiller/eLossMin 8.0 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 8.08 keV # event is aborted if deposited E is greated than this value
/gun/energy 80 keV
/run/beamOn %NEVENTS%

/primaryKiller/eLossMin 10 keV # primary is killed if deposited E is greater than this value
/primaryKiller/eLossMax 10.1 keV # event is aborted if deposited E is greated than this value
/gun/energy 999.999 keV
/run/beamOn %NEVENTS%

```
# MyTag and master







# For version
## MyTag
![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/chem6/electron.conf_TIMEOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/chem6/electron.conf_TIMEe_aq.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/chem6/electron.conf_TIME2O2.png" | relative_url}})
{: .text-left}

### in LET

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/chem6/electron.conf_LETOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/chem6/electron.conf_LETe_aq.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/MyTag/x86_64/chem6/electron.conf_LET2O2.png" | relative_url}})
{: .text-left}

## master

### in time
![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/chem6/electron.conf_TIMEOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/chem6/electron.conf_TIMEe_aq.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/chem6/electron.conf_TIME2O2.png" | relative_url}})
{: .text-left}

### in LET

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/chem6/electron.conf_LETOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/chem6/electron.conf_LETe_aq.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/geant4-dev/x86_64/chem6/electron.conf_LETH2O2.png" | relative_url}})
{: .text-left}


## 304_11.1.0

### in time
![G-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/chem6/electron.conf_TIMEOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/chem6/electron.conf_TIMEe_aq.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/chem6/electron.conf_TIME2O2.png" | relative_url}})
{: .text-left}

### in LET

![G-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/chem6/electron.conf_LETOH.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/chem6/electron.conf_LETe_aq.png" | relative_url}})
{: .text-left}

![G-value]({{"assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/chem6/electron.conf_LETH2O2.png" | relative_url}})
{: .text-left}


# Comparison between Geant4 versions
