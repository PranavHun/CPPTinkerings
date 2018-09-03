# C++ Tinkerings
*collection of my learnings in C++ 17* 

![C++17](https://img.shields.io/badge/C%2B%2B-17-blue.svg) ![cmake 3.8.2](https://img.shields.io/badge/cmake-3.8.2-blue.svg) [![travis-cl build status: master](https://img.shields.io/travis/PranavHun/CPPTinkerings.svg)](https://travis-ci.org/PranavHun/CPPTinkerings) [![GitHub](https://img.shields.io/github/license/PranavHun/CPPTinkerings.svg)](LICENSE)


## Project Structure
```
CPPTinkerings (Repository Root)
│   
│   // Each Idea/Concept called a project will be 
│   // divided into subfolders, which will be built as
│   // headers and static libraries.
│   
├── CPPTinkerings
│   └── src
│       ├── {project 1}
│       ├── {project 2}
│       └── ... 
│
│   // The source code of projects will be installed
│   // into the include/ and lib/ directory after
│   // a successful build.  
│     
├── include
├── lib 
│
│   // Examples are used to demonstrate the usage
│   // of the projects. 
│   // The source code in the examples/src/ folder is divided
│   // into subfolders by projects. When built, it installs 
│   // as executables into the examples/bin/ folder.
│
└── examples
    ├── bin
    └── src
        ├── {example of project 1}
        ├── {example of project 2}
        └── ... 
```


## Installation

The repository is divided into two parts.
1. Code in ```CPPTinkerings/``` folder which builds into the ```include/``` and ```lib/``` folders.
2. Code in ```examples/``` folder which provides usage examples for the code built as libraries in previous step.

### From Source

```bash
$ git clone https://github.com/pranav-h/CPPTinkerings.git
$ chmod +x build.sh
$ ./build.sh all
```
### Usage: ```build.sh```
```bash
$ ./build.sh [options]

[none]      incremental build
all         clean and build libs and examples
clean       delete all the build folders
-h --help   this message
```

## Documentation

[TODO: github.io repository will have the necessary documentation about 
each project]
