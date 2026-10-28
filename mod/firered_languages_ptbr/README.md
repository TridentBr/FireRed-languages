# FireRed Languages — PT-BR API Smoke Test

> [!CAUTION]
> AI-assisted experimental code. May contain bugs or incompatibilities. Use at your own risk and back up save files.

This is **not a playable translation**. It tests registration of a standalone PT-BR string through the documented Gen1Recomp Gen 3 text registry. The test string is not displayed in the vanilla game.

## Testing

1. Back up saves.
2. Install the mod directory (or package it using the upstream modkit).
3. Enable it for **FireRed** in the mod manager.
4. Check for loader errors and the `FireRed Languages PT-BR registry smoke test registered` log message.
5. Do not interpret successful loading as proof of visible translation.

## Developer validation

From the upstream Gen1Recomp source tree, copy this directory into `mods/` and run:

```sh
python3 tools/modkit.py validate mods/firered_languages_ptbr --base imported
python3 tools/modkit.py lint mods/firered_languages_ptbr
python3 tools/modkit.py gen3check mods/firered_languages_ptbr
```

These commands have **not** been executed against the upstream engine here.
