# edna-runner
eDNA pipeline runner

# Preamble

# Documentation

## Setup

1. Install [poetry](https://python-poetry.org/docs/#installation)
2. run `poetry config virtualenvs.in-project true` so you get the virtual env in this repo
3. run `poetry install`

## infrastructure
- nextflow (Kim)
  - Kubernetes
  - ...
- libraries
- Google Cloud
- Google Storage
- HPC (SLURM)
- diagrams (draw.io)


## Workflow - Metabarflow, MinION
![eDNA_workflow drawio 5 drawio](https://github.com/NIVANorge/edna-runner/assets/117283235/425cb02a-fa57-499a-a6eb-a5ca069faa9f)



### Metabarflow
- Equinor tender info, Steen

#### Metabarflow libraries

- cutadapt https://cutadapt.readthedocs.io/en/stable/
- BLAST https://blast.ncbi.nlm.nih.gov/Blast.cgi
- fasta https://www.ncbi.nlm.nih.gov/genbank/fastaformat/
- fastq https://knowledge.illumina.com/software/general/software-general-reference_material-list/000002211
- BioConductor https://www.bioconductor.org/
- dada2 https://benjjneb.github.io/dada2/
- ...


#### Metabarflow input data
- Steen


#### Metabarflow output data
- Steen




### Oxford Nanopore Technologies (ONT) MinION, GridION
- pipeline = nextflow provided by ONT
- Equinor tender info, Marc

#### ONT libraries

##### pod5 https://github.com/nanoporetech/pod5-file-format 
- works well with pipx installation (requires setting Pythonpaths to pipx env folder)
- 

##### AMR json files
- see conversion_amr.r
- needs to be rewritten

#### ONT MinION input data
- water samples
- identifiers?

#### ONT MinION output data
- pod5 files
  - unclassified sequences
  - identifier = Barcode
- fastaq files
  - identifier = Barcode
- output can be used for both for MinKNOW and Epi2me
- ...

 
#### MinKNOW output
- run on local machine (notebook workstation)
- de-multiplexing
- output = fastq files
  - folders structure
  - identifier = Barcode 

#### Epi2me 
- import of Fastq and pod5 files
- output is 'analysis report files'
- analysis report from Epi2ME Work Flow metagenomics 
<img width="709" alt="image" src="https://github.com/NIVANorge/edna-runner/assets/117283235/b9e213b7-c7e1-462a-b15b-e64246dddb06">

#### Folder structure
![image](https://github.com/NIVANorge/edna-runner/assets/117283235/87b7b228-dcc9-4ac3-8bbf-c52c14b08f7c)

##### fastq_fail
- Sequencer output from MinKNOW, 
- Status failed.

##### fastq_pass
- Sequencer output from MinKNOW
- Status passed.

##### pod5_pass
- Sequencer coverage from MinION device and/or MinKNOW (?)
- From ONT.
- status passed

##### amr
- AMR files in json format
- not sure where those come from.

##### AMR_conversion
- xlsx file created from AMR files
- See R script.

##### throughput_FAY98638_f4f80a9b_3cb56578.csv
- Base call statistics

##### other files
- Metadata from ONT 



# Reference libraries

## Reference library curation

### NIVA
- Marc d'Auriac (MinION, ONT, EcoTox)
- Tor Erik Eriksen (macroinvertebrates)
- Andreas Ballot (phytoplankton)
- Birger Skjellbred (phytoplankton)
- Benoit Demars (macrophytes)
- Carsten Schwermer (AMR)
- Anette Engesmo (Oceanography)
- Elianne Egge (Oceanography)
- Zooplankton 
  - ?
- Begroing
  - ?
- Fish
  - ?
- Fungi etc
  - ...?


### NIVA Denmark
- Steen Knudsen (metabarflow)


### Akvaplan-niva
- Lionel Camus
- Ranghild Pettersen
- Sanna Majaneva


### UiT
- Kim Praebel & team


## RefSeq: NCBI Reference Sequence Database
https://www.ncbi.nlm.nih.gov/refseq/

## BOLD

# Sequencer
- Illumina
- MinION
- GridION
- ..-

## Sequencer outout 

## NIVA sequencer


# Resources

- [biocontainers](https://training.nextflow.io/basic_training/containers/#biocontainers)
- [EPI2ME](https://labs.epi2me.io/wfindex/)
- [MetaBarFlow](https://github.com/evaegelyng/MetaBarFlow)
- [uit-metabarcoding](https://github.com/uit-metabarcoding)
- [emo-bon/hackathon2022](https://github.com/emo-bon/hackathon2022)
- [BOLD - BARCODE OF LIFE DATA SYSTEM v4](https://boldsystems.org/)

# Tools
- [diagrams](https://www.drawio.com/)
  

