# Complete Source Index — Everything Found

All public open-source material located. Version does not matter — collect first, port to 3.3.5 later.

---

## 1. Conquest of Azeroth / Ascension (3.3.5 base — PRIMARY)

| Source | URL | What it contains |
|--------|-----|------------------|
| **Conquest of AzerothCore** | https://github.com/jealous-sound/azerothcore-wotlk-coa | Full core + 21 custom classes, Worldforged, Mythic+, Prestige, Challenges, Legendary items, Destiny Weaver, Hero Call Board, world DB package, raid restorations |
| CoA Server Manager | https://github.com/Corfirean/coa-server-manager | One-click local CoA server installer |
| CoA Playerbots | https://github.com/deuwe/mod-playerbots | Playerbots adapted for CoA classes |
| Official CoA site | https://coa-development.org | Armory, changelog, bug tracker, public test realm |

**Add as submodule:**
```bash
git submodule add https://github.com/jealous-sound/azerothcore-wotlk-coa.git coa
```

---

## 2. Legion 7.3.5 (Artifact Weapons, Class Halls, Broken Isles, Argus)

| Source | URL | What it contains |
|--------|-----|------------------|
| **Titans-Project/LegionCore-Reforged** | https://github.com/Titans-Project/LegionCore-Reforged | Legion 7.3.5 (26972), progressive artifact system, scripts |
| **Legion Emulation Project / AshamaneCore** | https://github.com/LegionEmulationProject/AshamaneCore | Active Legion 7.3.5 fork |
| **n0social/project_legion** | https://github.com/n0social/project_legion | AshamaneCore + one-button setup |
| Legends-of-Azeroth TrinityLegion | https://github.com/Legends-of-Azeroth/TrinityLegion | AshamaneCore fork with Legion content |
| Historical AshamaneCore | https://github.com/AshamaneProject/AshamaneCore | Original multi-expansion core (legion branch) |

These cores include artifact weapons (traits, appearances, power), Class Halls, Broken Isles + Argus maps/spawns, Legion dungeon/raid scripts.

---

## 3. Shadowlands (Torghast, Covenants, Castle Nathria, etc.)

| Source | URL | What it contains |
|--------|-----|------------------|
| aquadeus/shadowlands (FuzionCore) | https://github.com/aquadeus/shadowlands | Shadowlands 9.2.5 based on TrinityCore |
| Legends-of-Azeroth Shadowlands | https://github.com/Legends-of-Azeroth/Legends-of-Azeroth-Legends-of-Azeroth-Shadowlands | Historical Shadowlands framework |
| TheFrozenThr0ne Shadowlands 9.0.5 Scripts | https://github.com/TheFrozenThr0ne/AzerothCore-Converted-Modules-to-latest-TrinityCore (Shadowlands 9.0.5 Scripts folder) | Converted scripts |
| BigWigs_Shadowlands | https://github.com/BigWigsMods/BigWigs_Shadowlands | Boss modules (Castle Nathria, Sanctum, Sepulcher) — useful reference for encounter logic |
| BtWQuestsShadowlands | https://github.com/Breeni/BtWQuestsShadowlands | Quest database for all Shadowlands zones + Torghast + Covenants |
| ShadowWorld Noggit | https://github.com/Jedert-ShadowWorld/ShadowWorld-Noggit-Red-Modern | Modern map editing tools starting with Shadowlands 9.2.7 |

Torghast is modular — floor scripts, anomaly systems, and puzzle tools exist in community projects.

---

## 4. Dragonflight

| Source | URL | What it contains |
|--------|-----|------------------|
| AzgathCoreDFF | https://github.com/Simonlamb1979/AzgathCoreDFF | Dragonflight 10.0.2.47213 core + content |
| TrinityCore-Dragonflight-Databases | https://github.com/qyh214/TrinityCore-Dragonflight-Databases | Collected DBs for TrinityCore Dragonflight |
| NeverlandWOW DF-10.0.2 / NVN_DF | https://github.com/orgs/NeverlandWOW/repositories | Various DF-related cores |

---

## 5. Useful AzerothCore / 3.3.5 Modules & Tools (ready for 3.3.5)

| Module / Tool | URL |
|---------------|-----|
| Official Module Catalogue | https://www.azerothcore.org/catalogue.html |
| mod-autobalance | https://github.com/azerothcore/mod-autobalance |
| mod-transmog | https://github.com/azerothcore/mod-transmog |
| mod-solo-lfg | https://github.com/azerothcore/mod-solo-lfg |
| mod-playerbots (base) | Search catalogue or CoA fork above |
| mod-weapon-visual | https://github.com/azerothcore/mod-weapon-visual |
| mod-arena-tolviron | https://github.com/azerothcore/mod-arena-tolviron |
| Keira3 (DB editor) | https://github.com/azerothcore/Keira3 |
| azeroth-world-editor | https://github.com/DMCK96/azeroth-world-editor |
| StygianCore / AzerothCore-Content archive | https://github.com/StygianTheBest/AzerothCore-Content |
| TrinityCore Custom Changes | https://github.com/TrinityCore/TrinityCoreCustomChanges |
| Mega SQL packs / custom scripts | Search GitHub for "TrinityCore 3.3.5 custom" / "AzerothCore SQL" |

---

## 6. How to use this repo going forward

```bash
git clone https://github.com/ChaseChanceChange/azerothcore-content-hub.git
cd azerothcore-content-hub

# Add the main CoA core
git submodule add https://github.com/jealous-sound/azerothcore-wotlk-coa.git coa

# Optionally add Legion cores as reference
mkdir -p later-expansions/legion
cd later-expansions/legion
git clone --depth 1 https://github.com/Titans-Project/LegionCore-Reforged.git
git clone --depth 1 https://github.com/LegionEmulationProject/AshamaneCore.git
# etc.
```

Porting strategy later:
1. Extract SQL (items, spells, creatures, quests) from the later cores.
2. Adapt displayIDs / spell effects to 3.3.5 DBC limits.
3. Client patches + map/vmap/mmap generation for any new continents you want on 3.3.5.

---

*Last updated: 2026-10-09*
