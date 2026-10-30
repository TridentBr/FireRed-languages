# FireRed Languages - PT-BR Diagnostic v0.3.0

Experimental, AI-assisted mod. Back up your save before testing. No ROM is included.

## Goal

Distinguish a successfully loaded mod from text overrides actually being applied in FireRed. This mod attempts to replace two **existing** text labels:

- `Text_BootedUpPC` -> `TESTE PTBR 03: PC LIGADO!`
- `Text_AccessWhichPC` -> `TESTE PTBR 03: QUAL PC?`

The distinctive prefix is intentional and is not a final translation. The test uses ASCII-only text to avoid mixing font issues into the diagnosis. Other game text will remain in English.

## Android procedure

1. Back up the save.
2. Disable/remove v0.2.0 and install this v0.3.0 ZIP, avoiding duplicate mod IDs.
3. Confirm the manager shows version 0.3.0 and ENABLED.
4. Fully close and relaunch the game, then load FireRed.
5. Interact with a PC. Report the **exact** first and second messages.
6. If both remain English, collect the app build/commit and report that neither override was applied. The manager's ENABLED label alone does not prove the Lua entry ran.

## Technical note

The official engine fixture `tests/fixture_data/game3_pc_scripts.lua` connects `EventScript_PC` to `Text_BootedUpPC` and includes `Text_AccessWhichPC`. The official Gen 3 API documents the `text` registry, but this test has not been executed on Android or run through upstream modkit.
