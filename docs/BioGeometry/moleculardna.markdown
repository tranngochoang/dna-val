---
layout: default
title: moleculardna
nav_order: 1
parent: BioGeometry
permalink: docs/BioGeometry/moleculardna
---
Documentation for [moleculardna example]({{"https://geant4-dna.github.io/molecular-docs/" | relative_url}})

# cylinders.mac
{: .no-toc}

```
/run/verbose 2
/control/verbose 1
/dnageom/verbose 1

/chem/activate true
/scheduler/verbose 0
/material/verbose 2

/world/worldSize 10200 nm
/cell/radiusSize 3 3 3 um

/dnageom/setSmartVoxels 1
/dnageom/checkOverlaps false
/scheduler/endTime 1 us

/dnageom/radicalKillDistance 9 nm
/dnageom/interactionDirectRange 6.5 angstrom

/dnageom/placementSize 30 30 100 nm
/dnageom/fractalScaling 1 1 1 nm
/dnageom/definitionFile %geometries%/prisms200k_r3000.txt
/dnageom/placementVolume prism %geometries%/straight-216-0.txt

/dnageom/setVoxelPlacementAnglesAsMultiplesOfPi false
/dnageom/useCustomMoleculeSizes false

/dnageom/drawCellVolumes false
/dnageom/activateHistoneScavenging true


/chromosome/add cylinder sphere 3000 0 0 0 nm

# Damage Model
/dnadamage/directDamageLower 17.5 eV
/dnadamage/directDamageUpper 17.5 eV

/dnadamage/indirectOHBaseChance 1.0
/dnadamage/indirectOHStrandChance 0.65
/dnadamage/inductionOHChance 0.0

/dnadamage/indirectHBaseChance 1.0
/dnadamage/indirectHStrandChance 0.65
/dnadamage/inductionHChance 0.00

/dnadamage/indirectEaqBaseChance 1.0
/dnadamage/indirectEaqStrandChance 0.65
/dnadamage/inductionEaqChance 0.00

/analysisDNA/saveStrands false
/analysisDNA/fragmentGap 0  # do not join
#/analysisDNA/diagnosticChain

/run/initialize

# unit tests
/dnatests/uniqueid
/dnatests/basepairs
/dnatests/chromosome
/analysisDNA/testClassifier
# end unit tests

/run/printProgress 100

/gps/particle e-
/gps/ang/type iso
/gps/energy %ENERGY% %ENERGY_UNIT%
/gps/pos/type Volume
/gps/pos/shape Sphere
/gps/pos/radius 500 nm
/gps/pos/centre 0 0 0 nm
/run/beamOn 100000

```
## MyTag
![Energy]({{"/assets/OUTPUTJSON/geant4/MyTag/x86_64/moleculardna.png" | relative_url}})
{: .text-left}
MyTag 2 : dna_opt2 in version MyTag
## Geant4.11.0
![Energy]({{"/assets/OUTPUTJSON/geant4/304_11.1.0/x86_64/moleculardna.png" | relative_url}})
{: .text-left}
303_11.1.0 4 : dna_opt4 in version G4.11.1.0
## dna_opt4
![Energy]({{"assets/OUTPUTJSON/_MyTag_304_11.1.0moleculardna__dna_opt4.png" | relative_url}})
{: .text-left}