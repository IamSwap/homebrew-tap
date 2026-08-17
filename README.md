# IamSwap/homebrew-tap

Homebrew casks for my macOS apps.

## Casks

| | |
|---|---|
| [micpin](https://github.com/IamSwap/micpin) | Keeps your chosen microphone as the default input |

## Install

```sh
brew install --cask IamSwap/tap/micpin
```

Use the full `IamSwap/tap/...` name. Homebrew won't load casks from a third-party
tap until you trust it, and naming the cask in full trusts just that one — no
`brew tap` and no extra step.

If you'd rather use the short name, trust it first, otherwise Homebrew refuses to
load it:

```sh
brew tap IamSwap/tap
brew trust --cask IamSwap/tap/micpin
brew install --cask micpin
```

`brew trust IamSwap/tap` would trust the whole tap, including anything added to it
later. Trusting the single cask is the safer choice, and is what Homebrew
[recommends](https://docs.brew.sh/Tap-Trust).

## How casks get updated

Nothing here is edited by hand. Two mechanisms, either of which is sufficient:

1. **Pushed on release.** MicPin's release workflow hashes the archive it just
   published and pushes the new version straight here, using a deploy key scoped
   to this repository. Immediate.
2. **Polled as a fallback.** [`update-cask.yml`](.github/workflows/update-cask.yml)
   checks for newer releases on a schedule and bumps whatever is stale, in case
   the push did not happen. Run it on demand with
   `gh workflow run update-cask.yml -R IamSwap/homebrew-tap`.

Both write only the `version` and `sha256` lines, so hand edits elsewhere in a
cask survive — but those two lines will be overwritten.
