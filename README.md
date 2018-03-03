# Docker Environment for ASIM Execution

## Install

  * install docker
  * install git (including git bash for windows)

## Before First Execution

In order to configure the environment, execute the following script

```bash
./configure
```

This will generate a docker container image called **asim** where all the necessary frameworks are build and prepared for execution of the specifications.

## Execute Specification

This call will run the ASIM specifications inside of the **asim** docker container naming it **active_asim**:

```bash
./execute
```

## ASIM Specifications Notes

The INTERLACE ASIM Specifications are cloned into the main directory after **configure** has been executed. The Specifications may be edited and re-executed any time by calling **execute**, because the cloned directory is shared into the running docker container. For updateing a potentially old repository call **configure** again or go to directory **ASIMSpec** directly and execute **git pull**.

## scripts Directory

The bash scripts of that directory are used to start the ICEF framework manager as well as one brapper. Then the run.icef specifications located in directroy **ASIMSpec** are sent to the manager which distributes them to the brapper.

## TODO

 * also clone icef framework into main directory (like ASIMSpec) and share in into running container
 * add .gitattributes entry in order to have correct line endings for framework files (always Linux style).