# edna-runner
eDNA pipeline runner

# Preamble

# Documentation

## Setup

1. Install [poetry](https://python-poetry.org/docs/#installation)
2. run `poetry config virtualenvs.in-project true` so you get the virtual env in this repo
3. run `poetry install`

## Workflow - Metabarflow, MinION
- ![eDNA_workflow drawio 5 drawio](https://github.com/NIVANorge/edna-runner/assets/117283235/425cb02a-fa57-499a-a6eb-a5ca069faa9f)

### fastq_fail
Sequencer output from ONT. Status failed.

### fastq_pass
Sequencer output from ONT. Status passed.

### pod5_pass
Sequencer coverage. From ONT.

### amr
AMR file. not sure where those come from.


### throughput_FAY98638_f4f80a9b_3cb56578.csv
Base call statistics

### other files
Metadata from ONT 



## Metabarflow
- Equinor tender info, Steen

### Libraries

### Metabarflow input data

### Metabarflow output data


## ONT MinION, GridION
- Equinor tender info, Marc

### Libraries

#### pod5 https://github.com/nanoporetech/pod5-file-format 
- works well with pipx installation (requires setting Pythonpaths to pipx env folder)
- 

#### AMR json files
- see conversion_amr.r
- needs to be rewritten

### ONT MinION input data

### ONT MinION output data

#### Folder structure
![image](https://github.com/NIVANorge/edna-runner/assets/117283235/87b7b228-dcc9-4ac3-8bbf-c52c14b08f7c)





## Reference libraries

### RefSeq: NCBI Reference Sequence Database
https://www.ncbi.nlm.nih.gov/refseq/

### more ...


# Resources

- [biocontainers](https://training.nextflow.io/basic_training/containers/#biocontainers)
- [EPI2ME](https://labs.epi2me.io/wfindex/)
- [MetaBarFlow](https://github.com/evaegelyng/MetaBarFlow)
- [uit-metabarcoding](https://github.com/uit-metabarcoding)
- [emo-bon/hackathon2022](https://github.com/emo-bon/hackathon2022)



