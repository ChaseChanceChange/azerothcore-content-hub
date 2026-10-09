# AzerothCore Content Hub

**https://github.com/ChaseChanceChange/azerothcore-content-hub**

Curated open-source reconstructed content across **all** WoW versions.  
Primary focus: post-shutdown **Conquest of Azeroth / Ascension** on AzerothCore 3.3.5a.  
Also collects Legion (artifacts), Shadowlands (Torghast), Dragonflight, and every useful module/tool found.

Porting to a pure 3.3.5 client can be done later — first we gather everything.

## Quick Start

```bash
git clone https://github.com/ChaseChanceChange/azerothcore-content-hub.git
cd azerothcore-content-hub

# Main CoA core (21 classes, Worldforged, Mythic+, etc.)
git submodule add https://github.com/jealous-sound/azerothcore-wotlk-coa.git coa
git submodule update --init --recursive
```

See **[SOURCES.md](SOURCES.md)** for the complete index of every project found.

## Structure

```
.
├── SOURCES.md              # Full index of all found content
├── later-expansions/       # Notes + clone targets for Legion / SL / DF
├── modules/                # Place extra AzerothCore modules here
├── sql/                    # Standalone SQL packs
└── docs/
```

## Key Upstream Links

| Priority | Project | Link |
|----------|---------|------|
| ★★★ | Conquest of AzerothCore | https://github.com/jealous-sound/azerothcore-wotlk-coa |
| ★★★ | LegionCore-Reforged | https://github.com/Titans-Project/LegionCore-Reforged |
| ★★ | Legion Emulation Project | https://github.com/LegionEmulationProject/AshamaneCore |
| ★★ | project_legion | https://github.com/n0social/project_legion |
| ★ | Shadowlands 9.2.5 core | https://github.com/aquadeus/shadowlands |
| ★ | Dragonflight core example | https://github.com/Simonlamb1979/AzgathCoreDFF |
| ★ | AzerothCore Module Catalogue | https://www.azerothcore.org/catalogue.html |

## Legal

Do not redistribute Blizzard client assets (maps, models, MPQs).  
Extract maps/vmaps/mmaps from a legitimate client of the target expansion.
