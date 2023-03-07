---
layout: default
title: Results and analysis
permalink: /docs/overview/results-and-analysis
nav_order: 6
parent: Overview
---
<!-- Need to import MathJax for this post -->
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
<!-- END MathJax Import -->


# Results and analysis
{: .no_toc }



## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Implementation overview

As the simulation runs, it keeps track of three main elements in relation to DNA damage.
- Energy depositions in each chromosome
- Energy depositions and track length in the cell
- DNA damage in the DNA geometry

At the end of each event, the DNA damage events are collected and analysed, reconstructing the
damage pattern in the DNA and assigning it a complexity.

In the damage model, a probability is assigned that certain events cause strand breaks
(i.e. $$ Pr(\ce{e^{-}_{aq}} + \mathrm{Sugar} \rightarrow \mathrm{SSB}) $$). These conditions
are tested at the end of each event when the analysis runs to determine the damage that occurs.

At the completion of the run, the following outputs in a ROOT file are saved:

### Histograms

- SSB counter (ssb_counts)
- Deposit energy in SSBs (ssb_energies_ev)
- DNA fragment size
- Strand interaction positions

### Tuples

- Primary Source
  1. Primary 
  2. Energy
  3. PosX in um
  4. PosY in um
  5. PosZ in um
  6. Momentum X
  7. Momentum Y
  8. Momentum Ζ


- Source (Break Source Frequency)
  1. Primary 
  2. Energy
  3. None
  4. SSBd
  5. SSBi
  6. SSBm
  7. DSBd
  8. DSBi
  9. DSBm
  10. DSBh


- Damage (DNA damage locations)
  1. Event 
  2. Primary
  3. Energy
  4. TypeClassification
  5. SourceClassification
  6. Position_x_um
  7. Position_y_um
  8. Position_z_um
  9. Size_nm
  10. FragmentLength
  11. BaseDamage
  12. StrandDamage
  13. DirectBreaks
  14. IndirectBreaks
  15. EaqBaseHits
  16. EaqStrandHits
  17. OHBaseHits
  18. OHStrandHits
  19. HBaseHits
  20. HStrandHits
  21. EnergyDeposited_eV
  22. InducedBreaks
  23. Chain
  24. Strand
  25. BasePair
  26. Name


## Analysis files

In multithreading mode, ROOT data files (molecular-dna_t*.root) associated with the threads are created. [ROOT6.x]( {{ "https://root.cern/install/" | relative_url }} ) should be installed to analyse these ROOT data files. 

Several ROOT macro files are provided to join the ROOT data files into an unique ROOT data file (molecular-dna.root) and analyse the results:
- cylinders.C : to plot damage from cylinders geometry
- ecoli.C : to plot damage from e.coli geometry
- human_cell.C : to plot damage and fragments distribution from human_cell
geometry

```
root cylinders.C
```

User can also join the ROOT files (molecular-dna_t*.root) using the following command :

```
hadd -O -f molecular-dna.root molecular-dna_t*.root
```
  
A python macro file is provided to modify ROOT output in SDD [2] file format:
- createSDD.py : to use it, insert the command "python3 createSDD.py".
                 If error with ROOT, simply 
                 source /path/to/root/bin/thisroot.(c)sh,
                 do "pip install pyroot" and try again.

## Reference
1. Computational modelling of low-energy electron-induced DNA damage by early physical and chemical events, H. Nikjoo et al.,International Journal of Radiation Biology, 1997, 71, 467
2. A new standard DNA damage (SDD) data format, J. Schuemann et al., Rad. Res. 191 (2019) 76-92