# AzerothCore Content Hub

**https://github.com/ChaseChanceChange/azerothcore-content-hub**

Curated open-source reconstructed content across **all** WoW versions.  
Primary focus: post-shutdown **Conquest of Azeroth / Ascension** on AzerothCore 3.3.5a.  
Also collects Legion (artifacts), Shadowlands (Torghast), Dragonflight, and every useful module/tool found.

## One-command clone of every major core

```bash
git clone https://github.com/ChaseChanceChange/azerothcore-content-hub.git
cd azerothcore-content-hub
chmod +x clone-all-cores.sh
./clone-all-cores.sh
```

This will pull (as git submodules, depth 1):

| Path | Project |
|------|---------|
| `cores/coa` | Conquest of AzerothCore (21 classes, Worldforged, Mythic+, Prestige…) |
| `cores/legion/LegionCore-Reforged` | Legion 7.3.5 – artifact weapons, progressive |
| `cores/legion/AshamaneCore` | Legion Emulation Project |
| `cores/legion/project_legion` | Legion + one-button setup |
| `cores/shadowlands/FuzionCore-Shadowlands` | Shadowlands 9.2.5 |
| `cores/dragonflight/AzgathCoreDFF` | Dragonflight 10.0.2 |

After cloning, keep them updated with:
```bash
git submodule update --remote --merge
```

See **[SOURCES.md](SOURCES.md)** for the full index of every project found (including extra modules, tools, quest DBs, boss modules, etc.).

## Structure after running the script

```
.
├── clone-all-cores.sh
├── SOURCES.md
├── cores/
│   ├── coa/                          # CoA / Ascension reconstruction
│   ├── legion/
│   │   ├── LegionCore-Reforged/
│   │   ├── AshamaneCore/
│   │   └── project_legion/
│   ├── shadowlands/
│   │   └── FuzionCore-Shadowlands/
│   └── dragonflight/
│       └── AzgathCoreDFF/
├── modules/                          # extra AzerothCore modules you add
├── sql/
└── docs/
```

## Legal

Do not redistribute Blizzard client assets (maps, models, MPQs).  
Extract maps/vmaps/mmaps from a legitimate client of the target expansion.
