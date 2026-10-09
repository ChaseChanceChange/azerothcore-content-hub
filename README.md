# AzerothCore Content Hub

Curated collection of open-source reconstructed content for AzerothCore 3.3.5a, focused on the post-shutdown **Conquest of Azeroth / Project Ascension** community efforts, plus references to later-expansion reconstructions (Legion artifact weapons, Shadowlands Torghast, Dragonflight).

## Structure

```
.
├── coa/                    # Conquest of AzerothCore (add as submodule or clone upstream)
├── later-expansions/       # Legion / Shadowlands / Dragonflight cores & notes
│   └── README.md
├── modules/                # Extra AzerothCore modules (add your own)
├── sql/                    # Standalone SQL packs
└── docs/                   # Guides
```

## Primary Source – Conquest of AzerothCore

**Upstream:** https://github.com/jealous-sound/azerothcore-wotlk-coa

To add it as a submodule (recommended so you can pull updates easily):

```bash
git submodule add https://github.com/jealous-sound/azerothcore-wotlk-coa.git coa
git submodule update --init --recursive
```

Or clone it directly:

```bash
git clone --depth 1 https://github.com/jealous-sound/azerothcore-wotlk-coa.git coa
```

This includes:
- 21 custom CoA classes
- Worldforged items & upgrades
- Mythic+, Prestige, Challenges, Raid difficulty systems
- Legendary items, Destiny Weaver, Hero Call Board
- World database package with custom zones, quests, creatures, loot
- Active restoration of raids (Molten Core etc.) and open-world content

## Later Expansions (Legion Artifacts, Torghast, Dragonflight)

See `later-expansions/README.md`.

Key public Legion 7.3.5 cores that contain artifact weapon systems, class halls, Broken Isles/Argus maps and scripts:

- https://github.com/Titans-Project/LegionCore-Reforged
- https://github.com/LegionEmulationProject/AshamaneCore
- https://github.com/n0social/project_legion

These are **separate cores** (different client build). Use them as reference or run as parallel servers. Porting full maps/systems into 3.3.5 requires client patches + map extraction.

## Updating this Hub

```bash
# Update CoA (if using submodule)
cd coa && git pull && cd ..

# Add new modules or SQL
git add .
git commit -m "Add ..."
git push
```

## Legal / Practical Notes

- Do not redistribute Blizzard client assets (maps, models, MPQs).
- Extract maps/vmaps/mmaps from a legitimate client of the target expansion.
- CoA is the most complete open reconstruction currently available for the Ascension-style experience on AzerothCore.
