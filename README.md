# Gren programming language, a playground for curiosity and fun


https://gren-lang.org/ && https://github.com/gren-lang

It's in 0.3.0 at time of writing (February 2024)

Notes:
- it's available as a NPM package
- if you don't have or don't like NPM, there are prebuilt binaries and compile from source options
- takes code style and ideas from functional paradigms
- carefully managed side-effects
- a strong static type system
- "Compiler as an assistant" philosophy, I thought it was on par with rustc (the error messages were perfect when I was coding this)

Claims : 
- to be both smaller and faster than your average React-based application


Resources :
- https://gren-lang.org/install


### Instructions / Commands

#### Try with Docker

```shell
git clone git@github.com:Neal-C/hello-gren.git
cd hello-gren
docker build -t nealc-gren-lang:latest .
docker run -d -p 8080:80 --name nealc-gren nealc-gren-lang:latest
```

Go see the result !

if you're a "all from my terminal" kind of person

```shell
# Windows command (eeewwww)
start chrome /new-window http://localhost:8080
# Linux command
xdg-open http://localhost:8080
```

Or if you are a weak gui-clicker 😄 : you can manually open a browser tab and go to http://localhost:8080


#### Try with local install

Requirements : git

pre-compiled binary at their github https://gren-lang.org/install

or via their NPM package https://www.npmjs.com/package/gren-lang

or if you don't trust nothing (as you should), build compiler yourself from source code https://github.com/gren-lang/compiler

```shell
git clone git@github.com:Neal-C/hello-gren.git
cd hello-gren
gren make src/Hello.gren
# and open the resulting 'index.html' file
```

