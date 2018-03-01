# Docker Environment for ASIM Execution

## Install

  * install virtual box
  * install docker
  * install git (including git bash for windows)

## Before First Execution

In order to configure the environment like building the docker container and fetching the ASIM specifications, execute the following script

```bash
configure
```

This will generate a docker container image called **asim**

## Execute Specification

This call will run the ASIM specifications inside of the **asim** docker container naming it **active_asim**:

```bash
execute
```

## ASIM Specifications

The INTERLACE ASIM Specifications are located in directory **ASIMSpec** of the main directory after build.sh has been executed. They may be edited and re-executed any time by calling **execute**. For updateing a potentially old repository call **configure** again or go to directory **ASIMSpec** and execute **git pull**.

## scripts Directory

The bash scripts of that directory are used to start the ICEF framework manager as well as one brapper. Then the run.icef specifications located in directroy **ASIMSpec** are sent to the manager which distributes them to the brapper.  
