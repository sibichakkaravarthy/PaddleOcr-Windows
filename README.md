PaddleOCR-Windows aims to create multilingual, awesome, leading, and practical OCR tools that help users train better models and apply them into practice.

This is the windows version of PaddleOCR "https://github.com/PaddlePaddle/PaddleOCR/" 

Guideline for Usage

1. Execute ocrrunner.exe 
2. Choose Option 1 to install dependencies (Use it if you are using PaddleOCR-Windows for first time)


# QB64

![QB64](source/qb64.png)

QB64 is a modern extended BASIC+OpenGL language that retains QB4.5/QBasic compatibility and compiles native binaries for Windows (XP and up), Linux and macOS.
=======
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/QB64Team/qb64/issues)

# Table of Contents
1. [Installation](#Installation)
    1. [Windows](#Windows)
    2. [macOS](#macOS)
    3. [Linux](#Linux)

2.  [Usage](#Usage)
3.  [Additional Info](#Additional_Info)

# Installation <a name="Installation"></a>
Download the appropriate package for your operating system. Check the Releases page.

<a name="Windows"></a>
## Windows

Make sure to extract the package contents to a folder with full write permissions (failing to do so may result in IDE or compilation errors).

* It is advisable to to whitelist the QB64 folder in your antivirus/antimalware software *

<a name="macOS"></a>
## macOS
Before using QB64 make sure to install the Xcode command line tools with:
```bash
xcode-select --install
```

Run ```./setup_osx.command``` to compile QB64 for your OS version.

<a name="Linux"></a>
## Linux
Compile QB64 with ```./setup_lnx.sh```.

Dependencies should be automatically installed. Required packages include OpenGL, ALSA and the GNU C++ Compiler.

<a name="Usage"></a>
# Usage
Run the QB64 executable to launch the IDE, which you can use to edit your .BAS files. From there, hit F5 to compile and run your code.

To generate a binary without running it, hit F11.

Additionally, if you do not wish to use the integrated IDE and to only compile your program, you can use the following command-line calls:

```qb64 -c yourfile.bas```

```qb64 -c yourfile.bas -o outputname.exe```

Replacing `-c` with `-x` will compile without opening a separate compiler window.