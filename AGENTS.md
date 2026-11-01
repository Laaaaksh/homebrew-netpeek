# Project agent memory

This file is the project's committed home for project-intrinsic agent knowledge: build, test, release, architecture, and sharp-edge notes that should travel with the code.

- Add durable project-specific notes here as they are discovered through real work.

## netpeek.rb cask

- App: com.netpeek.desktop (Tauri, `Laaaaksh/netpeek` repo). Universal zip artifact per release, named `Netpeek-<version>-macos-universal.zip`, published as a GitHub release asset.
- Release assets are attached to **draft** GitHub releases and are not anonymously downloadable until the release is published (the browser_download_url 404s for unauthenticated requests). Confirm reachability with `curl -sIL <url>` run with no GitHub token before assuming `brew install --cask` will work; don't trust a release note's claim.
- To test the cask locally without a public release: `brew tap Laaaaksh/netpeek <path-to-worktree>`, `brew trust laaaaksh/netpeek` (newer Homebrew requires explicit tap trust before loading a cask), then `brew audit --cask netpeek` / `brew style netpeek`. `brew audit`/`brew style` refuse to take a file path directly — they need a cask name resolved through a tap.
- The app has no code signing (not required — `Library/Homebrew/cask/audit.rb`'s Gatekeeper/signing audit only applies to the official tap). Users need the manual "System Settings > Privacy & Security > Open Anyway" step on first launch; this is documented in README.md.
- `depends_on macos: :monterey` (not `>= :monterey`) is what Homebrew's `Homebrew/OSDependsOn` rubocop cop expects — matches the app's `LSMinimumSystemVersion` of 12.0.

## Maintaining this file

Keep this file for knowledge useful to almost every future agent session in this project.
Do not repeat what the codebase already shows; point to the authoritative file or command instead.
Prefer rewriting or pruning existing entries over appending new ones.
When updating this file, preserve this bar for all agents and keep entries concise.
