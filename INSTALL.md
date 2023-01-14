# Instructions
=======
# Look at bottom to patch pokered yourself

These instructions explain how to set up the tools required to build **pokered**, including [**rgbds**](https://github.com/gbdev/rgbds), which assembles the source files into a ROM.

If you run into trouble, ask for help on IRC or Discord (see [README.md](README.md)).


## Windows 10

Download and install [**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Then open the **WSL terminal**.

Update WSL's software before continuing. If you chose Debian, Ubuntu, or another distribution that uses `apt-get`, then enter this command:

```bash
apt-get update && apt-get upgrade
```

WSL has its own file system that's not accessible from Windows, but Windows files *are* accessible from WSL. So you're going to want to install pokered within Windows. You'll have to change the **current working directory** every time you open WSL.

For example, if you want to store pokered in **C:\Users\\*\<user>*\Desktop**, enter this command:

```bash
cd /mnt/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/mnt/c/` in WSL. Replace *\<user>* in the example path with your username.)

If this works, then follow [the instructions for **Linux**](#linux) below for whatever distribution you installed for WSL.

Otherwise, continue reading below for [the older Windows instructions](#windows).


## Windows

Download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings. At the "**Select Packages**" step, choose to install the following, all of which are in the "**Devel**" category:

- `make`
- `git`
- `gcc-core`

Double click on the text that says "**Skip**" next to each package to select the most recent version to install.

Then follow the [**rgbds** install instructions](https://rgbds.gbdev.io/install#pre-built) for Windows with Cygwin to install **rgbds 0.6.0**.

**Note:** If you already have an older rgbds, you will need to update to 0.6.0. Ignore this if you have never installed rgbds before. If a version newer than 0.6.0 does not work, try downloading 0.6.0.

Now open the **Cygwin terminal** and enter the following commands.

Cygwin has its own file system that's within Windows, at **C:\cygwin64\home\\*\<user>***. If you don't want to store pokered there, you'll have to change the **current working directory** every time you open Cygwin.

For example, if you want to store pokered in **C:\Users\\*\<user>*\Desktop**:

```bash
cd /cygdrive/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/cygdrive/c/` in Cygwin. Replace *\<user>* in the example path with your username.)

Now you're ready to [build **pokered**](#build-pokered).


## macOS

Install [**Homebrew**](https://brew.sh/). Follow the official instructions.

Open **Terminal** and prepare to enter commands.

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#pre-built) for macOS to install **rgbds 0.6.0**.

Now you're ready to [build **pokered**](#build-pokered).


## Linux

Open **Terminal** and enter the following commands, depending on which distro you're using.

### Debian or Ubuntu

To install the software required for **pokered**:

```bash
sudo apt-get install make gcc git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.6.0** from source.

### OpenSUSE

To install the software required for **pokered**:

```bash
sudo zypper install make gcc git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.6.0** from source.

### Arch Linux

To install the software required for **pokered**:

```bash
sudo pacman -S make gcc git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#pre-built) for Arch Linux to install **rgbds 0.6.0**.

If you want to compile and install **rgbds** yourself instead, then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.6.0** from source.

### Termux

To install the software required for **pokered**:

```bash
sudo apt install make clang git sed
```

To install **rgbds**:

```bash
sudo apt install rgbds
```

If you want to compile and install **rgbds** yourself instead, then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.6.0** from source.

### Other distros

If your distro is not listed here, try to find the required software in its repositories:

- `make`
- `gcc` (or `clang`)
- `git`
- `rgbds`

If `rgbds` is not available, you'll need to follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.6.0** from source.

Now you're ready to [build **pokered**](#build-pokered).


## Build pokered

To download the **pokered** source files:

```bash
git clone https://github.com/pret/pokered
cd pokered
```

To build **pokered.gbc** and **pokeblue.gbc**:

```bash
make
```

### Build with a local rgbds version

If you have different projects that require different versions of `rgbds`, it might not be convenient to install rgbds 0.6.0 globally. Instead, you can put its files in a directory within pokered, such as `pokered/rgbds-0.6.0/`. Then specify it when you run `make`:

```bash
make RGBDS=rgbds-0.6.0/
```
# Error I got and workaround I found :
`make` return :
```
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
python: can't open file 'extras/pokemontools/scan_includes.py': [Errno 2] No such file or directory
rgbasm -D _RED -h -o audio_red.o audio.asm
ERROR: audio.asm(401) -> audio/engine_1.asm(668):
    syntax error, unexpected newline
ERROR: audio.asm(537) -> audio/engine_2.asm(655):
    syntax error, unexpected newline
ERROR: audio.asm(600) -> audio/engine_3.asm(648):
    syntax error, unexpected newline
error: Assembly aborted (3 errors)!
make: *** [Makefile:37: audio_red.o] Error 1

```
workaround is :

`vim audio/engine_1.asm`
then you go to line 668 and you add a colon.

line 668 : `asm_94fd:`

`vim audio/engine_2.asm `
then you go to line 655 and you add a colon.

line 655 : `asm_21c7e:`

`vim audio/engine_3.asm `
then you go to line 648 and you add a colon.

line 648 : `asm_7d571:`

After that, you will get another error when trying to `make` :
```
rgbasm -D _RED -h -o audio_red.o audio.asm
rgbasm -D _RED -h -o main_red.o main.asm
ERROR: main.asm(14) -> home.asm(4285) -> home.asm::print_digit(4268):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4285) -> home.asm::print_digit(4274):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4286) -> home.asm::print_digit(4268):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4286) -> home.asm::print_digit(4274):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4287) -> home.asm::print_digit(4268):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4287) -> home.asm::print_digit(4274):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4288) -> home.asm::print_digit(4268):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4288) -> home.asm::print_digit(4274):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4289) -> home.asm::print_digit(4268):
    syntax error, unexpected xor, expecting newline
ERROR: main.asm(14) -> home.asm(4289) -> home.asm::print_digit(4274):
    syntax error, unexpected xor, expecting newline
error: Assembly aborted (10 errors)!
make: *** [Makefile:37: main_red.o] Error 1

```
Here, you need to edit home.asm and add a new line after `else>` like so:
```
print_digit: macro

if (\1) / $10000
>  ld a, \1 / $10000 % $100
else>  
xor a
endc
>  ld [H_POWEROFTEN + 0], a

if (\1) / $100
>  ld a, \1 / $100   % $100
else>  
xor a
endc$
>  ld [H_POWEROFTEN + 1], a

>  ld a, \1 / $1     % $100
>  ld [H_POWEROFTEN + 2], a

>  call .PrintDigit
>  call .NextDigit
endm 
```

Run `make` again and you'll get a pokemon red and blue rom for your numwork!
