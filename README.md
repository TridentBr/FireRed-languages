# FireRed Languages

An unofficial, community-driven localization project for **Pokémon FireRed (GBA)** running through **Gen1Recomp**, initially targeting Android.

> [!CAUTION]
> **AI-assisted project — use at your own risk.**
>
> Code, documentation, and translations in this project may be created or reviewed with the assistance of artificial intelligence (AI). This is experimental software and **may contain bugs, incorrect translations, compatibility issues, crashes, or unexpected behavior**.
>
> **You use this mod at your own risk and are responsible for your decision to install or run it.** Back up your save files and settings before installing or updating. No guarantee is made regarding stability, compatibility, or data preservation.

## Project status

**Under development — no validated stable release is available.** An initial prototype was successfully recognized by the mod manager on Android and the game reportedly launched without crashes. This does **not** establish that language switching or translation works.

## Goals

- Provide an in-game language selection menu.
- Start with English (`en_US`) and Brazilian Portuguese (`pt_BR`).
- Support additional languages without redesigning the core system.
- Keep original Pokémon species names.
- Prioritize Android compatibility and save-file safety.

## Repository layout

- `mod/` — implementation and language packs, once the API is validated.
- `docs/` — development roadmap and platform-specific instructions.
- `tests/` — reproducible test cases and results.

## Installation

No validated installable package is currently distributed through this repository. Always back up your save files before testing experimental builds.

## Contributing translations

Repository documentation, code comments, commit messages, and issue reports should be written in **English** so contributors from different language communities can collaborate. Player-facing translation strings belong in language-specific directories such as `mod/languages/pt_BR/`, `mod/languages/es_ES/`, and so on. Do not translate Pokémon species names.

## Development workflow

The `main` branch is intended for reviewed changes. A `develop` branch is planned for experimental work once the repository has its first commit. Do not label untested changes as stable.

## Legal notice

This is an independent fan project and is not affiliated with Nintendo, Game Freak, The Pokémon Company, or the Gen1Recomp developers. Do not upload ROMs, save files, or copyrighted game assets to this repository.

Upstream project: https://github.com/bryanthaboi/gen1recomp
