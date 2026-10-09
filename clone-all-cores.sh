#!/usr/bin/env bash
# Clone all major open-source cores into this hub as git submodules (depth 1).
# Run from the root of azerothcore-content-hub after cloning the hub itself.
set -euo pipefail

echo "=== AzerothCore Content Hub – cloning all cores ==="

# Ensure we are in a git repo
git rev-parse --is-inside-work-tree >/dev/null

mkdir -p cores/legion cores/shadowlands cores/dragonflight

add_sub() {
  local url="$1"
  local path="$2"
  if [ -d "$path/.git" ] || [ -f "$path/.git" ]; then
    echo "[skip] $path already present"
    return
  fi
  echo "[clone] $path"
  git submodule add --depth 1 "$url" "$path" || {
    echo "[warn] submodule add failed for $path – trying plain clone"
    git clone --depth 1 "$url" "$path"
  }
}

# --- Primary: Conquest of Azeroth (3.3.5) ---
add_sub https://github.com/jealous-sound/azerothcore-wotlk-coa.git cores/coa

# --- Legion 7.3.5 (Artifacts, Class Halls, Broken Isles, Argus) ---
add_sub https://github.com/Titans-Project/LegionCore-Reforged.git cores/legion/LegionCore-Reforged
add_sub https://github.com/LegionEmulationProject/AshamaneCore.git cores/legion/AshamaneCore
add_sub https://github.com/n0social/project_legion.git cores/legion/project_legion

# --- Shadowlands ---
add_sub https://github.com/aquadeus/shadowlands.git cores/shadowlands/FuzionCore-Shadowlands

# --- Dragonflight ---
add_sub https://github.com/Simonlamb1979/AzgathCoreDFF.git cores/dragonflight/AzgathCoreDFF

echo ""
echo "=== Done ==="
echo "Submodules registered. To update later:"
echo "  git submodule update --remote --merge"
echo ""
echo "To initialise after a fresh clone of the hub:"
echo "  git submodule update --init --recursive"
