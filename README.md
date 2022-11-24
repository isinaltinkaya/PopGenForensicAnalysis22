# PopGenForensicAnalysis22
My notes and scripts for the course Population Genetics and Forensic Analysis 2022, University of Copenhagen.

## Usage

```
git clone git@github.com:isinaltinkaya/PopGenForensicAnalysis22.git;
cd PopGenForensicAnalysis22;
bash setup.sh .
```

Setup script takes one argument: Location to the directory where the programs should be installed. In the example above we set it to the current path.


## Note

- Uncomment lines  7-8 to download the Windows 10 ISO, which you can use with VirtualBox [following this tutorial](https://www.virtualbox.org/manual/ch01.html) to create a virtual machine.

This is only needed for "convert" program as others are available for Linux.

- Alternatively you can use `wine` to run convert without needing to build a virtual machine.

```
wine convert131/CONVERT.exe
```
