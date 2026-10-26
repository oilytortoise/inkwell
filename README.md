# Inkwell

A cosy, single-player drawing game for tablets. Trace guided lessons step by step to earn stars, or colour detailed pages with a brush, watercolour, fill, eyedropper and colour wheel. Pinch to zoom for fine details.

Play it: https://oilytortoise.github.io/inkwell/

On an Android tablet, open the link in Chrome, then use the ⋮ menu → **Add to Home screen**. It opens full-screen and works offline.

## Working on it

- `game.html` is the whole game (page, styles and script in one file).
- `sh build.sh` wraps it into the installable site in `docs/`, which GitHub Pages serves.
- After changing `game.html`, bump `CACHE` in `sw.js`, run the build, and commit `docs/` too.
