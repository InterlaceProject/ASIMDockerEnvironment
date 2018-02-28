# Docker Environment for ASIM execution

## Install

  * install virtual box
  * install docker
  * install git (including git bash for windows)

## Before first execution

In order to build the docker container execute the following script

```bash
build.sh
```

This will generate a docker container image called **asim**

## Execute specification

This call will run the ASIM specifications inside of a docker container naming it **active_asim**:

```bash
execute.sh
```

## ASIM Specifications

The INTERLACE ASIM Specifications are located in directory **ASIMSpec** of the main directory after build.sh has been executed. They may be edited and re-executed any time by calling **execute.sh**. For updateing a potentially old repository call **build.sh** again or go to directory **ASIMSpec** and execute **git pull**. 
