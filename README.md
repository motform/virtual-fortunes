# virtual-fortunes from a future past

## Intro
At its core, virtual-fortunes is a stripped down version of Ken Arnold's BSD classic [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix). It parses the cookie jar directly, no index required. 

## Installation
For the moment, you have to build virtual-fortunes yourself. This means you need a Swift toolchain installed. If you are on macOS, you are in luck.
```bash
$ git clone https://github.com/motform/virtual-fortunes.git
$ cd virtual-fortunes
$ swift build -c release -Xswiftc -static-stdlib
$ cd .build/release
$ cp -f virtualFortunes /usr/local/bin/virtualFortunes
```
To make a the fortunes file into an environmental variable, follow the appropreate instructions for your shell.

### Bash/ZSH
Add the following to your .rc:
```bash
export FORTUNES_FILE="path/to/ccru_fortunes"
```
### Fish
```fish
set -Ux FORTUNES_FILE "path/to/ccru_fortunes"
```


## Usage
Set `virtualFutures` as your prompt for maximum slogan density.
