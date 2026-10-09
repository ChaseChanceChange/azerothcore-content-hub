# Later Expansion Reconstructions

These are **separate cores** that target different client builds. They cannot be dropped directly into a 3.3.5 AzerothCore worldserver.  
They are listed here because the community has reconstructed maps, scripts, items, artifact systems, Torghast, etc. that can be studied, partially ported (SQL/items/spells), or run as parallel servers.

## Legion 7.3.5 (Artifact Weapons, Class Halls, Broken Isles, Argus)

Primary active / preservation projects:

- **Titans-Project/LegionCore-Reforged**  
  https://github.com/Titans-Project/LegionCore-Reforged  
  Legion 7.3.5 (build 26972). Progressive progression focus, artifact systems, scripts.

- **Legion Emulation Project / AshamaneCore**  
  https://github.com/LegionEmulationProject/AshamaneCore  
  Active Legion 7.3.5 fork based on AshamaneCore.

- **n0social/project_legion**  
  https://github.com/n0social/project_legion  
  Combined AshamaneCore + one-button setup for Legion 7.3.5.

These cores contain:
- Artifact weapon systems (traits, appearances, power)
- Class Halls
- Broken Isles + Argus maps/spawns
- Legion dungeons/raids scripts
- World Quests / Timewalkers (in some forks)

## Shadowlands (Torghast, Covenants, The Maw, Castle Nathria, etc.)

Fewer fully public open-source complete cores than Legion.  
Search GitHub for:
- `Shadowlands` + `TrinityCore` / `AzerothCore` / `Ashamane`
- `Torghast` scripts
- `9.2` or `9.0` cores

Known historical efforts (check status as many are archived):
- Various Dekk-Core / Legends-of-Azeroth Shadowlands forks
- Community SQL for Torghast floors, covenants, soulbinds that some private servers have shared

Torghast itself is a highly modular tower system — community has produced puzzle tools, floor scripts, and anomaly systems that can be studied.

## Dragonflight

Even fewer complete public open-source cores.  
Search for:
- `Dragonflight` + core name
- `10.0` / `10.2` TrinityCore forks
- Zone reconstructions (Waking Shores, Ohn'ahran Plains, etc.)

Some map extraction and SQL work exists in private communities; public GitHub presence is thinner.

## How to use with this Hub

1. Keep the 3.3.5 CoA base in `coa/` for your main AzerothCore server.
2. Clone the Legion/Shadowlands cores into `later-expansions/legion/` etc. as reference or parallel servers.
3. For 3.3.5 porting: extract SQL for items, spells, creatures, then adapt displayIDs / spell effects to 3.3.5 DBC limits. Full map support requires client patches + map/vmap/mmap generation for the new continents.

## Legal note

Full retail map/model redistribution is restricted. Most public cores expect you to extract maps from a legitimate client of that expansion.
