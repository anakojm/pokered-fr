# Pokémon: Version Rouge and Bleue for numwor [![Build Status][ci-badge]][ci]


This is a disassembly of Pokémon: Version Rouge and Bleue that is partially working on numwork omega gameboy emulator.

Thanks to @lolocomotive#6338 (on [**Omega's Discord**][discord-omega]) for the fix.

The fix is to remove the frames of the nurse spinning in front of the machine and the animation of the healing machine.

This fix does not solve everythin, if you die or if you fly the game will crash

**NOTE**: If you don't care about having a french version of pokemon red or blue, you can `git clone --recursive https://github.com/pret/pokered` then `vim pokered/engine/events/pokecenter.asm` and you comment line 25 and 22 with a semicolon

The two line to comment should have those comments:

`;make the nurse turn to face the machine` 

`;do the healing machine animation`

It builds the following ROMs:

* Pokemon - Version Rouge (F) [S].gb  `sha1: 47a7622fa30e6402a3891fe65b3a930bf9bd7aec`
* Pokemon - Version Bleue (F) [S].gb  `sha1: 47faa910d0e073c600665bf9c83b6bd17babdf8a`
* pokeblue_debug.gbc (debug build) `sha1: a46b07c821b0df992237071490d681cdd61e8d1a`

If you don't want to bother compiling, you can download a rom from the releases.

To set up the repository, see [**INSTALL.md**](INSTALL.md).


## See also

- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]
- **Discord:** [pret][discord]
- **IRC:** [libera#pret][irc]

Other disassembly projects:

- [**Pokémon Red & Blue**][pokered]
- [**Pokémon Yellow**][pokeyellow]
- [**Pokémon Gold/Silver**][pokegold]
- [**Pokémon Crystal**][pokecrystal]
- [**Pokémon Pinball**][pokepinball]
- [**Pokémon TCG**][poketcg]
- [**Pokémon Ruby**][pokeruby]
- [**Pokémon FireRed**][pokefirered]
- [**Pokémon Emerald**][pokeemerald]

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokegold]: https://github.com/pret/pokegold
[pokecrystal]: https://github.com/pret/pokecrystal
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokefirered]: https://github.com/pret/pokefirered
[pokeemerald]: https://github.com/pret/pokeemerald
[wiki]: https://github.com/pret/pokered/wiki
[tutorials]: https://github.com/pret/pokered/wiki/Tutorials
[symbols]: https://github.com/pret/pokered/tree/symbols
[discord]: https://discord.gg/d5dubZ3
[irc]: https://web.libera.chat/?#pret
[ci]: https://github.com/einstein95/pokered-fr/actions
[ci-badge]: https://github.com/einstein95/pokered-fr/actions/workflows/main.yml/badge.svg
