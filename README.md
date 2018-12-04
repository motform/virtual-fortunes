# virtual-fortunes from a future past
virtual-fortunes is a stripped down version of Ken Arnold's BSD classic [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)). It parses the cookie jar directly, no index required. 

## Installation
For the moment, you have to build virtual-fortunes yourself. This means you need a Swift toolchain installed. If you are on macOS, you are in luck.
```bash
$ git clone https://github.com/motform/virtual-fortunes.git
$ cd virtual-fortunes
$ swift build -c release -Xswiftc -static-stdlib
$ cd .build/release
$ cp -f virtualfortunes /usr/local/bin/virtual-fortunes
```
To make a the fortunes file into an environmental variable, follow the appropreate instructions for your shell.

#### Bash/ZSH
Add the following to your .rc:
```bash
export FORTUNES_FILE="path/to/virtual-fortunes-jar"
```
#### Fish
Run the following command:
```fish
set -Ux FORTUNES_FILE "path/to/virtual-fortunes-jar"
```

## Usage
Run `virtual-futures` from your terminal a bit more body into your organs. Use it as a prompt or greeting for maximum slogan density.

By default, quotes are shown without context (marks and attributions). Context is enabled with the `-c` or `--context` flag.

## TODO
* Larger cookie jar
* History, so that one can get the context of the most recent quote
* Formatting options.
* Flag to filter fortune length
