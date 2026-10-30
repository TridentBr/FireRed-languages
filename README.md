# FireRed Languages PT-BR — Diagnostic v0.4.0

This experimental mod compares two official Gen1Recomp API 3 translation surfaces:

- `mod.content.strings:override` for English-source engine UI strings.
- `mod.content.text:override` for FireRed extracted script labels.

The catalogs are loaded with `mod:read`, matching the safe file-loading pattern used by VersãoVermelha. This package does not copy its Gen1 dialogue or invasive engine patches.

## Android test

1. Back up your save. Disable prior versions of this mod.
2. Import this package and confirm version `0.4.0` and `ENABLED`.
3. Fully restart Gen1Recomp.
4. At the PC in the player's bedroom, look for `TESTE PTBR 04`.
5. In the in-game Save menu while in Pallet Town, check whether the location is `CIDADE DE PALLET`. The location test only applies where the UI uses `Strings` for the English source `PALLET TOWN`.
6. If available, check the game's `RETURN TO MAIN MENU?` prompt for `VOLTAR AO MENU PRINCIPAL?` (do not confirm exit unless desired).

## Interpretation

- Engine strings change but PC dialogue does not: the mod entrypoint and `strings` path work; investigate Gen3 text bundle initialization.
- Both change: both translation surfaces work.
- Neither changes: investigate entrypoint execution, source key usage, manifest selection, or Android build compatibility.

This is not proof of a specific upstream defect. Run upstream modkit validation and engine tests before releasing.

All source, docs and comments are in English; player-facing text is in Portuguese.
