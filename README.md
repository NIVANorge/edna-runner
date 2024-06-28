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
  - ++
- libraries
- Google Cloud
- Google Storage
- HPC (SLURM)
- diagrams (draw.io)


## Workflow - Metabarflow, MinION

The Oxford Nanopore Technologies (ONT) MinION  Mk1b technology will be used for metabarcoding and Whole Genome Sequencing analysis of the collected eDNA samples. The ONT MinION is a portable, real-time DNA and RNA sequencing device and renowned for its compact size, making it accessible for in-field and laboratory use. This technology allows for long-read sequencing providing valuable insights into complex genomes.

Sequence reads will all be obtained from nanopore technology using the MinION, and will then be analysed bioinformatically to allow taxonomic assignment of sequence reads using two approaches: 

Using the available ONT bioinformatic pipeline with the Epi2ME platform and available workflows for metabarcoding and whole genome sequencing. This will allow for comparing the resulting sequence reads with reference databases such as NCBI, MetaZooGene, SILVA and BOLD.  

Sequence reads will also be processed using ‘metabarflow’ pipeline which will allow for quick and rapid species comparison of sequence reads with the genetic reference database NCBI GenBank to infer taxonomic identity of sequence reads. 

Evaluation of species identities assigned to sequence reads will be compared with lists of what can be considered plausible species for the region sampled, to circumvent deficits and incorrectly identified sequences deposited in genetic reference databases. 

Bioinformatic results obtained from sequence reads by comparison with genetic reference database will be curated against list of species known to inhabit the sampled area, to account for deficits in genetic reference databases, and incorrectly identified deposited sequences on genetic reference databases. Such species lists will be prepared for both pelagic (marine mammals, seabirds, fish, zooplankton and phytoplankton) and benthic taxa. The curated species lists will be combined from multiple sources such as NCBI GenBank, MetaZooGene, SILVA and BOLD, as well as Global Biodiversity Information Facility (GBIF) and the Norwegian Biodiversity Information Centre (Artskart, Artsdatabanken) and records from the NCBI, MetaZooGene, SILVA and BOLD reference databases. In addition, in-house knowledge on different taxonomic groups is extensive. These measures are taken to validate the eDNA results and provide as realistic, robust and curated biodiversity assessment.

The ONT bioinformatic pipeline utilizes the free-of-charge ‘Epi2ME’ software tools, which has a free-of-charge pricing model for ONT MinION customers. Two MinION 1kb will be used for sequencing using Flow Cells R10.4.1 controlled by two computers which will enable real time base calling and initial data storage. PC specifications, such as 1 TB internal SSD or higher, at least 8 GB of GPU memory, Intel i7, i9, Xeon, or better, with at least 4 cores/8 threads may be found here (https://community.nanoporetech.com/requirements_documents/minion-it-reqs.pdf). The MinKNOW software, installed on the computer, will provide device control, data acquisition and real-time basecalling. The generated data can be exported to other regular PCs for data analysis using Epi2ME and the available WorkFlow pipelines. 

Regarding the ‘metabarflow’ pipeline, data analysis for each metabarcode primer set will require a minimum of 16 CPU cores with 256 GB for analysis of raw sequence read using metabarflow.


![eDNA_workflow drawio 5 drawio](https://github.com/NIVANorge/edna-runner/assets/117283235/425cb02a-fa57-499a-a6eb-a5ca069faa9f)



### Metabarflow

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
  

