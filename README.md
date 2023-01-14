# Pokémon: Version Rouge and Bleue for numwork [![Build Status][ci-badge]][ci]

This is a disassembly of Pokémon: Version Rouge and Bleue that is partially working on numwork Game Boy emulator.

Thanks to `@lolocomotive#6338` (on [**Omega's Discord**][discord-omega]) for the fix.

If you don't want to bother compiling, you can download a rom from the [releases][releases].

The fix is to remove the frames of the nurse spinning in front of the machine and the animation of the healing machine.

This fix does not solve everything, if you die or if you fly the game will crash.

**NOTE**: If you to patch yourself, you can git clone then edit `engine/events/pokecenter.asm` 
and you comment line 25 and 22 with a semicolon (the line that animate the nurse and the healing machine)

This fix work for [the english version][pokered], other languages should work too.

It builds the following ROMs:

* pokered.gbc `sha1: 21370ea178a29ed106f063d2f8a3f0a41cde4dba`
* pokeblue.gbc `sha1: bc063e445e87f248a4f0c6e1118603548fff4ff4`
* pokeblue_debug.gbc (debug build) `sha1: 82c60508d74b13cdcc3432a0f06c274525f72091`

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
[discord-omega]: https://discord.gg/X2TWhh9
[releases]: https://github.com/anakojm/pokered-fr/releases/latest
