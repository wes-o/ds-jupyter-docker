# ds-jupyter-docker

## A detailed template for data science projects with Jupyter notebooks  

*This template repository contains a working setup for starting a data science project.*

### Overview

```bash
├── data
│   ├── model          <- trained model(s)
│   ├── output         <- output from model
│   ├── processed      <- cleaned input data for model
│   └── raw            <- input data
│
├── docs               <- Documentation, serve online through Github pages, MkDocs, Sphinx.
│
├── notebooks          <- Jupyter notebooks.
│
├── references         <- All materials to explain project, bibliography, and 3rd party data sets.
│
├── results            <- Analysis for distribution: LaTeX, PDF, Final versions of .ipynb notebooks.
│
├── src                <- Source code for project.
│   ├── __init__.py    <- Folder `src` is a Python module
│   │
│   ├── utils          <- Functions that provide ease-of-use for project
│   │   └── utils.py
│   │
│   ├── data           <- Scripts to read and write data
│   │   └── load_data.py
│   │
│   ├── processing     <- Scripts for processing data into input for model(s)
│   │   └── create_model_for_notebook.py
│   │
│   ├── modeling       <- Scripts to train model(s)
│   │   └── train_model.py
│   │
│   ├── model_evaluate <- Scripts to analyze model performance
│   │   └── calculate_performance_metrics.py
│   │
│   └── visualization  <- Scripts to create plots, graphs, interactive or static
│       └── visualise_data.py
├── test               <- All tests that reference code in `src` directory.
│
├── .dockerignore      <- A file to segment which types of files/directories are not pushed to build of Docker.
│
├── .gitignore         <- A file to segment which types of files/directories are not pushed to Github.
│
├── docker-compose.yml <- A file to automate the build and run steps of creating a Docker image and running in a container.
│
├── Dockerfile         <- A dynamically typed file to create a Docker image.
│
├── mkdocs.yml         <- A file that contains configuration for MkDocs generator, ideal for project documentation.

```

### Installation

Pre-Requisites:  

- A working Docker installation with Docker Compose (Community Edition, Desktop, or Toolbox).  

~Fast~ Installation:

1) Open a new Terminal, run:  
`git clone https://github.com/wes-o/ds-jupyter-docker <a-project-name>`  

2) Change directory to `<a-project-name>`, run:  
`docker-compose up`  

3) After build finishes if you change any installation dependencies then run:  
`docker-compose up --force-recreate --build`  

---

### Motivation

A clear ready-to-use project template for data science is not difficult to find. At the time of writing, my initial search for 'Data Science Project Structure' revealed over 1.2 billion results. The first ten results were from: individual organization pages on [Github](), blog posts from [Towards Data Science](), [Kaggle](), [DZone](), [Reddit](), and online articles from [GoDataDriven]() and [ThinkingOnData]().  

These results range from offering advice for starting out, organizing a project structure, including certain libraries or software, and best practices for data science projects. The relevance of the results pertaining to my actual intention for the search query is beyond the scope of this template. However, my search (and countless hours prior) into the topic area highlighted a real need for detailed information and technical specifications.  

> At this point you may ask, "Why?".  

Starter kits and quick start guides are great places to start when the individual is *initially* learning about new software, or tools available for data science. Afterwards, the weary software developer or data analyst may want to put their work into a production environment, or push a project onto Github and share with their colleagues.  

> Now, this is fantastic.  

I have seen tremendous benefits of this personally, and for others on their own path of learning. It is critical to understand that at this stage in development every portion of the project should be documented. This task carries significant cost-savings for both personal projects, and time-critical work. (I have also found it lowers the probability of headaches in the future.)  

A project that can be tested and troubleshooted on a continous basis will hold more presence in any data science pipeline.  

> "I'll be first to admit that rushing headfirst into a project can be quite exhilirating. Although, I have realized that knowing when to stop rushing, and how to take a step back in order to document your work, can be difficult."  

This project template is my working solution to clarify a gap that exists when starting a data science project with an initial inquiry, applying pre-processing data exploration and code testing, and deploying work done to share analysis, or collaborate with colleagues.  

---

### Installation References

- Docker <https://docs.docker.com/engine/install/#supported-platforms>
- Docker Compose <https://docs.docker.com/compose/install/>
- Make <https://www.gnu.org/software/make/manual/make.html>

> If you experience issues with your *Make* installation on Windows check out these two answers. For using Make with [Powershell](https://superuser.com/a/808818) and with [Gitbash](https://stackoverflow.com/a/43779544) on Windows. Also, there is a fantastic Gist by Evan Williams on improving your Gitbash with [optional](https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058) tools.

### License

Code released under the [MIT](https://github.com/wes-o/ds-jupyter-docker/blob/master/LICENSE) license.

---

Wes Oler Copyright &copy; 2020
Created and maintained by [Wes Oler](https://github.com/wes-o). 


